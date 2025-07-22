{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "be2e4f37",
   "metadata": {},
   "source": [
    "### Here are the scripts used in executing the Cropping and Cleaning of the Dataset \"Air_Quality_continuous.csv\" to the finished Dataset named \"Cropped_Cleansed_AirQualityMeasurement.csv\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "696b1cd7",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "(1603492, 19)"
      ]
     },
     "execution_count": 2,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "#We read in the dataset first.\n",
    "import pandas as pd\n",
    "\n",
    "# Load the dataset\n",
    "dataset = \"Air_Quality_Continuous.csv\" \n",
    "output = \"Cropped_Cleansed_AirQualityMeasurement.csv\"\n",
    "\n",
    "df = pd.read_csv(dataset)\n",
    "\n",
    "df.shape"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d632eabd",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Cropped and cleansed dataset saved to Cropped_Cleansed_AirQualityMeasurement.csv\n"
     ]
    }
   ],
   "source": [
    "# Begin the cropping and cleaning of our dataset\n",
    "#I ensure that the Date_Time column is in datetime format\n",
    "df['Date_Time'] = pd.to_datetime(df['Date_Time'], errors='coerce').dt.tz_localize(None)\n",
    "\n",
    "# Define the start and end dates as timezone-naive timestamps\n",
    "start_date = pd.Timestamp(\"2015-01-01\")\n",
    "end_date = pd.Timestamp(\"2023-10-22\")\n",
    "\n",
    "#This gives me the cropped dataset from Ist of January 2015 onwards\n",
    "cropped_df = df[df['Date_Time'] >= start_date]\n",
    "\n",
    "#Clean the data to ensure that it falls between 1st of January 2015 and 22nd October 2023 as stated\n",
    "cleansed_df = cropped_df[(cropped_df['Date_Time'] >= start_date) & (cropped_df['Date_Time'] <= end_date)]\n",
    "\n",
    "cleansed_df.to_csv(output, index=False)#save the cropped and cleaned dataset\n",
    "\n",
    "print(f\"Cropped and cleansed dataset saved to {output}\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "32f90e45",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Date range in the cleansed dataset: 2015-01-01 00:00:00 to 2023-10-22 00:00:00\n",
      "Cropped and cleansed successfully.\n"
     ]
    }
   ],
   "source": [
    "# Verify the cropping and cleansing process\n",
    "# Load the cleansed dataset\n",
    "cleansed_df = pd.read_csv(output)\n",
    "\n",
    "# The date range of the dataset\n",
    "cleansed_df['Date_Time'] = pd.to_datetime(cleansed_df['Date_Time'], errors='coerce').dt.tz_localize(None)\n",
    "min_date = cleansed_df['Date_Time'].min()\n",
    "max_date = cleansed_df['Date_Time'].max()\n",
    "\n",
    "print(f\"Date range in the cleansed dataset: {min_date} to {max_date}\")\n",
    "\n",
    "# Ensure all dates fall within the specified range\n",
    "if min_date >= start_date and max_date <= end_date:\n",
    "    print(\"Cropped and cleansed successfully.\")\n",
    "else:\n",
    "    print(\"There are some dates outside the specified range.\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "2158cf2b",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "(520752, 19)"
      ]
     },
     "execution_count": 5,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "cleansed_df.shape"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.13"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

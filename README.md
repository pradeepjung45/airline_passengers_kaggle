# Airline Passengers Time Series Forecasting

This project analyzes the classic airline passengers dataset and builds forecasting models to predict future passenger numbers using various time series analysis techniques.

## Dataset

The dataset contains monthly airline passenger numbers from 1949 to 1960, making it a perfect example for time series analysis and forecasting. The data shows:
- Clear upward trend
- Strong seasonal patterns
- Exponential growth with increasing variance

## Project Structure

```
.
├── airline_passengers_analysis.ipynb  # Main analysis notebook
├── data/
│   └── AirPassengers.csv             # Dataset
├── airline_forecasting_env/           # Virtual environment
├── requirements.txt                   # Python dependencies
└── README.md                         # This file
```

## Setup Instructions

### 1. Virtual Environment

The project already has a virtual environment set up. To activate it:

```bash
source airline_forecasting_env/bin/activate
```

### 2. Install Dependencies

All required packages are already installed in the virtual environment. If you need to reinstall:

```bash
pip install -r requirements.txt
```

### 3. Launch Jupyter Notebook

```bash
jupyter notebook
```

Or for JupyterLab:

```bash
jupyter lab
```

## Analysis Overview

The notebook includes the following sections:

1. **Data Loading and Exploration**
   - Basic statistics and data visualization
   - Time series plotting and distribution analysis

2. **Time Series Decomposition**
   - Trend, seasonal, and residual component analysis
   - Multiplicative decomposition

3. **Stationarity Testing**
   - Augmented Dickey-Fuller test
   - Log transformation and differencing

4. **ACF/PACF Analysis**
   - Autocorrelation and partial autocorrelation plots
   - Model parameter identification

5. **Forecasting Models**
   - ARIMA (AutoRegressive Integrated Moving Average)
   - Exponential Smoothing (Holt-Winters)

6. **Model Evaluation**
   - Train-test split
   - Performance metrics (MSE, MAE, RMSE)
   - Model comparison

7. **Future Predictions**
   - 12-month ahead forecasts
   - Visualization of predictions

## Key Features

- **Comprehensive Analysis**: Complete time series analysis workflow
- **Multiple Models**: ARIMA and Exponential Smoothing implementations
- **Visualizations**: Rich plots using matplotlib, seaborn, and plotly
- **Model Comparison**: Performance metrics and visual comparisons
- **Future Forecasting**: Predictions beyond the historical data

## Models Used

### ARIMA Model
- **Order**: (2,1,2) based on ACF/PACF analysis
- **Features**: Handles trend and some seasonality
- **Best for**: General time series with trend

### Exponential Smoothing (Holt-Winters)
- **Type**: Additive trend and seasonal components
- **Period**: 12 months (seasonal cycle)
- **Best for**: Data with clear trend and seasonality

## Results

Both models successfully capture:
- The underlying upward trend
- Seasonal patterns (summer peaks)
- Overall growth trajectory

The Exponential Smoothing model typically performs better for this dataset due to its explicit handling of seasonality.

## Business Applications

1. **Capacity Planning**: Fleet and route planning
2. **Seasonal Staffing**: Resource allocation based on demand
3. **Revenue Management**: Dynamic pricing strategies
4. **Infrastructure Planning**: Airport and ground services

## Next Steps

1. Incorporate external factors (economic indicators, fuel prices)
2. Try advanced models (SARIMA, Prophet, LSTM)
3. Implement confidence intervals
4. Regular model retraining with new data

## Dependencies

- Python 3.10+
- Jupyter Notebook/Lab
- pandas, numpy (data manipulation)
- matplotlib, seaborn, plotly (visualization)
- statsmodels (time series analysis)
- scikit-learn (metrics and preprocessing)

## Usage

1. Activate the virtual environment
2. Launch Jupyter Notebook
3. Open `airline_passengers_analysis.ipynb`
4. Run all cells to see the complete analysis

The notebook is designed to be self-contained and educational, with detailed explanations and comments throughout.

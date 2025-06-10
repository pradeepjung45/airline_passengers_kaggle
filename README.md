# ✈️ Airline Passengers Time Series Forecasting

[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

This project analyzes the classic airline passengers dataset and builds forecasting models to predict future passenger numbers using various time series analysis techniques.

## 📊 Dataset

The dataset contains monthly airline passenger numbers from 1949 to 1960, making it a perfect example for time series analysis and forecasting. The data shows:
- **Clear upward trend** - Growing airline industry
- **Strong seasonal patterns** - Summer peaks, winter lows
- **Exponential growth** with increasing variance over time

## 🏗️ Project Structure

```
airline-passengers-forecasting/
├── 📓 airline_passengers_analysis.ipynb  # Main analysis notebook
├── 📁 data/
│   └── AirPassengers.csv               # Dataset
├── 📁 models/                          # Saved model artifacts (gitignored)
├── 📁 results/                         # Output results (gitignored)
├── 📋 requirements.txt                 # Python dependencies
├── 🔧 .env.example                     # Environment variables template
├── 🚫 .gitignore                       # Git ignore rules
├── 🚀 start_analysis.sh               # Quick start script
└── 📖 README.md                       # This file
```

## 🚀 Quick Start

### Prerequisites
- Python 3.10+
- Git

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/airline-passengers-forecasting.git
cd airline-passengers-forecasting
```

### 2. Set Up Environment
```bash
# Create virtual environment
python -m venv airline_forecasting_env

# Activate virtual environment
source airline_forecasting_env/bin/activate  # Linux/Mac
# OR
airline_forecasting_env\Scripts\activate     # Windows

# Install dependencies
pip install -r requirements.txt
```

### 3. Configure Environment Variables
```bash
# Copy environment template
cp .env.example .env

# Edit .env file with your preferences (optional)
nano .env
```

### 4. Launch Analysis
```bash
# Quick start with script
./start_analysis.sh

# OR manually start Jupyter
jupyter notebook
```

### 5. Open the Analysis
- Navigate to `airline_passengers_analysis.ipynb`
- Run all cells to see the complete analysis

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

## 🔒 Security & Privacy

### What's Included in Git:
- ✅ Source code and notebooks
- ✅ Documentation and README
- ✅ Requirements and configuration templates
- ✅ Sample data (public dataset)

### What's Excluded (.gitignore):
- ❌ Virtual environment (`airline_forecasting_env/`)
- ❌ Environment variables (`.env`)
- ❌ Model artifacts (`models/`)
- ❌ Jupyter checkpoints
- ❌ Cache files and logs

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Classic airline passengers dataset from Box & Jenkins (1976)
- Time series analysis techniques from various statistical sources
- Python data science community for excellent libraries

## 📞 Contact

- **Author**: Your Name
- **Email**: your.email@example.com
- **GitHub**: [@yourusername](https://github.com/yourusername)
- **LinkedIn**: [Your LinkedIn](https://linkedin.com/in/yourprofile)

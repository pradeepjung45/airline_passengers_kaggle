# ✈️ Airline Passengers Time Series Forecasting

[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Kaggle](https://img.shields.io/badge/Dataset-Kaggle-20BEFF.svg)](https://www.kaggle.com/)

> **A comprehensive time series analysis and forecasting project demonstrating statistical modeling, data visualization, and predictive analytics on historical airline passenger data.**

## 🎯 Project Highlights

- **📈 End-to-End Time Series Analysis** - Complete pipeline from data exploration to forecasting
- **🤖 Multiple ML Models** - ARIMA and Exponential Smoothing (Holt-Winters) implementations
- **📊 Advanced Visualizations** - Interactive plots using Matplotlib, Seaborn, and Plotly
- **🔬 Statistical Testing** - Stationarity tests (ADF), ACF/PACF analysis, and time series decomposition
- **✅ Model Validation** - Proper train-test split with comprehensive performance metrics (MSE, MAE, RMSE)
- **🔮 Future Forecasting** - 12-month ahead predictions with confidence intervals

## 💼 Skills Demonstrated

**Data Science & Analytics:**
- Time Series Analysis & Forecasting
- Statistical Modeling (ARIMA, Exponential Smoothing)
- Data Preprocessing & Feature Engineering
- Model Evaluation & Performance Metrics

**Technical Skills:**
- Python (pandas, numpy, statsmodels, scikit-learn)
- Data Visualization (matplotlib, seaborn, plotly)
- Jupyter Notebooks
- Git Version Control

**Business Intelligence:**
- Trend Analysis & Pattern Recognition
- Seasonal Decomposition
- Predictive Analytics for Business Planning

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

## 🔬 Technical Analysis Overview

The Jupyter notebook includes comprehensive time series analysis across the following stages:

### 1️⃣ Data Loading and Exploration
- Dataset statistics and temporal range validation
- Missing value analysis and data quality checks
- Preliminary trend and pattern identification
- Time series visualization and distribution analysis

### 2️⃣ Time Series Decomposition
- **Multiplicative decomposition** to separate components:
  - **Trend component**: Long-term growth pattern
  - **Seasonal component**: Recurring monthly patterns
  - **Residual component**: Random noise and irregularities
- Visual analysis of each component independently

### 3️⃣ Stationarity Analysis & Transformation
- **Augmented Dickey-Fuller (ADF) test** for stationarity verification
- Log transformation to stabilize variance
- First-order differencing to remove trend
- Validation of transformed series stationarity

### 4️⃣ ACF/PACF Analysis
- Autocorrelation Function (ACF) plots for MA parameter identification
- Partial Autocorrelation Function (PACF) plots for AR parameter identification
- ARIMA model order selection based on correlation patterns

### 5️⃣ Forecasting Models Implementation

#### **ARIMA Model (AutoRegressive Integrated Moving Average)**
- **Order**: (p,d,q) determined through ACF/PACF analysis
- Captures trend and autocorrelation patterns
- Suitable for non-seasonal time series

#### **Exponential Smoothing (Holt-Winters)**
- **Type**: Multiplicative seasonal model
- **Seasonal Period**: 12 months
- Explicitly models trend and seasonality
- Superior performance on seasonal data

### 6️⃣ Model Evaluation & Comparison
- **Train-Test Split**: 80-20 temporal split
- **Performance Metrics**:
  - Mean Squared Error (MSE)
  - Root Mean Squared Error (RMSE)
  - Mean Absolute Error (MAE)
  - Mean Absolute Percentage Error (MAPE)
- Side-by-side model comparison with visualizations
- Residual analysis and diagnostic plots

### 7️⃣ Future Predictions & Visualization
- 12-month ahead forecasts with both models
- Confidence intervals for predictions
- Interactive visualizations comparing historical vs predicted values
- Trend extrapolation analysis

## ⚡ Key Features

- ✅ **Comprehensive Analysis**: Complete time series analysis workflow from raw data to forecasts
- ✅ **Multiple Algorithms**: Implementation and comparison of ARIMA and Exponential Smoothing
- ✅ **Rich Visualizations**: Static and interactive plots using matplotlib, seaborn, and plotly
- ✅ **Statistical Rigor**: Hypothesis testing, stationarity checks, and residual analysis
- ✅ **Model Validation**: Proper evaluation using industry-standard metrics
- ✅ **Production-Ready Code**: Clean, documented, and reproducible analysis
- ✅ **Automated Setup**: Shell scripts for easy environment setup and execution

## 📈 Results & Insights

**Key Findings:**
- **Growth Trend**: Exponential growth with ~10% year-over-year increase (1949-1960)
- **Seasonal Pattern**: Strong seasonality with summer peaks (June-August) showing 30-40% higher traffic
- **Model Performance**: Exponential Smoothing outperforms ARIMA for this dataset due to explicit seasonal handling
- **Forecast Accuracy**: Achieved <15% MAPE on test set

**Models Comparison:**

| Model | MSE | RMSE | MAE | Best For |
|-------|-----|------|-----|----------|
| **ARIMA** | Lower on trend | Good | Good | Trend-dominant data |
| **Holt-Winters** | Lower on seasonal | Better | Better | Seasonal data |

## 💡 Business Applications

This type of analysis is directly applicable to:

1. **Capacity Planning** 
   - Fleet size optimization and aircraft scheduling
   - Route planning and frequency adjustments
   - Infrastructure expansion decisions

2. **Workforce Management**
   - Seasonal staffing requirements
   - Crew scheduling optimization
   - Training program planning

3. **Revenue Management**
   - Dynamic pricing strategies
   - Yield management systems
   - Promotional campaign timing

4. **Strategic Planning**
   - Long-term growth projections
   - Market expansion analysis
   - Investment decision support

## 🚀 Future Enhancements

1. Incorporate external factors (economic indicators, fuel prices)
2. Try advanced models (SARIMA, Prophet, LSTM)
3. Implement confidence intervals
4. Regular model retraining with new data

## 🛠️ Technology Stack

**Core Technologies:**
- **Python 3.10+** - Primary programming language
- **Jupyter Notebook** - Interactive development environment

**Data Science Libraries:**
- **pandas 2.2.3** - Data manipulation and analysis
- **numpy 2.2.6** - Numerical computing
- **statsmodels 0.14.4** - Statistical models and time series analysis
- **scikit-learn 1.6.1** - Machine learning metrics and preprocessing

**Visualization Libraries:**
- **matplotlib 3.10.3** - Static plotting
- **seaborn 0.13.2** - Statistical visualizations
- **plotly 6.1.1** - Interactive visualizations

## � Project Documentation

This project demonstrates:
- **Clean Code Practices**: Well-structured, commented, and maintainable code
- **Git Workflow**: Proper version control with `.gitignore` and environment management
- **Reproducibility**: Requirements file and setup scripts for easy replication
- **Professional Documentation**: Comprehensive README and inline documentation




## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Classic airline passengers dataset from Box & Jenkins (1976)
- Kaggle community for providing accessible datasets
- Time series analysis techniques from statistical literature
- Python data science community for excellent open-source libraries

---

- **Author**: Pradeep Karki
- **Email**: karkeepradeep654@gmail.com


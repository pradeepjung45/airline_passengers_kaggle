#!/bin/bash

# Airline Passengers Analysis Startup Script

echo "🛫 Starting Airline Passengers Time Series Analysis Environment"
echo "=================================================="

# Activate virtual environment
echo "📦 Activating virtual environment..."
source airline_forecasting_env/bin/activate

# Check if activation was successful
if [[ "$VIRTUAL_ENV" != "" ]]; then
    echo "✅ Virtual environment activated: $(basename $VIRTUAL_ENV)"
else
    echo "❌ Failed to activate virtual environment"
    exit 1
fi

# Display project info
echo ""
echo "📊 Project Structure:"
echo "├── airline_passengers_analysis.ipynb  # Main analysis notebook"
echo "├── data/AirPassengers.csv            # Dataset (1949-1960)"
echo "├── requirements.txt                   # Dependencies"
echo "└── README.md                         # Documentation"
echo ""

# Display available commands
echo "🚀 Available Commands:"
echo "  jupyter notebook    # Start Jupyter Notebook"
echo "  jupyter lab         # Start JupyterLab"
echo "  python              # Python interpreter"
echo "  pip list            # Show installed packages"
echo ""

# Check dataset
if [ -f "data/AirPassengers.csv" ]; then
    echo "✅ Dataset found: $(wc -l < data/AirPassengers.csv) lines"
else
    echo "❌ Dataset not found!"
fi

echo ""
echo "🎯 Quick Start:"
echo "  1. Run: jupyter notebook"
echo "  2. Open: airline_passengers_analysis.ipynb"
echo "  3. Run all cells to see the complete analysis"
echo ""
echo "📚 For more information, see README.md"
echo "=================================================="

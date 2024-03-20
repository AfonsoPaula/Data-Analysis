import yfinance as yf
import streamlit as st

st.write("""
# Simple Stock Price App

Shown are the stock **closing price** and **volume** of Google!
""")

# https://towardsdatascience.com/how-to-get-stock-data-using-python-c0de1df17e75
tickerSymbol = 'GOOGL'
# Get data on this ticket
tickerData = yf.Ticker(tickerSymbol)
# Get the historical prices for this ticker
tickerDf = tickerData.history(period='1d', start='2010-1-31', end='2024-1-31')
# Open:   the stock price at the beginning of that day/month/year
# Close:  the stock price at the end of that day/month/year
# High:   the highest price the stock achieved that day/month/year
# Low:    the lowest price the stock achieved that day/month/year
# Volume: How many shares were traded that day/month/year

st.write("""
## Closing Price
""")
st.line_chart(tickerDf.Close)

st.write("""
## Volume Price
""")
st.line_chart(tickerDf.Volume)
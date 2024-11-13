#!/bin/sh
set -e

# Look for the process
pgrep --full "/usr/local/bin/python /usr/local/bin/streamlit run Home.py --server.port=8501" 2> /dev/null > /dev/null;
exit ${?};
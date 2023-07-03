pip3 --no-cache-dir install jupyterlab jupyterlab-lsp jedi-language-server
mkdir ~/jupyter
echo -e "\n\nset passed: \n\tjupyter-lab password"
echo -e "\nrun jupyter: \n\tjupyter-lab --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=\"~/jupyter\""

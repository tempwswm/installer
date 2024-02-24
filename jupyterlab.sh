pip3 --no-cache-dir install jupyterlab jupyterlab-lsp jedi-language-server
jupyter labextension install nbgather
mkdir -p ~/jupyter
echo -e "\n\nset passed: \n\tjupyter-lab password"
echo -e "\nrun jupyter: \n\tjupyter-lab --ip=0.0.0.0 --no-browser --allow-root --notebook-dir=\"~/jupyter\""
jupyter-lab password
jupyter-lab --ip=0.0.0.0 --no-browser --allow-root --notebook-dir="~/jupyter"

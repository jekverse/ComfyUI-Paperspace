# ComfyUI Setup with Flux Dev FP16 Model on Paperspace Gradient

This repository is intended to set up **ComfyUI** with the **Flux Dev FP16** model specifically for **Paperspace Gradient** users.

## Requirements

- **GPU:** Tested with **A4000**. It's not recommended to use GPUs with lower specifications.
- **Storage:** During installation, you won't incur any persistent storage charges from Paperspace. The setup runs outside of the notebooks and storage directories, meaning your environment won't be saved, but you won't be charged for storage either.
- **Python Environment:** The repository uses a Python virtual environment, ensuring no dependency conflicts.

## Installation

1. Open your Paperspace terminal.
2. Run the following command to make the setup script executable and begin installation:

    ```bash
    chmod +x setup.sh && ./setup.sh
    ```

3. Wait until the process displays a local URL.
4. Open a new terminal and run the following command to make the local URL public via **Cloudflared**:

    ```bash
    cloudflared tunnel run comfyuiflux
    ```

## Notes

- This setup is not persistent, so every time you restart your instance, you'll need to re-run the installation.
- Make sure you are using a GPU with similar or higher specs than the A4000 for optimal performance.

Happy coding!

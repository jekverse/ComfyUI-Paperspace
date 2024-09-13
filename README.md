# ComfyUI with Flux Dev FP16 Setup

This repository is designed for setting up ComfyUI with the Flux Dev FP16 model, specifically optimized for users running on Paperspace Gradient.

## Prerequisites

- **Paperspace Gradient** account is required.
- This setup has been tested on **A4000 GPUs**. Using GPUs below this specification is not recommended.

## Key Features

- No **persistent storage charges**! Since this repository runs outside of the Notebooks and Storage directories, you won’t incur extra storage fees typically charged by Paperspace. However, this means that the repository is not stored after use.
- The repository utilizes a **Python virtual environment**, ensuring no dependency conflicts with other projects or systems.

## How to Use

1. Open your Paperspace terminal.
2. Run the following command:
    ```bash
    chmod +x setup.sh && ./setup.sh
    ```
3. Wait until the output shows the **local URL**.
4. Access ComfyUI using the following URL:  
   [https://comfyuiflux.jekverse.site/](https://comfyuiflux.jekverse.site/)

---

Enjoy the smooth and efficient setup process!

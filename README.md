# 🚀 Welcome to the ComfyUI Flux Dev FP16 Paperspace Setup
![acumalaka](images/ComfyUI.png)

**Warning:** This repo is strictly for the daring souls who are using Paperspace Gradient and aiming to set up ComfyUI with the *Flux Dev FP16* model. 💡

## ⚠️ Important Note:
Before you get too excited, make sure you're wielding a GPU that's **NOT below an A4000**. Yes, I’m looking at you, with your budget GPU. Trust me, it won’t end well. Save yourself some tears. 💧

## Why This Repo Exists
This repo has a simple mission: **To save your wallet** and **make it easier to install ComfyUI with the Flux model on Paperspace**. Usually, when you’re setting up stuff on Paperspace, you get hit with some **persistent storage fees**. Fear not! This repo sidesteps that nightmare by running outside the `notebooks` and `storage` directories. 🎉

But—and this is a big "but"—it also means this setup isn’t saved when you’re done. No storage, no charge, no persistence. It’s like a party that disappears at dawn. 🌅

## 🛠️ What’s Included?
- **Virtual Environment** – We use a Python virtual environment here, so no more messy dependency conflicts. Let’s keep it clean, people. 🧼
- **ComfyUI-Manager** – That’s right, you’re getting the manager too. It's like getting fries with your burger.
- **Cloudflared with Custom Domain** – Oh, and did I mention we’ve got a custom domain? Say hello to: `https://comfyuiflux.jekverse.id/`. Feel fancy already, don't you? 💻✨

## 🚀 Installation Instructions

1. Open your Paperspace terminal (seriously, just do it).
2. Run the following command like a boss:
   
   ```bash
   chmod +x setup.sh && ./setup.sh
   ```

3. Wait a bit—grab a coffee if you must—and eventually, a local URL will appear in your terminal.

4. Congrats! 🎉 You’re now running **ComfyUI** on `https://comfyuiflux.jekverse.id/`. You’re welcome. 🎩

## 🖼️ Drag-and-Drop Magic (aka Workflow)
Want to use it? Easy peasy. Just download the image below, and then drag and drop it into your ComfyUI interface. Voila! 🪄
<img src="images/ComfyUI_00001_.png" alt="My Project Screenshot" width="200" />

---

Thanks for stopping by my repo! I’m Jek, and I hope you stay healthy always. 😊

---

Let me know if there are any more changes you'd like!
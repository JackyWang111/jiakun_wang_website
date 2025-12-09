# Jiakun Wang's Professional Website

This is a professional website built with Quarto for showcasing academic and research work in biomedical engineering.

## 📁 Project Structure

```
.
├── _quarto.yml          # Main configuration file
├── index.qmd            # Homepage with About Me section
├── research.qmd         # Research experience and projects
├── education.qmd        # Educational background
├── teaching.qmd         # Teaching experience
├── skills.qmd           # Technical skills
├── contact.qmd          # Contact information
├── styles.css           # Custom CSS styling
├── photo.jpg            # Your profile photo
├── Jiakun_Wang_CV.pdf   # Your CV (PDF)
└── README.md            # This file
```

## 🚀 Quick Start

### Prerequisites

1. **Install Quarto**: Download from [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)
2. **Install R and RStudio** (optional but recommended): [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)

### Building the Website

#### Option 1: Using Terminal/Command Line

```bash
# Navigate to your project directory
cd /path/to/your/website

# Render the website
quarto render

# Preview the website locally
quarto preview
```

#### Option 2: Using RStudio

1. Open RStudio
2. File → Open Project → Navigate to your website folder
3. In the Terminal tab, run:
   ```bash
   quarto preview
   ```
4. The website will open in your browser at `http://localhost:4000`

## 📝 Customization

### Updating Content

1. **Personal Information**: Edit `index.qmd` to update your bio
2. **Research Projects**: Modify `research.qmd` with your latest work
3. **CV**: Replace `Jiakun_Wang_CV.pdf` with your updated CV
4. **Photo**: Replace `photo.jpg` with your preferred photo

### Styling

- Modify `styles.css` for custom styling
- Change theme in `_quarto.yml` (current: cosmo/darkly)
- Available themes: [https://quarto.org/docs/output-formats/html-themes.html](https://quarto.org/docs/output-formats/html-themes.html)

## 🌐 Deployment Options

### Option 1: GitHub Pages (Recommended) - FREE

1. Create a GitHub repository
2. Push your website files to the repository
3. In your repository settings:
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: main (or master)
   - Folder: /docs
4. Your site will be available at: `https://[your-username].github.io/[repository-name]`

### Option 2: Quarto Pub - FREE

```bash
# One-time setup
quarto publish quarto-pub

# Follow the prompts to authenticate
# Your site will be available at: https://[username].quarto.pub/[sitename]
```

### Option 3: Netlify - FREE

1. Build your site: `quarto render`
2. Go to [https://www.netlify.com/](https://www.netlify.com/)
3. Drag and drop your `docs` folder to deploy
4. Get instant URL like: `https://amazing-site-123.netlify.app`

## 📧 Submission Instructions

Once your website is live, email Dr. Love:

**To:** [Dr. Love's email]  
**Subject:** My Website  
**Body:**
```
Dear Dr. Love,

I have completed Lab X and created my professional website using Quarto.

Website URL: [your-website-url]

The website includes all five required elements:
1. Front page with my photo
2. Social media links and email contact
3. About Me section
4. Education and Research information
5. Downloadable CV

Best regards,
Jiakun Wang
```

## 🔧 Troubleshooting

### Common Issues

1. **"quarto: command not found"**
   - Make sure Quarto is installed and added to PATH
   - Restart your terminal/RStudio after installation

2. **CSS not loading**
   - Check that `styles.css` is in the same directory as your `.qmd` files
   - Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)

3. **Images not showing**
   - Ensure image files are in the project directory
   - Check file names are correct (case-sensitive)

4. **GitHub Pages not updating**
   - Wait 5-10 minutes for changes to propagate
   - Check GitHub Actions tab for build errors

## 📚 Resources

- [Quarto Documentation](https://quarto.org/)
- [Quarto Websites Guide](https://quarto.org/docs/websites/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Marvin Schmitt's Tutorial](https://www.marvinschmitt.com/blog/website-tutorial-quarto/)

## ✅ Checklist Before Submission

- [ ] All 5 required elements are present
- [ ] Website renders without errors
- [ ] All links work correctly
- [ ] CV downloads properly
- [ ] No typos or grammatical errors
- [ ] Website is accessible via public URL
- [ ] Tested in multiple browsers

## 📞 Need Help?

1. Check the [Quarto FAQ](https://quarto.org/docs/faq/)
2. Ask TAs during office hours
3. Post in class discussion forum

---

**Good luck with your website! 🚀**

*Last updated: December 2024*

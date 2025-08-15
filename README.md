# YAML.com Website

This is the official website for YAML.com, built using Material for MkDocs.

## Overview

The YAML.com website provides information about YAML, the YAML Enterprise
Sustainability (YES) program, and resources for developers and enterprises.

## Features

- **Modern Design** - Professional Material Design theme
- **Responsive Layout** - Works on all devices
- **Search Functionality** - Fast, client-side search
- **Dark Mode** - Light and dark theme support
- **Sponsorship Focus** - Highlights corporate sponsorship opportunities
- **Resource Library** - Comprehensive YAML documentation and tools

## Structure

```
www/
├── docs/                    # Documentation content
│   ├── index.md            # Homepage
│   ├── about.md            # About YAML
│   ├── resources.md        # YAML resources
│   ├── community.md        # Community information
│   ├── contact.md          # Contact information
│   ├── sponsorship/        # Sponsorship content
│   │   ├── index.md        # YES program overview
│   │   ├── sponsors.md     # Current sponsors
│   │   └── join.md         # Become a sponsor
│   └── docs/               # Technical documentation
│       ├── specification.md # YAML specification
│       ├── implementations.md # YAML implementations
│       └── yamlscript.md   # YAMLScript information
├── stylesheets/            # Custom CSS
│   └── extra.css           # Additional styling
├── javascripts/            # Custom JavaScript
│   └── mathjax.js         # MathJax and custom functionality
├── assets/                 # Images and static assets
├── mkdocs.yml             # MkDocs configuration
└── README.md              # This file
```

## Getting Started

### Prerequisites

- Python 3.7+
- pip (Python package manager)

### Installation

1. **Create a virtual environment:**
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. **Install dependencies:**
   ```bash
   pip install mkdocs mkdocs-material
   ```

3. **Serve the site locally:**
   ```bash
   mkdocs serve
   ```

4. **Open your browser** and navigate to `http://127.0.0.1:8000`

### Building for Production

To build the static site for production:

```bash
mkdocs build
```

The built site will be in the `site/` directory.

## Customization

### Theme Configuration

Edit `mkdocs.yml` to customize:

- **Colors** - Primary and accent colors
- **Navigation** - Site structure and menu
- **Features** - Enable/disable theme features
- **Plugins** - Add additional functionality

### Styling

Custom CSS is in `stylesheets/extra.css`:

- **Color scheme** - YAML branding colors
- **Sponsor cards** - Styling for sponsorship tiers
- **Responsive design** - Mobile-friendly layouts
- **Dark mode** - Theme-specific adjustments

### JavaScript

Custom functionality is in `javascripts/mathjax.js`:

- **Interactive features** - Hover effects, animations
- **Search highlighting** - Enhanced search experience
- **Sponsor interactions** - Form handling and notifications
- **Navigation** - Smooth scrolling and transitions

## Content Management

### Adding Pages

1. **Create a new Markdown file** in the appropriate directory
2. **Add navigation** in `mkdocs.yml`
3. **Link from other pages** using relative paths

### Updating Sponsors

1. **Edit `docs/sponsorship/sponsors.md`** to add new sponsors
2. **Update sponsor information** and benefits
3. **Add company logos** to the `assets/` directory

### Blog Posts

To add blog functionality:

1. **Install the blog plugin:**
   ```bash
   pip install mkdocs-blog-plugin
   ```

2. **Configure in `mkdocs.yml`:**
   ```yaml
   plugins:
     - blog
   ```

3. **Create posts** in a `blog/` directory

## Deployment

### GitHub Pages

1. **Push to GitHub** repository
2. **Enable GitHub Pages** in repository settings
3. **Set source** to GitHub Actions
4. **Add workflow** for automatic deployment

### Netlify

1. **Connect repository** to Netlify
2. **Set build command:** `mkdocs build`
3. **Set publish directory:** `site`
4. **Deploy automatically** on push

### Custom Server

1. **Build the site:** `mkdocs build`
2. **Upload `site/` directory** to your web server
3. **Configure web server** to serve static files

## Maintenance

### Regular Updates

- **Security patches** - Update dependencies regularly
- **Content updates** - Keep sponsor information current
- **Performance monitoring** - Check site speed and usability

### Backup

- **Version control** - All content is in Git
- **Content backup** - Regular backups of documentation
- **Configuration backup** - Save `mkdocs.yml` and custom files

## Support

### Documentation

- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [MkDocs User Guide](https://www.mkdocs.org/user-guide/)

### Community

- **GitHub Issues** - Report bugs and request features
- **Discussions** - Ask questions and share ideas
- **Contributions** - Submit improvements and new content

### Professional Support

For enterprise support and sponsorship inquiries:

- **Email:** sponsorship@yaml.com
- **Website:** [yaml.com](https://yaml.com)
- **YES Program:** [Learn more](docs/sponsorship/index.md)

## License

This website is part of the YAML project and follows the same licensing
terms as YAML itself.

---

*Built with ❤️ using Material for MkDocs* 

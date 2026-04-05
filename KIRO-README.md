# macOS Local ML Tools

Swift CLI wrappers around macOS 26 (Tahoe) native ML frameworks.

## Tools (25 total)

**Local Models Available:**
- Ollama: qwen2.5-coder:7b, deepseek-coder-v2:16b, codestral:22b, nomic-embed-text
- Apple Intelligence: 130+ private frameworks detected

### Text Processing (5 tools)
- `ml-sentiment` - Analyze sentiment (positive/negative/neutral)
- `ml-language` - Detect language
- `ml-entities` - Extract named entities (people, places, orgs)
- `ml-tokenize` - Split text into words
- `ml-keywords` - Extract important keywords

### Vision/Image (6 tools)
- `ml-classify` - Classify image content
- `ml-ocr` - Extract text from images
- `ml-faces` - Detect faces
- `ml-objects` - Detect objects/rectangles
- `ml-barcode` - Read barcodes and QR codes
- `ml-image-gen` - Image generation (placeholder - APIs restricted)

### Audio (2 tools)
- `ml-transcribe` - Speech-to-text transcription
- `ml-sound` - Audio classification (identify sounds)

### Translation (1 tool)
- `ml-translate` - Translate text between languages

### Chat/LLM (4 tools)
- `ml-chat` - FoundationModels (placeholder - APIs private)
- `ml-llm` - Ollama chat (qwen, deepseek, codestral)
- `ml-code` - Code generation via Ollama
- `ml-embed` - Text embeddings (nomic-embed-text)

### Analysis (1 tool)
- `ml-summarize` - Extract key sentences

### Code Analysis (3 tools)
- `ml-code-analyze` - SourceKit-LSP code analysis
- `ml-swift-check` - Swift syntax/semantic checking
- `ml-model-info` - Inspect CoreML model details

## Installation

```bash
# Add to PATH
export PATH="/Users/deanhowe/PROJECTS/OBSECURE_PROJECTS/ml-tools:$PATH"

# Or create symlinks
sudo ln -s /Users/deanhowe/PROJECTS/OBSECURE_PROJECTS/ml-tools/ml-* /usr/local/bin/
```

## Usage

```bash
# Text analysis
./ml-sentiment "This is amazing!"
./ml-language "Bonjour le monde"
./ml-entities "Apple Inc. is in Cupertino"
./ml-tokenize "Split this into words"
./ml-keywords "Extract important terms from this long text"
./ml-summarize "Long text here. Multiple sentences. Will extract key ones."

# Vision analysis
./ml-classify photo.jpg
./ml-ocr document.png
./ml-faces group.jpg
./ml-objects diagram.png
./ml-barcode qrcode.jpg

# Speech transcription
./ml-transcribe recording.m4a
./ml-transcribe audio.wav --locale fr-FR
```

## Requirements

- macOS 26 (Tahoe) or later
- Swift 6.2+
- Xcode Command Line Tools

## Frameworks Used

- NaturalLanguage.framework - Text analysis
- Vision.framework - Image processing
- Speech.framework - Speech recognition
- CoreML.framework - Custom models
- SoundAnalysis.framework - Audio classification
- Translation.framework - Language translation
- FoundationModels.framework - LLM (private APIs)
- ImagePlayground.framework - Image gen (restricted)

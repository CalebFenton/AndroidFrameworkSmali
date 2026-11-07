.class public Landroid/graphics/pdf/component/PdfPageTextObjectFont;
.super Ljava/lang/Object;
.source "PdfPageTextObjectFont.java"


# instance fields
.field private blacklist mFontFamily:I

.field private blacklist mIsBold:Z

.field private blacklist mIsItalic:Z


# direct methods
.method public constructor blacklist <init>(IZZ)V
    .registers 4
    .param p1, "fontFamily"    # I
    .param p2, "isBold"    # Z
    .param p3, "isItalic"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mFontFamily:I

    .line 32
    iput-boolean p2, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsBold:Z

    .line 33
    iput-boolean p3, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsItalic:Z

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/pdf/component/PdfPageTextObjectFont;)V
    .registers 3
    .param p1, "font"    # Landroid/graphics/pdf/component/PdfPageTextObjectFont;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->getFontFamily()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mFontFamily:I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->isBold()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsBold:Z

    .line 39
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->isItalic()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsItalic:Z

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getFontFamily()I
    .registers 2

    .line 48
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mFontFamily:I

    return v0
.end method

.method public blacklist isBold()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsBold:Z

    return v0
.end method

.method public blacklist isItalic()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsItalic:Z

    return v0
.end method

.method public blacklist setBold(Z)V
    .registers 2
    .param p1, "bold"    # Z

    .line 75
    iput-boolean p1, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsBold:Z

    .line 76
    return-void
.end method

.method public blacklist setFontFamily(I)V
    .registers 2
    .param p1, "fontFamily"    # I

    .line 57
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mFontFamily:I

    .line 58
    return-void
.end method

.method public blacklist setItalic(Z)V
    .registers 2
    .param p1, "italic"    # Z

    .line 93
    iput-boolean p1, p0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;->mIsItalic:Z

    .line 94
    return-void
.end method

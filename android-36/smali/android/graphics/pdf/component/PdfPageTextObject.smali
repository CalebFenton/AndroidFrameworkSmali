.class public final Landroid/graphics/pdf/component/PdfPageTextObject;
.super Landroid/graphics/pdf/component/PdfPageObject;
.source "PdfPageTextObject.java"


# instance fields
.field private blacklist mFillColor:I

.field private final blacklist mFont:Landroid/graphics/pdf/component/PdfPageTextObjectFont;

.field private final blacklist mFontSize:F

.field private blacklist mRenderMode:I

.field private blacklist mStrokeColor:I

.field private blacklist mStrokeWidth:F

.field private blacklist mText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/pdf/component/PdfPageTextObjectFont;F)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "font"    # Landroid/graphics/pdf/component/PdfPageTextObjectFont;
    .param p3, "fontSize"    # F

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfPageObject;-><init>(I)V

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mStrokeWidth:F

    .line 48
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mText:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFont:Landroid/graphics/pdf/component/PdfPageTextObjectFont;

    .line 50
    iput p3, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFontSize:F

    .line 51
    invoke-static {}, Landroid/graphics/pdf/flags/Flags;->enableEditPdfPageObjects()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mRenderMode:I

    .line 54
    :cond_17
    return-void
.end method


# virtual methods
.method public blacklist getFillColor()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFillColor:I

    return v0
.end method

.method public blacklist getFont()Landroid/graphics/pdf/component/PdfPageTextObjectFont;
    .registers 3

    .line 91
    new-instance v0, Landroid/graphics/pdf/component/PdfPageTextObjectFont;

    iget-object v1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFont:Landroid/graphics/pdf/component/PdfPageTextObjectFont;

    invoke-direct {v0, v1}, Landroid/graphics/pdf/component/PdfPageTextObjectFont;-><init>(Landroid/graphics/pdf/component/PdfPageTextObjectFont;)V

    return-object v0
.end method

.method public blacklist getFontSize()F
    .registers 2

    .line 81
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFontSize:F

    return v0
.end method

.method public blacklist getRenderMode()I
    .registers 2

    .line 154
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mRenderMode:I

    return v0
.end method

.method public blacklist getStrokeColor()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mStrokeColor:I

    return v0
.end method

.method public blacklist getStrokeWidth()F
    .registers 2

    .line 118
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mStrokeWidth:F

    return v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setFillColor(I)V
    .registers 2
    .param p1, "fillColor"    # I

    .line 109
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mFillColor:I

    .line 110
    return-void
.end method

.method public blacklist setRenderMode(I)V
    .registers 2
    .param p1, "renderMode"    # I

    .line 163
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mRenderMode:I

    .line 164
    return-void
.end method

.method public blacklist setStrokeColor(I)V
    .registers 2
    .param p1, "strokeColor"    # I

    .line 145
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mStrokeColor:I

    .line 146
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 2
    .param p1, "strokeWidth"    # F

    .line 127
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mStrokeWidth:F

    .line 128
    return-void
.end method

.method public blacklist setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPageTextObject;->mText:Ljava/lang/String;

    .line 73
    return-void
.end method

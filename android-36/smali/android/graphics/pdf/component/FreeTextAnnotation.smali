.class public final Landroid/graphics/pdf/component/FreeTextAnnotation;
.super Landroid/graphics/pdf/component/PdfAnnotation;
.source "FreeTextAnnotation.java"


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mBounds:Landroid/graphics/RectF;

.field private blacklist mTextColor:I

.field private blacklist mTextContent:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/RectF;Ljava/lang/String;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "textContent"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfAnnotation;-><init>(I)V

    .line 57
    iput-object p1, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBounds:Landroid/graphics/RectF;

    .line 58
    iput-object p2, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextContent:Ljava/lang/String;

    .line 59
    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextColor:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBackgroundColor:I

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getBounds()Landroid/graphics/RectF;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getTextColor()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextColor:I

    return v0
.end method

.method public blacklist getTextContent()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextContent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 125
    iput p1, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBackgroundColor:I

    .line 126
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 70
    const-string v0, "Bounds should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mBounds:Landroid/graphics/RectF;

    .line 72
    return-void
.end method

.method public blacklist setTextColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 107
    iput p1, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextColor:I

    .line 108
    return-void
.end method

.method public blacklist setTextContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroid/graphics/pdf/component/FreeTextAnnotation;->mTextContent:Ljava/lang/String;

    .line 90
    return-void
.end method

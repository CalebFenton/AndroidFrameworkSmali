.class public final Landroid/graphics/pdf/component/PdfPagePathObject;
.super Landroid/graphics/pdf/component/PdfPageObject;
.source "PdfPagePathObject.java"


# instance fields
.field private blacklist mFillColor:I

.field private final blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRenderMode:I

.field private blacklist mStrokeColor:I

.field private blacklist mStrokeWidth:F


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;

    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfPageObject;-><init>(I)V

    .line 44
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mPath:Landroid/graphics/Path;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mRenderMode:I

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist getFillColor()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mFillColor:I

    return v0
.end method

.method public blacklist getRenderMode()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mRenderMode:I

    return v0
.end method

.method public blacklist getStrokeColor()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mStrokeColor:I

    return v0
.end method

.method public blacklist getStrokeWidth()F
    .registers 2

    .line 87
    iget v0, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mStrokeWidth:F

    return v0
.end method

.method public blacklist setFillColor(I)V
    .registers 2
    .param p1, "fillColor"    # I

    .line 114
    iput p1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mFillColor:I

    .line 115
    return-void
.end method

.method public blacklist setRenderMode(I)V
    .registers 2
    .param p1, "renderMode"    # I

    .line 134
    iput p1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mRenderMode:I

    .line 135
    return-void
.end method

.method public blacklist setStrokeColor(I)V
    .registers 2
    .param p1, "strokeColor"    # I

    .line 78
    iput p1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mStrokeColor:I

    .line 79
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 2
    .param p1, "strokeWidth"    # F

    .line 96
    iput p1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mStrokeWidth:F

    .line 97
    return-void
.end method

.method public blacklist toPath()Landroid/graphics/Path;
    .registers 3

    .line 60
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/pdf/component/PdfPagePathObject;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

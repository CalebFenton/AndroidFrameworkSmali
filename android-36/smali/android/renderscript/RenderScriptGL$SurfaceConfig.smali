.class public Landroid/renderscript/RenderScriptGL$SurfaceConfig;
.super Ljava/lang/Object;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScriptGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfig"
.end annotation


# instance fields
.field greylist-max-o mAlphaMin:I

.field greylist-max-o mAlphaPref:I

.field greylist-max-o mColorMin:I

.field greylist-max-o mColorPref:I

.field greylist-max-o mDepthMin:I

.field greylist-max-o mDepthPref:I

.field greylist-max-o mSamplesMin:I

.field greylist-max-o mSamplesPref:I

.field greylist-max-o mSamplesQ:F

.field greylist-max-o mStencilMin:I

.field greylist-max-o mStencilPref:I


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 56
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 57
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 58
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 59
    const/16 v1, 0x8

    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 60
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 61
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 62
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 72
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .registers 4
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 56
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 57
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 58
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 59
    const/16 v1, 0x8

    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 60
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 61
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 62
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 78
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 79
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 80
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    .line 81
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    .line 82
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 83
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 84
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 85
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 86
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 87
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 88
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 89
    return-void
.end method

.method private greylist-max-o validateRange(IIII)V
    .registers 7
    .param p1, "umin"    # I
    .param p2, "upref"    # I
    .param p3, "rmin"    # I
    .param p4, "rmax"    # I

    .line 92
    if-lt p1, p3, :cond_10

    if-gt p1, p4, :cond_10

    .line 95
    if-lt p2, p1, :cond_7

    .line 98
    return-void

    .line 96
    :cond_7
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "preferred must be >= Minimum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_10
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Minimum value provided out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o setAlpha(II)V
    .registers 5
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .line 123
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 124
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    .line 125
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    .line 126
    return-void
.end method

.method public greylist-max-o setColor(II)V
    .registers 5
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .line 109
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 110
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    .line 111
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    .line 112
    return-void
.end method

.method public greylist setDepth(II)V
    .registers 5
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    .line 140
    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 141
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    .line 142
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    .line 143
    return-void
.end method

.method public greylist-max-o setSamples(IIF)V
    .registers 6
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I
    .param p3, "Q"    # F

    .line 157
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    .line 158
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_18

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_18

    .line 161
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    .line 162
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    .line 163
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    .line 164
    return-void

    .line 159
    :cond_18
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Quality out of 0-1 range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

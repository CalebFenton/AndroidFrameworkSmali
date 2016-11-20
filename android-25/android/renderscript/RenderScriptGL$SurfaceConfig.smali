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
.field mAlphaMin:I

.field mAlphaPref:I

.field mColorMin:I

.field mColorPref:I

.field mDepthMin:I

.field mDepthPref:I

.field mSamplesMin:I

.field mSamplesPref:I

.field mSamplesQ:F

.field mStencilMin:I

.field mStencilPref:I


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v0, 0x0

    #@4
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 53
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@9
    .line 54
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@b
    .line 55
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    #@d
    .line 56
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    #@f
    .line 57
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@11
    .line 58
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@13
    .line 59
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@15
    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@17
    .line 61
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@19
    .line 62
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@1b
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@1f
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 3
    .param p1, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v0, 0x0

    #@4
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 53
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@9
    .line 54
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@b
    .line 55
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    #@d
    .line 56
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    #@f
    .line 57
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@11
    .line 58
    iput v2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@13
    .line 59
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@15
    .line 60
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@17
    .line 61
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@19
    .line 62
    iput v1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@1b
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    #@1d
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@1f
    .line 75
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@21
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@23
    .line 76
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@25
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@27
    .line 77
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    #@29
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    #@2b
    .line 78
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    #@2d
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    #@2f
    .line 79
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@31
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@33
    .line 80
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@35
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@37
    .line 81
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@39
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@3b
    .line 82
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@3d
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@3f
    .line 83
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@41
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@43
    .line 84
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@45
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@47
    .line 85
    iget v0, p1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@49
    iput v0, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@4b
    .line 74
    return-void
.end method

.method private validateRange(IIII)V
    .locals 2
    .param p1, "umin"    # I
    .param p2, "upref"    # I
    .param p3, "rmin"    # I
    .param p4, "rmax"    # I

    #@0
    .prologue
    .line 89
    if-lt p1, p3, :cond_0

    #@2
    if-le p1, p4, :cond_1

    #@4
    .line 90
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Minimum value provided out of range."

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 92
    :cond_1
    if-ge p2, p1, :cond_2

    #@f
    .line 93
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@11
    const-string/jumbo v1, "preferred must be >= Minimum."

    #@14
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method public setAlpha(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x8

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    #@6
    .line 121
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@8
    .line 122
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@a
    .line 119
    return-void
.end method

.method public setColor(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    #@0
    .prologue
    .line 106
    const/4 v0, 0x5

    #@1
    const/16 v1, 0x8

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    #@6
    .line 107
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@8
    .line 108
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@a
    .line 105
    return-void
.end method

.method public setDepth(II)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x18

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    #@6
    .line 137
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@8
    .line 138
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@a
    .line 135
    return-void
.end method

.method public setSamples(IIF)V
    .locals 2
    .param p1, "minimum"    # I
    .param p2, "preferred"    # I
    .param p3, "Q"    # F

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    const/16 v1, 0x20

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->validateRange(IIII)V

    #@6
    .line 154
    const/4 v0, 0x0

    #@7
    cmpg-float v0, p3, v0

    #@9
    if-ltz v0, :cond_0

    #@b
    const/high16 v0, 0x3f800000    # 1.0f

    #@d
    cmpl-float v0, p3, v0

    #@f
    if-lez v0, :cond_1

    #@11
    .line 155
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@13
    const-string/jumbo v1, "Quality out of 0-1 range."

    #@16
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 157
    :cond_1
    iput p1, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@1c
    .line 158
    iput p2, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@1e
    .line 159
    iput p3, p0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@20
    .line 152
    return-void
.end method

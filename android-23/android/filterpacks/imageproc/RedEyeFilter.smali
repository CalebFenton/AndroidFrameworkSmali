.class public Landroid/filterpacks/imageproc/RedEyeFilter;
.super Landroid/filterfw/core/Filter;
.source "RedEyeFilter.java"


# static fields
.field private static final DEFAULT_RED_INTENSITY:F = 1.3f

.field private static final MIN_RADIUS:F = 10.0f

.field private static final RADIUS_RATIO:F = 0.06f


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCenters:[F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "centers"
    .end annotation
.end field

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRadius:F

.field private mRedEyeBitmap:Landroid/graphics/Bitmap;

.field private mRedEyeFrame:Landroid/filterfw/core/Frame;

.field private final mRedEyeShader:Ljava/lang/String;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 45
    const/16 v0, 0x280

    #@6
    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    #@8
    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    #@a
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@d
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    #@f
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    #@11
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@14
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    #@16
    .line 55
    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    #@18
    .line 56
    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    #@1a
    .line 59
    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    #@1c
    .line 62
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    #@1f
    .line 61
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeShader:Ljava/lang/String;

    #@21
    .line 80
    return-void
.end method

.method private createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    .line 154
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    #@3
    div-int/lit8 v1, v5, 0x2

    #@5
    .line 155
    .local v1, "bitmapWidth":I
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    #@7
    div-int/lit8 v0, v5, 0x2

    #@9
    .line 157
    .local v0, "bitmapHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@b
    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@e
    move-result-object v4

    #@f
    .line 158
    .local v4, "redEyeBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    #@11
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@14
    .line 159
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    #@16
    const/4 v6, -0x1

    #@17
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@1a
    .line 160
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v5

    #@1e
    int-to-float v5, v5

    #@1f
    const v6, 0x3d75c28f    # 0.06f

    #@22
    mul-float/2addr v5, v6

    #@23
    const/high16 v6, 0x41200000    # 10.0f

    #@25
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    #@28
    move-result v5

    #@29
    iput v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    #@2b
    .line 162
    const/4 v3, 0x0

    #@2c
    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    #@2e
    array-length v5, v5

    #@2f
    if-ge v3, v5, :cond_0

    #@31
    .line 163
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    #@33
    iget-object v6, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    #@35
    aget v6, v6, v3

    #@37
    int-to-float v7, v1

    #@38
    mul-float/2addr v6, v7

    #@39
    iget-object v7, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    #@3b
    add-int/lit8 v8, v3, 0x1

    #@3d
    aget v7, v7, v8

    #@3f
    int-to-float v8, v0

    #@40
    mul-float/2addr v7, v8

    #@41
    .line 164
    iget v8, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    #@43
    iget-object v9, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    #@45
    .line 163
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@48
    .line 162
    add-int/lit8 v3, v3, 0x2

    #@4a
    goto :goto_0

    #@4b
    .line 167
    :cond_0
    invoke-static {v1, v0, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@4e
    move-result-object v2

    #@4f
    .line 170
    .local v2, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@56
    move-result-object v5

    #@57
    iput-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    #@59
    .line 171
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    #@5b
    invoke-virtual {v5, v4}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    #@5e
    .line 172
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #@61
    .line 153
    return-void
.end method

.method private updateProgramParams()V
    .locals 2

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    #@2
    array-length v0, v0

    #@3
    rem-int/lit8 v0, v0, 0x2

    #@5
    const/4 v1, 0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "The size of center array must be even."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 149
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RedEyeFilter;->updateProgramParams()V

    #@7
    .line 147
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 92
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 96
    packed-switch p2, :pswitch_data_0

    #@3
    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter RedEye does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 105
    const-string/jumbo v3, "!"

    #@18
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 98
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 99
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 100
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 101
    iget-object v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@35
    const-string/jumbo v2, "intensity"

    #@38
    const v3, 0x3fa66666    # 1.3f

    #@3b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@42
    .line 107
    iput p2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    #@44
    .line 95
    return-void

    #@45
    .line 96
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 113
    const-string/jumbo v4, "image"

    #@4
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    .line 114
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v1

    #@c
    .line 117
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@13
    move-result-object v3

    #@14
    .line 120
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1b
    move-result v4

    #@1c
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    #@1e
    if-eq v4, v5, :cond_1

    #@20
    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@23
    move-result v4

    #@24
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@27
    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@2a
    move-result v4

    #@2b
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    #@2d
    if-ne v4, v5, :cond_2

    #@2f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@32
    move-result v4

    #@33
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    #@35
    if-eq v4, v5, :cond_3

    #@37
    .line 126
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@3a
    move-result v4

    #@3b
    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    #@3d
    .line 127
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@40
    move-result v4

    #@41
    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    #@43
    .line 129
    :cond_3
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/RedEyeFilter;->createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V

    #@46
    .line 132
    const/4 v4, 0x2

    #@47
    new-array v2, v4, [Landroid/filterfw/core/Frame;

    #@49
    const/4 v4, 0x0

    #@4a
    aput-object v0, v2, v4

    #@4c
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    #@4e
    const/4 v5, 0x1

    #@4f
    aput-object v4, v2, v5

    #@51
    .line 133
    .local v2, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@53
    invoke-virtual {v4, v2, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@56
    .line 136
    const-string/jumbo v4, "image"

    #@59
    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/RedEyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@5c
    .line 139
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@5f
    .line 142
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    #@61
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@64
    .line 143
    iput-object v6, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    #@66
    .line 111
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RedEyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 87
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RedEyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 85
    return-void
.end method

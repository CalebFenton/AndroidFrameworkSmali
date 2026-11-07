.class public Landroid/filterpacks/imageproc/RedEyeFilter;
.super Landroid/filterfw/core/Filter;
.source "RedEyeFilter.java"


# static fields
.field private static final blacklist DEFAULT_RED_INTENSITY:F = 1.3f

.field private static final blacklist MIN_RADIUS:F = 10.0f

.field private static final blacklist RADIUS_RATIO:F = 0.06f


# instance fields
.field private final blacklist mCanvas:Landroid/graphics/Canvas;

.field private blacklist mCenters:[F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "centers"
    .end annotation
.end field

.field private blacklist mHeight:I

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mRadius:F

.field private blacklist mRedEyeBitmap:Landroid/graphics/Bitmap;

.field private blacklist mRedEyeFrame:Landroid/filterfw/core/Frame;

.field private final blacklist mRedEyeShader:Ljava/lang/String;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 56
    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 59
    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    .line 61
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeShader:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private blacklist createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 154
    iget v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 155
    .local v0, "bitmapWidth":I
    iget v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 157
    .local v1, "bitmapHeight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    .local v2, "redEyeBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    .line 162
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    array-length v4, v4

    if-ge v3, v4, :cond_4a

    .line 163
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    aget v5, v5, v3

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    int-to-float v7, v1

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    iget-object v8, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v3, v3, 0x2

    goto :goto_2b

    .line 167
    .end local v3    # "i":I
    :cond_4a
    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 170
    .local v3, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    iput-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 171
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v4, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    return-void
.end method

.method private blacklist updateProgramParams()V
    .registers 3

    .line 176
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 179
    return-void

    .line 177
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The size of center array must be even."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 148
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 149
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RedEyeFilter;->updateProgramParams()V

    .line 151
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 92
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 96
    packed-switch p2, :pswitch_data_44

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter RedEye does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 99
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 100
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    iget-object v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "intensity"

    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    nop

    .line 107
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    .line 108
    return-void

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 113
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/RedEyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 114
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 117
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 120
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    if-eq v4, v5, :cond_26

    .line 121
    :cond_1f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 125
    :cond_26
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    if-ne v4, v5, :cond_36

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    if-eq v4, v5, :cond_42

    .line 126
    :cond_36
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 127
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 129
    :cond_42
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/RedEyeFilter;->createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V

    .line 132
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/filterfw/core/Frame;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    aput-object v6, v4, v5

    .line 133
    .local v4, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v4, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 136
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/RedEyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 139
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 142
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 144
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 86
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/RedEyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 87
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/RedEyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

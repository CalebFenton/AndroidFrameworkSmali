.class public Landroid/filterpacks/imageproc/BitmapOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "BitmapOverlayFilter.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private mFrame:Landroid/filterfw/core/Frame;

.field private final mOverlayShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    const/16 v0, 0x280

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    #@a
    .line 46
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    #@d
    .line 45
    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mOverlayShader:Ljava/lang/String;

    #@f
    .line 56
    return-void
.end method

.method private createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 127
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@6
    move-result v2

    #@7
    .line 128
    iget-object v3, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    #@c
    move-result v3

    #@d
    .line 127
    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@10
    move-result-object v0

    #@11
    .line 132
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@18
    move-result-object v1

    #@19
    .line 133
    .local v1, "frame":Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    #@1e
    .line 135
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@20
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    #@23
    .line 136
    const/4 v2, 0x0

    #@24
    iput-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@26
    .line 138
    return-object v1
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 68
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 72
    packed-switch p2, :pswitch_data_0

    #@3
    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter FisheyeFilter does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 81
    const-string/jumbo v3, "!"

    #@18
    .line 80
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
    .line 74
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 75
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 76
    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 83
    iput p2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    #@35
    .line 71
    return-void

    #@36
    .line 72
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
    .line 97
    const-string/jumbo v5, "image"

    #@3
    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v1

    #@7
    .line 98
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v2

    #@b
    .line 101
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v4

    #@13
    .line 104
    .local v4, "output":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v5

    #@1b
    iget v6, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    #@1d
    if-eq v5, v6, :cond_1

    #@1f
    .line 105
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v5

    #@23
    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 108
    :cond_1
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 109
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;

    #@2d
    move-result-object v0

    #@2e
    .line 111
    .local v0, "frame":Landroid/filterfw/core/Frame;
    const/4 v5, 0x2

    #@2f
    new-array v3, v5, [Landroid/filterfw/core/Frame;

    #@31
    const/4 v5, 0x0

    #@32
    aput-object v1, v3, v5

    #@34
    const/4 v5, 0x1

    #@35
    aput-object v0, v3, v5

    #@37
    .line 112
    .local v3, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    #@39
    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@3c
    .line 114
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@3f
    .line 120
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local v3    # "inputs":[Landroid/filterfw/core/Frame;
    :goto_0
    const-string/jumbo v5, "image"

    #@42
    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@45
    .line 123
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@48
    .line 95
    return-void

    #@49
    .line 116
    :cond_2
    invoke-virtual {v4, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@4c
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 63
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 61
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 89
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 90
    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    #@c
    .line 87
    :cond_0
    return-void
.end method

.class public Landroid/filterpacks/imageproc/SepiaFilter;
.super Landroid/filterfw/core/Filter;
.source "SepiaFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private final mSepiaShader:Ljava/lang/String;

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
    .line 48
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 31
    const/16 v0, 0x280

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTileSize:I

    #@7
    .line 34
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    #@a
    .line 37
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform mat3 matrix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = min(matrix * color.rgb, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@d
    .line 36
    iput-object v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mSepiaShader:Ljava/lang/String;

    #@f
    .line 47
    return-void
.end method

.method private initParameters()V
    .locals 3

    #@0
    .prologue
    .line 103
    const/16 v1, 0x9

    #@2
    new-array v0, v1, [F

    #@4
    .local v0, "weights":[F
    fill-array-data v0, :array_0

    #@7
    .line 106
    iget-object v1, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    #@9
    const-string/jumbo v2, "matrix"

    #@c
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 102
    return-void

    #@10
    .line 103
    :array_0
    .array-data 4
        0x3ec94000
        0x3eb2c000
        0x3e8b4000
        0x3f44e000
        0x3f2fa000
        0x3f092000
        0x3e418000
        0x3e2c0000    # 0.16796875f
        0x3e060000
    .end array-data
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 59
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 63
    packed-switch p2, :pswitch_data_0

    #@3
    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 72
    const-string/jumbo v3, "!"

    #@18
    .line 71
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
    .line 65
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform mat3 matrix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = min(matrix * color.rgb, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 66
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 67
    iput-object v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 74
    iput p2, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    #@35
    .line 62
    return-void

    #@36
    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 80
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SepiaFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 81
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 84
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 87
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SepiaFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 89
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SepiaFilter;->initParameters()V

    #@29
    .line 93
    :cond_1
    iget-object v3, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2b
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2e
    .line 96
    const-string/jumbo v3, "image"

    #@31
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SepiaFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@34
    .line 99
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@37
    .line 78
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SepiaFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 54
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SepiaFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 52
    return-void
.end method

.class public Landroid/filterpacks/imageproc/PosterizeFilter;
.super Landroid/filterfw/core/Filter;
.source "PosterizeFilter.java"


# instance fields
.field private final blacklist mPosterizeShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTileSize:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    .line 36
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 pcolor;\n  pcolor.r = (color.r >= 0.5) ? 0.75 : 0.25;\n  pcolor.g = (color.g >= 0.5) ? 0.75 : 0.25;\n  pcolor.b = (color.b >= 0.5) ? 0.75 : 0.25;\n  gl_FragColor = vec4(pcolor, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mPosterizeShader:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 61
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 65
    packed-switch p2, :pswitch_data_36

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

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

    .line 67
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 pcolor;\n  pcolor.r = (color.r >= 0.5) ? 0.75 : 0.25;\n  pcolor.g = (color.g >= 0.5) ? 0.75 : 0.25;\n  pcolor.b = (color.b >= 0.5) ? 0.75 : 0.25;\n  gl_FragColor = vec4(pcolor, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 68
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 69
    iput-object v0, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 70
    nop

    .line 76
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    .line 77
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/PosterizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 83
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 86
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 89
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    if-eq v4, v5, :cond_26

    .line 90
    :cond_1f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/PosterizeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 94
    :cond_26
    iget-object v4, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 97
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/PosterizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 100
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 101
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 55
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/PosterizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 56
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/PosterizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.class public Landroid/filterpacks/imageproc/SharpenFilter;
.super Landroid/filterfw/core/Filter;
.source "SharpenFilter.java"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final mSharpenShader:Ljava/lang/String;

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
    .line 69
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 31
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    #@7
    .line 34
    const/16 v0, 0x280

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    #@b
    .line 38
    iput v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    #@d
    .line 39
    iput v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    #@f
    .line 40
    iput v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    #@11
    .line 43
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    #@14
    .line 42
    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mSharpenShader:Ljava/lang/String;

    #@16
    .line 68
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    .line 128
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    #@4
    .line 129
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    #@6
    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 132
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@c
    const-string/jumbo v1, "stepsizeX"

    #@f
    iget v2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    #@11
    int-to-float v2, v2

    #@12
    div-float v2, v3, v2

    #@14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 133
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1d
    const-string/jumbo v1, "stepsizeY"

    #@20
    iget v2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    #@22
    int-to-float v2, v2

    #@23
    div-float v2, v3, v2

    #@25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 134
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    #@2f
    .line 127
    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 3

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    const-string/jumbo v1, "scale"

    #@5
    iget v2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    #@7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    .line 138
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    #@7
    .line 143
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 80
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    #@3
    .line 92
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
    .line 93
    const-string/jumbo v3, "!"

    #@18
    .line 92
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
    .line 86
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 87
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 88
    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 95
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    #@35
    .line 83
    return-void

    #@36
    .line 84
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
    .line 101
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SharpenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 102
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 105
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 108
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 109
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SharpenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 113
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    #@2c
    if-ne v3, v4, :cond_2

    #@2e
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@31
    move-result v3

    #@32
    iget v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    #@34
    if-eq v3, v4, :cond_3

    #@36
    .line 114
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@3d
    move-result v4

    #@3e
    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/SharpenFilter;->updateFrameSize(II)V

    #@41
    .line 118
    :cond_3
    iget-object v3, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@43
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@46
    .line 121
    const-string/jumbo v3, "image"

    #@49
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SharpenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@4c
    .line 124
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@4f
    .line 99
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SharpenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 75
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SharpenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 73
    return-void
.end method

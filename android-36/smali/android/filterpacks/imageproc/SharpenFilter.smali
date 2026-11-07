.class public Landroid/filterpacks/imageproc/SharpenFilter;
.super Landroid/filterfw/core/Filter;
.source "SharpenFilter.java"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final blacklist mSharpenShader:Ljava/lang/String;

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

    .line 69
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 39
    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 40
    iput v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    .line 42
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mSharpenShader:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private blacklist updateFrameSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 128
    iput p1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    .line 129
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_2e

    .line 132
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "stepsizeX"

    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "stepsizeY"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    .line 136
    :cond_2e
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 4

    .line 139
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 144
    iget-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 145
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SharpenFilter;->updateParameters()V

    .line 147
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 80
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 84
    packed-switch p2, :pswitch_data_36

    .line 92
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

    .line 86
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float stepsizeX;\nuniform float stepsizeY;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec3 nbr_color = vec3(0.0, 0.0, 0.0);\n  vec2 coord;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  coord.x = v_texcoord.x - 0.5 * stepsizeX;\n  coord.y = v_texcoord.y - stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x - stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y - 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  coord.x = v_texcoord.x + stepsizeX;\n  coord.y = v_texcoord.y + 0.5 * stepsizeY;\n  nbr_color += texture2D(tex_sampler_0, coord).rgb - color.rgb;\n  gl_FragColor = vec4(color.rgb - 2.0 * scale * nbr_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 87
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 88
    iput-object v0, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 89
    nop

    .line 95
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    .line 96
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

    .line 101
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/SharpenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 102
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 105
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 108
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mTarget:I

    if-eq v4, v5, :cond_26

    .line 109
    :cond_1f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/SharpenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 113
    :cond_26
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mWidth:I

    if-ne v4, v5, :cond_36

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mHeight:I

    if-eq v4, v5, :cond_41

    .line 114
    :cond_36
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/filterpacks/imageproc/SharpenFilter;->updateFrameSize(II)V

    .line 118
    :cond_41
    iget-object v4, p0, Landroid/filterpacks/imageproc/SharpenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 121
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/SharpenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 124
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 125
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 74
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/SharpenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/SharpenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

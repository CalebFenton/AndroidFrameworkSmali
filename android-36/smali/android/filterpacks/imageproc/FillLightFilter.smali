.class public Landroid/filterpacks/imageproc/FillLightFilter;
.super Landroid/filterfw/core/Filter;
.source "FillLightFilter.java"


# instance fields
.field private blacklist mBacklight:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

.field private final blacklist mFillLightShader:Ljava/lang/String;

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

    .line 62
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 42
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mFillLightShader:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 9

    .line 127
    const v0, 0x3e99999a    # 0.3f

    .line 128
    .local v0, "fade_gamma":F
    iget v1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 129
    .local v1, "amt":F
    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v3, v1

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v3, v4

    div-float v3, v2, v3

    .line 130
    .local v3, "mult":F
    sub-float v4, v2, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    .line 131
    .local v4, "faded":F
    div-float/2addr v2, v4

    .line 133
    .local v2, "igamma":F
    iget-object v5, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v6, "mult"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v5, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v6, "igamma"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 121
    iget-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 122
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    .line 124
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 73
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 77
    packed-switch p2, :pswitch_data_50

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter FillLight does not support frames of target "

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

    .line 79
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 80
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tile size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FillLight"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 83
    nop

    .line 89
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 90
    return-void

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 96
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FillLightFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 97
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 100
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 103
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    if-eq v4, v5, :cond_29

    .line 104
    :cond_1f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/FillLightFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 105
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    .line 109
    :cond_29
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/FillLightFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 115
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 116
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 67
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FillLightFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 68
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FillLightFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

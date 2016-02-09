.class public Landroid/filterpacks/imageproc/FillLightFilter;
.super Landroid/filterfw/core/Filter;
.source "FillLightFilter.java"


# instance fields
.field private mBacklight:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

.field private final mFillLightShader:Ljava/lang/String;

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
    .line 62
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 33
    const/16 v0, 0x280

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    #@7
    .line 36
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    #@a
    .line 40
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    #@d
    .line 43
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@10
    .line 42
    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mFillLightShader:Ljava/lang/String;

    #@12
    .line 61
    return-void
.end method

.method private updateParameters()V
    .locals 8

    #@0
    .prologue
    const v7, 0x3f333333    # 0.7f

    #@3
    const v6, 0x3e99999a    # 0.3f

    #@6
    const/high16 v5, 0x3f800000    # 1.0f

    #@8
    .line 128
    iget v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    #@a
    sub-float v0, v5, v4

    #@c
    .line 129
    .local v0, "amt":F
    mul-float v4, v0, v7

    #@e
    add-float/2addr v4, v6

    #@f
    div-float v3, v5, v4

    #@11
    .line 130
    .local v3, "mult":F
    mul-float v4, v7, v3

    #@13
    add-float v1, v6, v4

    #@15
    .line 131
    .local v1, "faded":F
    div-float v2, v5, v1

    #@17
    .line 133
    .local v2, "igamma":F
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@19
    const-string/jumbo v5, "mult"

    #@1c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 134
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@25
    const-string/jumbo v5, "igamma"

    #@28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 126
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 122
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    #@7
    .line 120
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 73
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    #@3
    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter FillLight does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 87
    const-string/jumbo v3, "!"

    #@18
    .line 86
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
    .line 79
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 80
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    const-string/jumbo v1, "FillLight"

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "tile size: "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget v3, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    #@4a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@4d
    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@4f
    .line 89
    iput p2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    #@51
    .line 76
    return-void

    #@52
    .line 77
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
    .line 96
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FillLightFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 97
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 100
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 103
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FillLightFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 105
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    #@29
    .line 109
    :cond_1
    iget-object v3, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2b
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2e
    .line 112
    const-string/jumbo v3, "image"

    #@31
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FillLightFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@34
    .line 115
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@37
    .line 94
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FillLightFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 68
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FillLightFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 66
    return-void
.end method

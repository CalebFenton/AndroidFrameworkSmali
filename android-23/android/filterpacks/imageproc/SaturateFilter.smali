.class public Landroid/filterpacks/imageproc/SaturateFilter;
.super Landroid/filterfw/core/Filter;
.source "SaturateFilter.java"


# instance fields
.field private mBenProgram:Landroid/filterfw/core/Program;

.field private final mBenSaturateShader:Ljava/lang/String;

.field private mHerfProgram:Landroid/filterfw/core/Program;

.field private final mHerfSaturateShader:Ljava/lang/String;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

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
    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 31
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@6
    .line 34
    const/16 v0, 0x280

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    #@a
    .line 38
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    #@d
    .line 41
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@10
    .line 40
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenSaturateShader:Ljava/lang/String;

    #@12
    .line 55
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    #@15
    .line 54
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfSaturateShader:Ljava/lang/String;

    #@17
    .line 70
    return-void
.end method

.method private initParameters()V
    .locals 5

    #@0
    .prologue
    .line 141
    const v0, 0x3b808081

    #@3
    .line 142
    .local v0, "shift":F
    const/4 v2, 0x3

    #@4
    new-array v1, v2, [F

    #@6
    .local v1, "weights":[F
    fill-array-data v1, :array_0

    #@9
    .line 144
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@b
    const-string/jumbo v3, "weights"

    #@e
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 145
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@13
    const-string/jumbo v3, "shift"

    #@16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    .line 147
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    #@1f
    const-string/jumbo v3, "weights"

    #@22
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@25
    .line 149
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    #@28
    .line 140
    return-void

    #@29
    .line 142
    nop

    #@2a
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method private updateParameters()V
    .locals 5

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 154
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@4
    const/4 v2, 0x0

    #@5
    cmpl-float v1, v1, v2

    #@7
    if-lez v1, :cond_0

    #@9
    .line 155
    const/4 v1, 0x3

    #@a
    new-array v0, v1, [F

    #@c
    .line 157
    .local v0, "exponents":[F
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@e
    const v2, 0x3f666666    # 0.9f

    #@11
    mul-float/2addr v1, v2

    #@12
    add-float/2addr v1, v4

    #@13
    const/4 v2, 0x0

    #@14
    aput v1, v0, v2

    #@16
    .line 158
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@18
    const v2, 0x40066666    # 2.1f

    #@1b
    mul-float/2addr v1, v2

    #@1c
    add-float/2addr v1, v4

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v1, v0, v2

    #@20
    .line 159
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@22
    const v2, 0x402ccccd    # 2.7f

    #@25
    mul-float/2addr v1, v2

    #@26
    add-float/2addr v1, v4

    #@27
    const/4 v2, 0x2

    #@28
    aput v1, v0, v2

    #@2a
    .line 161
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    #@2c
    const-string/jumbo v2, "exponents"

    #@2f
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@32
    .line 152
    .end local v0    # "exponents":[F
    :goto_0
    return-void

    #@33
    .line 163
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@35
    const-string/jumbo v2, "scale"

    #@38
    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@3a
    add-float/2addr v3, v4

    #@3b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@42
    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 108
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    #@b
    .line 106
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 82
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 86
    packed-switch p2, :pswitch_data_0

    #@3
    .line 99
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
    .line 100
    const-string/jumbo v3, "!"

    #@18
    .line 99
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
    .line 88
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 89
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@33
    .line 92
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@35
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    #@38
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@3b
    .line 93
    .restart local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    #@3d
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@40
    .line 94
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    #@42
    .line 102
    iput p2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    #@44
    .line 85
    return-void

    #@45
    .line 86
    nop

    #@46
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
    .line 115
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 116
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 119
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->initParameters()V

    #@21
    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@28
    move-result-object v2

    #@29
    .line 128
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    #@2b
    const/4 v4, 0x0

    #@2c
    cmpl-float v3, v3, v4

    #@2e
    if-lez v3, :cond_2

    #@30
    .line 129
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    #@32
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@35
    .line 134
    :goto_0
    const-string/jumbo v3, "image"

    #@38
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SaturateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@3b
    .line 137
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@3e
    .line 113
    return-void

    #@3f
    .line 131
    :cond_2
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    #@41
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@44
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 77
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 75
    return-void
.end method

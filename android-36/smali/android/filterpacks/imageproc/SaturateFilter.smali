.class public Landroid/filterpacks/imageproc/SaturateFilter;
.super Landroid/filterfw/core/Filter;
.source "SaturateFilter.java"


# instance fields
.field private blacklist mBenProgram:Landroid/filterfw/core/Program;

.field private final blacklist mBenSaturateShader:Ljava/lang/String;

.field private blacklist mHerfProgram:Landroid/filterfw/core/Program;

.field private final blacklist mHerfSaturateShader:Ljava/lang/String;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

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

    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 40
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenSaturateShader:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfSaturateShader:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private blacklist initParameters()V
    .registers 7

    .line 141
    const v0, 0x3b808081

    .line 142
    .local v0, "shift":F
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_26

    .line 144
    .local v1, "weights":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "weights"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "shift"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 150
    return-void

    :array_26
    .array-data 4
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method private blacklist updateParameters()V
    .registers 5

    .line 154
    iget v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_32

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 157
    .local v0, "exponents":[F
    const v2, 0x3f666666    # 0.9f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    const/4 v2, 0x0

    aput v3, v0, v2

    .line 158
    const v2, 0x40066666    # 2.1f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    const/4 v2, 0x1

    aput v3, v0, v2

    .line 159
    const v2, 0x402ccccd    # 2.7f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 161
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    const-string v2, "exponents"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .end local v0    # "exponents":[F
    goto :goto_41

    .line 163
    :cond_32
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    iget v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :goto_41
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_b

    .line 108
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 110
    :cond_b
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 82
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 86
    packed-switch p2, :pswitch_data_44

    .line 99
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

    .line 88
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 89
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 92
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 93
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    .local v1, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 94
    iput-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 96
    nop

    .line 102
    .end local v1    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 103
    return-void

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 115
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/SaturateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 116
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 119
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    if-eq v3, v4, :cond_21

    .line 120
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->initParameters()V

    .line 125
    :cond_21
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 128
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_36

    .line 129
    iget-object v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_3b

    .line 131
    :cond_36
    iget-object v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    :goto_3b
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 137
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 138
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 76
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/SaturateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 77
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

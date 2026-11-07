.class public Landroid/filterpacks/imageproc/ColorTemperatureFilter;
.super Landroid/filterfw/core/Filter;
.source "ColorTemperatureFilter.java"


# instance fields
.field private final blacklist mColorTemperatureShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/Program;

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

    .line 60
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mScale:F

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mTileSize:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mTarget:I

    .line 39
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = color.rgb;\n  new_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n  new_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n  if (scale > 0.0) { \n    new_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n  }\n  float max_value = max(new_color.r, max(new_color.g, new_color.b));\n  if (max_value > 1.0) { \n     new_color /= max_value;\n  } \n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mColorTemperatureShader:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 4

    .line 115
    iget-object v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mProgram:Landroid/filterfw/core/Program;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mScale:F

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 120
    iget-object v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->updateParameters()V

    .line 123
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 71
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 75
    packed-switch p2, :pswitch_data_36

    .line 83
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

    .line 77
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = color.rgb;\n  new_color.r = color.r + color.r * ( 1.0 - color.r) * scale;\n  new_color.b = color.b - color.b * ( 1.0 - color.b) * scale;\n  if (scale > 0.0) { \n    new_color.g = color.g + color.g * ( 1.0 - color.g) * scale * 0.25;\n  }\n  float max_value = max(new_color.r, max(new_color.g, new_color.b));\n  if (max_value > 1.0) { \n     new_color /= max_value;\n  } \n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 78
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 79
    iput-object v0, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    nop

    .line 86
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mTarget:I

    .line 87
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 92
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 93
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 96
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mTarget:I

    if-eq v3, v4, :cond_21

    .line 97
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 98
    invoke-direct {p0}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->updateParameters()V

    .line 102
    :cond_21
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 105
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 108
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 111
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 112
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ColorTemperatureFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

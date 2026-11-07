.class public Landroid/filterpacks/imageproc/CrossProcessFilter;
.super Landroid/filterfw/core/Filter;
.source "CrossProcessFilter.java"


# instance fields
.field private final blacklist mCrossProcessShader:Ljava/lang/String;

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

    .line 72
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTileSize:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    .line 37
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 ncolor = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (color.r < 0.5) {\n    value = color.r;\n  } else {\n    value = 1.0 - color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (color.r < 0.5) {\n    ncolor.r = red;\n  } else {\n    ncolor.r = 1.0 - red;\n  }\n  if (color.g < 0.5) {\n    value = color.g;\n  } else {\n    value = 1.0 - color.g;\n  }\n  float green = 2.0 * value * value;\n  if (color.g < 0.5) {\n    ncolor.g = green;\n  } else {\n    ncolor.g = 1.0 - green;\n  }\n  ncolor.b = color.b * 0.5 + 0.25;\n  gl_FragColor = vec4(ncolor.rgb, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mCrossProcessShader:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 83
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 87
    packed-switch p2, :pswitch_data_36

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter CrossProcess does not support frames of target "

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

    .line 89
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 ncolor = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (color.r < 0.5) {\n    value = color.r;\n  } else {\n    value = 1.0 - color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (color.r < 0.5) {\n    ncolor.r = red;\n  } else {\n    ncolor.r = 1.0 - red;\n  }\n  if (color.g < 0.5) {\n    value = color.g;\n  } else {\n    value = 1.0 - color.g;\n  }\n  float green = 2.0 * value * value;\n  if (color.g < 0.5) {\n    ncolor.g = green;\n  } else {\n    ncolor.g = 1.0 - green;\n  }\n  ncolor.b = color.b * 0.5 + 0.25;\n  gl_FragColor = vec4(ncolor.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 90
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 91
    iput-object v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 92
    nop

    .line 98
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    .line 99
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

    .line 104
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/CrossProcessFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 105
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 108
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    if-eq v3, v4, :cond_1e

    .line 109
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/CrossProcessFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 113
    :cond_1e
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 116
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 119
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/CrossProcessFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 122
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 123
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 77
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/CrossProcessFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 78
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/CrossProcessFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

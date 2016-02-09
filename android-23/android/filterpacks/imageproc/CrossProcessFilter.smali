.class public Landroid/filterpacks/imageproc/CrossProcessFilter;
.super Landroid/filterfw/core/Filter;
.source "CrossProcessFilter.java"


# instance fields
.field private final mCrossProcessShader:Ljava/lang/String;

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
    .line 72
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 31
    const/16 v0, 0x280

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTileSize:I

    #@7
    .line 35
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    #@a
    .line 38
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 ncolor = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (color.r < 0.5) {\n    value = color.r;\n  } else {\n    value = 1.0 - color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (color.r < 0.5) {\n    ncolor.r = red;\n  } else {\n    ncolor.r = 1.0 - red;\n  }\n  if (color.g < 0.5) {\n    value = color.g;\n  } else {\n    value = 1.0 - color.g;\n  }\n  float green = 2.0 * value * value;\n  if (color.g < 0.5) {\n    ncolor.g = green;\n  } else {\n    ncolor.g = 1.0 - green;\n  }\n  ncolor.b = color.b * 0.5 + 0.25;\n  gl_FragColor = vec4(ncolor.rgb, color.a);\n}\n"

    #@d
    .line 37
    iput-object v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mCrossProcessShader:Ljava/lang/String;

    #@f
    .line 71
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 83
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 87
    packed-switch p2, :pswitch_data_0

    #@3
    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter CrossProcess does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 96
    const-string/jumbo v3, "!"

    #@18
    .line 95
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
    .line 89
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 ncolor = vec3(0.0, 0.0, 0.0);\n  float value;\n  if (color.r < 0.5) {\n    value = color.r;\n  } else {\n    value = 1.0 - color.r;\n  }\n  float red = 4.0 * value * value * value;\n  if (color.r < 0.5) {\n    ncolor.r = red;\n  } else {\n    ncolor.r = 1.0 - red;\n  }\n  if (color.g < 0.5) {\n    value = color.g;\n  } else {\n    value = 1.0 - color.g;\n  }\n  float green = 2.0 * value * value;\n  if (color.g < 0.5) {\n    ncolor.g = green;\n  } else {\n    ncolor.g = 1.0 - green;\n  }\n  ncolor.b = color.b * 0.5 + 0.25;\n  gl_FragColor = vec4(ncolor.rgb, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 90
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 91
    iput-object v0, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 98
    iput p2, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    #@35
    .line 86
    return-void

    #@36
    .line 87
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
    .line 104
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/CrossProcessFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 105
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 108
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 109
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/CrossProcessFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@25
    move-result-object v2

    #@26
    .line 116
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/CrossProcessFilter;->mProgram:Landroid/filterfw/core/Program;

    #@28
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2b
    .line 119
    const-string/jumbo v3, "image"

    #@2e
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/CrossProcessFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@31
    .line 122
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@34
    .line 102
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 77
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CrossProcessFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 78
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CrossProcessFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 76
    return-void
.end method

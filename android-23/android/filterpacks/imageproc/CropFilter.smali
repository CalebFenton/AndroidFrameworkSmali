.class public Landroid/filterpacks/imageproc/CropFilter;
.super Landroid/filterfw/core/Filter;
.source "CropFilter.java"


# instance fields
.field private mFillBlack:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "fillblack"
    .end annotation
.end field

.field private final mFragShader:Ljava/lang/String;

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 38
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@7
    .line 41
    iput v1, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    #@9
    .line 44
    iput v1, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    #@b
    .line 47
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    #@e
    .line 54
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@11
    .line 53
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFragShader:Ljava/lang/String;

    #@13
    .line 49
    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    return-void

    #@12
    .line 90
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@14
    .line 91
    iput-object v2, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@16
    .line 92
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@19
    move-result v0

    #@1a
    packed-switch v0, :pswitch_data_0

    #@1d
    .line 101
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Could not create a program for crop filter "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "!"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 94
    :pswitch_0
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    #@44
    if-eqz v0, :cond_1

    #@46
    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@48
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@4b
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@4e
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@50
    goto :goto_0

    #@51
    .line 97
    :cond_1
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@57
    goto :goto_0

    #@58
    .line 87
    :cond_2
    return-void

    #@59
    .line 92
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 83
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@8
    .line 84
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 109
    const-string/jumbo v6, "image"

    #@4
    invoke-virtual {p0, v6}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v2

    #@8
    .line 110
    .local v2, "imageFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v6, "box"

    #@b
    invoke-virtual {p0, v6}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v1

    #@f
    .line 112
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {p0, p1, v6}, Landroid/filterpacks/imageproc/CropFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    #@16
    .line 115
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/filterfw/geometry/Quad;

    #@1c
    .line 118
    .local v0, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@23
    move-result-object v4

    #@24
    .line 119
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    #@26
    if-ne v6, v8, :cond_1

    #@28
    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    #@2b
    move-result v6

    #@2c
    .line 120
    :goto_0
    iget v7, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    #@2e
    if-ne v7, v8, :cond_2

    #@30
    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    #@33
    move-result v7

    #@34
    .line 119
    :goto_1
    invoke-virtual {v4, v6, v7}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@37
    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@3e
    move-result-object v3

    #@3f
    .line 126
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@41
    instance-of v6, v6, Landroid/filterfw/core/ShaderProgram;

    #@43
    if-eqz v6, :cond_0

    #@45
    .line 127
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@47
    check-cast v5, Landroid/filterfw/core/ShaderProgram;

    #@49
    .line 128
    .local v5, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    invoke-virtual {v5, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@4c
    .line 131
    .end local v5    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    :cond_0
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    #@4e
    invoke-virtual {v6, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@51
    .line 134
    const-string/jumbo v6, "image"

    #@54
    invoke-virtual {p0, v6, v3}, Landroid/filterpacks/imageproc/CropFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@57
    .line 137
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@5a
    .line 107
    return-void

    #@5b
    .line 119
    .end local v3    # "output":Landroid/filterfw/core/Frame;
    :cond_1
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    #@5d
    goto :goto_0

    #@5e
    .line 120
    :cond_2
    iget v7, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    #@60
    goto :goto_1
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 74
    const-string/jumbo v0, "box"

    #@e
    const-class v1, Landroid/filterfw/geometry/Quad;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 75
    const-string/jumbo v0, "image"

    #@1b
    const-string/jumbo v1, "image"

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 72
    return-void
.end method

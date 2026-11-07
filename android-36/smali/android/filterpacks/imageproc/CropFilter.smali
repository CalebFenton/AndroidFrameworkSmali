.class public Landroid/filterpacks/imageproc/CropFilter;
.super Landroid/filterfw/core/Filter;
.source "CropFilter.java"


# instance fields
.field private blacklist mFillBlack:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "fillblack"
    .end annotation
.end field

.field private final blacklist mFragShader:Ljava/lang/String;

.field private blacklist mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private blacklist mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    .line 43
    iput v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    .line 53
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFragShader:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected blacklist createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 89
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_11

    return-void

    .line 90
    :cond_11
    iput-object p2, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 92
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_33

    .line 94
    :pswitch_1e
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    if-eqz v0, :cond_2d

    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_33

    .line 97
    :cond_2d
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    :goto_33
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_38

    .line 104
    return-void

    .line 102
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a program for crop filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_1e
    .end packed-switch
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 82
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 83
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 10
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 109
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 110
    .local v1, "imageFrame":Landroid/filterfw/core/Frame;
    const-string v2, "box"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 112
    .local v2, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/CropFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 115
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/geometry/Quad;

    .line 118
    .local v3, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 119
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2c

    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v5

    goto :goto_2e

    :cond_2c
    iget v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    .line 120
    :goto_2e
    iget v7, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    if-ne v7, v6, :cond_37

    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v6

    goto :goto_39

    :cond_37
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    .line 119
    :goto_39
    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 126
    .local v5, "output":Landroid/filterfw/core/Frame;
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    instance-of v6, v6, Landroid/filterfw/core/ShaderProgram;

    if-eqz v6, :cond_51

    .line 127
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v6, Landroid/filterfw/core/ShaderProgram;

    .line 128
    .local v6, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    invoke-virtual {v6, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 131
    .end local v6    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    :cond_51
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v6, v1, v5}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    invoke-virtual {p0, v0, v5}, Landroid/filterpacks/imageproc/CropFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 137
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 138
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 4

    .line 73
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 74
    const-class v0, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v2, "box"

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 75
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/CropFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

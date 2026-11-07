.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 55
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 15
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 60
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 61
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v2, :cond_f

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 63
    return-void

    .line 65
    :cond_f
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 68
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v3, :cond_1d

    .line 69
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 71
    :cond_1d
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 72
    .local v3, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    .line 73
    .local v4, "width":I
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    .line 74
    .local v5, "height":I
    new-instance v6, Landroid/filterfw/geometry/Point;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 75
    .local v6, "p1":Landroid/filterfw/geometry/Point;
    new-instance v8, Landroid/filterfw/geometry/Point;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 76
    .local v8, "p2":Landroid/filterfw/geometry/Point;
    new-instance v10, Landroid/filterfw/geometry/Point;

    invoke-direct {v10, v7, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 77
    .local v10, "p3":Landroid/filterfw/geometry/Point;
    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 79
    .local v7, "p4":Landroid/filterfw/geometry/Point;
    iget v9, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v9, v9

    const/high16 v11, 0x42b40000    # 90.0f

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    packed-switch v9, :pswitch_data_86

    .line 93
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v6, v8, v10, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .local v9, "sourceRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_6d

    .line 88
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_55
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v8, v7, v6, v10}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 89
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v3, v5, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 90
    goto :goto_6d

    .line 85
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_5e
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v7, v10, v8, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 86
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_6d

    .line 81
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_64
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v10, v6, v7, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 82
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v3, v5, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 83
    nop

    .line 97
    :goto_6d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    .line 100
    .local v11, "output":Landroid/filterfw/core/Frame;
    iget-object v12, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 103
    iget-object v12, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v12, v1, v11}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {p0, v0, v11}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 110
    return-void

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5e
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 48
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 50
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

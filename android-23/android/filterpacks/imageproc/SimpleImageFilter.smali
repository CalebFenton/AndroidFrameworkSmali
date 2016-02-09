.class public abstract Landroid/filterpacks/imageproc/SimpleImageFilter;
.super Landroid/filterfw/core/Filter;
.source "SimpleImageFilter.java"


# instance fields
.field protected mCurrentTarget:I

.field protected mParameterName:Ljava/lang/String;

.field protected mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    #@6
    .line 40
    iput-object p2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    #@8
    .line 38
    return-void
.end method


# virtual methods
.method protected abstract getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 59
    return-object p2
.end method

.method protected abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 65
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 66
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 69
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 72
    .local v2, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@16
    move-result v3

    #@17
    invoke-virtual {p0, v3, p1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    #@1a
    .line 75
    iget-object v3, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1c
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1f
    .line 78
    const-string/jumbo v3, "image"

    #@22
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@25
    .line 81
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@28
    .line 63
    return-void
.end method

.method public setupPorts()V
    .locals 7

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 47
    :try_start_0
    const-class v0, Landroid/filterpacks/imageproc/SimpleImageFilter;

    #@6
    const-string/jumbo v1, "mProgram"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v3

    #@d
    .line 48
    .local v3, "programField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    #@f
    iget-object v2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    #@11
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@13
    const/4 v5, 0x0

    #@14
    move-object v0, p0

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 53
    .end local v3    # "programField":Ljava/lang/reflect/Field;
    :cond_0
    const-string/jumbo v0, "image"

    #@1b
    const/4 v1, 0x3

    #@1c
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@23
    .line 54
    const-string/jumbo v0, "image"

    #@26
    const-string/jumbo v1, "image"

    #@29
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 44
    return-void

    #@2d
    .line 49
    :catch_0
    move-exception v6

    #@2e
    .line 50
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@30
    const-string/jumbo v1, "Internal Error: mProgram field not found!"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method protected updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    iget v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    #@3
    if-eq p1, v0, :cond_1

    #@5
    .line 86
    packed-switch p1, :pswitch_data_0

    #@8
    .line 96
    iput-object v1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@a
    .line 99
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Could not create a program for image filter "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "!"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 88
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@35
    goto :goto_0

    #@36
    .line 92
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3c
    goto :goto_0

    #@3d
    .line 102
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3f
    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    #@42
    .line 103
    iput p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    #@44
    .line 84
    :cond_1
    return-void

    #@45
    .line 86
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

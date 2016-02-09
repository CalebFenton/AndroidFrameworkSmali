.class public Landroid/filterfw/core/SimpleFrameManager;
.super Landroid/filterfw/core/FrameManager;
.source "SimpleFrameManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/filterfw/core/FrameManager;-><init>()V

    #@3
    return-void
.end method

.method private createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 60
    const/4 v1, 0x0

    #@1
    .line 61
    .local v1, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@4
    move-result v2

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 83
    new-instance v2, Ljava/lang/RuntimeException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Unsupported frame target type: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 84
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@19
    move-result v4

    #@1a
    invoke-static {v4}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 84
    const-string/jumbo v4, "!"

    #@25
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 63
    :pswitch_0
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    #@33
    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@36
    .line 86
    .local v1, "result":Landroid/filterfw/core/Frame;
    :goto_0
    return-object v1

    #@37
    .line 67
    .local v1, "result":Landroid/filterfw/core/Frame;
    :pswitch_1
    new-instance v1, Landroid/filterfw/core/NativeFrame;

    #@39
    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/NativeFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3c
    .line 68
    .local v1, "result":Landroid/filterfw/core/Frame;
    goto :goto_0

    #@3d
    .line 71
    .local v1, "result":Landroid/filterfw/core/Frame;
    :pswitch_2
    new-instance v0, Landroid/filterfw/core/GLFrame;

    #@3f
    invoke-direct {v0, p1, p0}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@42
    .line 72
    .local v0, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    #@49
    .line 73
    move-object v1, v0

    #@4a
    .line 74
    .local v1, "result":Landroid/filterfw/core/Frame;
    goto :goto_0

    #@4b
    .line 78
    .end local v0    # "glFrame":Landroid/filterfw/core/GLFrame;
    .local v1, "result":Landroid/filterfw/core/Frame;
    :pswitch_3
    new-instance v1, Landroid/filterfw/core/VertexFrame;

    #@4d
    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/VertexFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@50
    .line 79
    .local v1, "result":Landroid/filterfw/core/Frame;
    goto :goto_0

    #@51
    .line 61
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 7
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    #@0
    .prologue
    .line 43
    const/4 v6, 0x0

    #@1
    .line 44
    .local v6, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Attached frames are not supported for target type: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 54
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@19
    move-result v3

    #@1a
    invoke-static {v3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 54
    const-string/jumbo v3, "!"

    #@25
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 46
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/GLFrame;

    #@33
    move-object v1, p1

    #@34
    move-object v2, p0

    #@35
    move v3, p2

    #@36
    move-wide v4, p3

    #@37
    invoke-direct/range {v0 .. v5}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    #@3a
    .line 47
    .local v0, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    #@41
    .line 48
    move-object v6, v0

    #@42
    .line 56
    .local v6, "result":Landroid/filterfw/core/Frame;
    return-object v6

    #@43
    .line 44
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    #@3
    move-result v0

    #@4
    .line 98
    .local v0, "refCount":I
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    #@f
    .line 100
    const/4 v1, 0x0

    #@10
    return-object v1

    #@11
    .line 101
    :cond_0
    if-gez v0, :cond_1

    #@13
    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v2, "Frame reference count dropped below 0!"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 104
    :cond_1
    return-object p1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->incRefCount()I

    #@3
    .line 92
    return-object p1
.end method

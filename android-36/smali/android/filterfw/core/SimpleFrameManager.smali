.class public Landroid/filterfw/core/SimpleFrameManager;
.super Landroid/filterfw/core/FrameManager;
.source "SimpleFrameManager.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/filterfw/core/FrameManager;-><init>()V

    .line 34
    return-void
.end method

.method private greylist-max-o createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .registers 6
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported frame target type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-static {v3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_2f
    new-instance v1, Landroid/filterfw/core/VertexFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/VertexFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 79
    .end local v0    # "result":Landroid/filterfw/core/Frame;
    .local v1, "result":Landroid/filterfw/core/Frame;
    goto :goto_4f

    .line 71
    .end local v1    # "result":Landroid/filterfw/core/Frame;
    .restart local v0    # "result":Landroid/filterfw/core/Frame;
    :pswitch_35
    new-instance v1, Landroid/filterfw/core/GLFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 72
    .local v1, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    .line 73
    move-object v0, v1

    .line 74
    goto :goto_4f

    .line 67
    .end local v1    # "glFrame":Landroid/filterfw/core/GLFrame;
    :pswitch_43
    new-instance v1, Landroid/filterfw/core/NativeFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/NativeFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 68
    .end local v0    # "result":Landroid/filterfw/core/Frame;
    .local v1, "result":Landroid/filterfw/core/Frame;
    goto :goto_4f

    .line 63
    .end local v1    # "result":Landroid/filterfw/core/Frame;
    .restart local v0    # "result":Landroid/filterfw/core/Frame;
    :pswitch_49
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 64
    .end local v0    # "result":Landroid/filterfw/core/Frame;
    .restart local v1    # "result":Landroid/filterfw/core/Frame;
    nop

    .line 86
    :goto_4f
    return-object v1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_35
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .registers 13
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 53
    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    .end local p1    # "format":Landroid/filterfw/core/FrameFormat;
    .end local p2    # "bindingType":I
    .end local p3    # "bindingId":J
    .local v3, "format":Landroid/filterfw/core/FrameFormat;
    .local v5, "bindingType":I
    .local v6, "bindingId":J
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attached frames are not supported for target type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 54
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result p3

    invoke-static {p3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    .end local v3    # "format":Landroid/filterfw/core/FrameFormat;
    .end local v5    # "bindingType":I
    .end local v6    # "bindingId":J
    .restart local p1    # "format":Landroid/filterfw/core/FrameFormat;
    .restart local p2    # "bindingType":I
    .restart local p3    # "bindingId":J
    :pswitch_32
    new-instance v2, Landroid/filterfw/core/GLFrame;

    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    .end local p1    # "format":Landroid/filterfw/core/FrameFormat;
    .end local p2    # "bindingType":I
    .end local p3    # "bindingId":J
    .restart local v3    # "format":Landroid/filterfw/core/FrameFormat;
    .restart local v5    # "bindingType":I
    .restart local v6    # "bindingId":J
    invoke-direct/range {v2 .. v7}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    .line 47
    .local v2, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    .line 48
    move-object p1, v2

    .line 49
    .end local v0    # "result":Landroid/filterfw/core/Frame;
    .local p1, "result":Landroid/filterfw/core/Frame;
    nop

    .line 56
    .end local v2    # "glFrame":Landroid/filterfw/core/GLFrame;
    return-object p1

    nop

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_32
    .end packed-switch
.end method

.method public greylist-max-o newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .registers 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 97
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    .line 98
    .local v0, "refCount":I
    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_11
    if-ltz v0, :cond_14

    .line 104
    return-object p1

    .line 102
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 91
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->incRefCount()I

    .line 92
    return-object p1
.end method

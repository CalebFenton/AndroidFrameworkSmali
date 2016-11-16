.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSession"


# instance fields
.field private final mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private volatile mAborting:Z

.field private mClosed:Z

.field private final mConfigureSuccess:Z

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final mId:I

.field private final mIdString:Ljava/lang/String;

.field private final mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final mInput:Landroid/view/Surface;

.field private final mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipUnconfigure:Z

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V
    .locals 0
    .param p1, "sequenceId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finishPendingSequence(I)V

    #@3
    return-void
.end method

.method constructor <init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "input"    # Landroid/view/Surface;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "stateHandler"    # Landroid/os/Handler;
    .param p6, "deviceImpl"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p7, "deviceStateHandler"    # Landroid/os/Handler;
    .param p8, "configureSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/Surface;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 90
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    #@6
    .line 74
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@8
    .line 78
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    #@a
    .line 94
    if-eqz p3, :cond_0

    #@c
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "outputs must be a non-null, non-empty list"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 96
    :cond_1
    if-nez p4, :cond_2

    #@1d
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "callback must not be null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 100
    :cond_2
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@28
    .line 101
    const-string/jumbo v0, "Session %d: "

    #@2b
    new-array v1, v6, [Ljava/lang/Object;

    #@2d
    iget v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v5

    #@35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@3b
    .line 104
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mOutputs:Ljava/util/List;

    #@3d
    .line 105
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    #@3f
    .line 106
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    #@45
    .line 107
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    #@47
    invoke-direct {p0, v0, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@4d
    .line 109
    const-string/jumbo v0, "deviceStateHandler must not be null"

    #@50
    invoke-static {p7, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Landroid/os/Handler;

    #@56
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@58
    .line 110
    const-string/jumbo v0, "deviceImpl must not be null"

    #@5b
    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@61
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@63
    .line 118
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    #@65
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@67
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    #@69
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;)V

    #@6c
    .line 119
    const-string/jumbo v3, "seq"

    #@6f
    .line 118
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@72
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@74
    .line 120
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@76
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@78
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    #@7a
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;)V

    #@7d
    .line 121
    const-string/jumbo v3, "idle"

    #@80
    .line 120
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@83
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@85
    .line 122
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@87
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@89
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    #@8b
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;)V

    #@8e
    .line 123
    const-string/jumbo v3, "abort"

    #@91
    .line 122
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@94
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@96
    .line 127
    if-eqz p8, :cond_3

    #@98
    .line 128
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@9a
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@9d
    .line 130
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    #@9f
    .line 93
    :goto_0
    return-void

    #@a0
    .line 132
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@a2
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@a5
    .line 133
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@a7
    .line 134
    const-string/jumbo v0, "CameraCaptureSession"

    #@aa
    new-instance v1, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    const-string/jumbo v2, "Failed to create capture session; configuration failed"

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 135
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    #@c5
    goto :goto_0
.end method

.method private addPendingSequence(I)I
    .locals 2
    .param p1, "sequenceId"    # I

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    #@9
    .line 642
    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    #@0
    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 628
    const-string/jumbo v1, "Session has been closed; further changes are illegal."

    #@9
    .line 627
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 625
    :cond_0
    return-void
.end method

.method private createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 459
    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    #@3
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    #@6
    .line 480
    .local v3, "localCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    if-nez p2, :cond_0

    #@8
    .line 484
    return-object v3

    #@9
    .line 488
    :cond_0
    new-instance v4, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@b
    invoke-direct {v4, v3}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@e
    .line 491
    .local v4, "localSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    new-instance v6, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@10
    invoke-direct {v6, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@13
    .line 493
    .local v6, "userCallbackSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v2, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@15
    invoke-direct {v2, v6, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    #@18
    .line 495
    .local v2, "handlerPassthrough":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v1, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;

    #@1a
    const-class v7, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    #@1c
    invoke-direct {v1, v2, v7}, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@1f
    .line 497
    .local v1, "duckToSession":Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;, "Landroid/hardware/camera2/dispatch/DuckTypingDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v5, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;

    #@21
    invoke-direct {v5, v1, v8, p0}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V

    #@24
    .line 501
    .local v5, "replaceDeviceWithSession":Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;, "Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;

    #@26
    const/4 v7, 0x2

    #@27
    new-array v7, v7, [Landroid/hardware/camera2/dispatch/Dispatchable;

    #@29
    .line 502
    aput-object v5, v7, v8

    #@2b
    .line 503
    const/4 v8, 0x1

    #@2c
    aput-object v4, v7, v8

    #@2e
    .line 501
    invoke-direct {v0, v7}, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;-><init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V

    #@31
    .line 505
    .local v0, "broadcaster":Landroid/hardware/camera2/dispatch/BroadcastDispatcher;, "Landroid/hardware/camera2/dispatch/BroadcastDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    new-instance v7, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;

    #@33
    invoke-direct {v7, v0}, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    #@36
    return-object v7
.end method

.method private createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@0
    .prologue
    .line 439
    new-instance v1, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@2
    invoke-direct {v1, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@5
    .line 441
    .local v1, "userCallbackSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@7
    invoke-direct {v0, v1, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    #@a
    .line 443
    .local v0, "handlerPassthrough":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v2, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    #@c
    invoke-direct {v2, v0}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    #@f
    return-object v2
.end method

.method private finishPendingSequence(I)V
    .locals 3
    .param p1, "sequenceId"    # I

    #@0
    .prologue
    .line 653
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 651
    :goto_0
    return-void

    #@a
    .line 654
    :catch_0
    move-exception v0

    #@b
    .line 656
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "CameraCaptureSession"

    #@e
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    goto :goto_0
.end method


# virtual methods
.method public abortCaptures()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@4
    .line 297
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 298
    const-string/jumbo v0, "CameraCaptureSession"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "abortCaptures - Session is already aborting; doing nothing"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 299
    return-void

    #@26
    .line 302
    :cond_0
    const/4 v0, 0x1

    #@27
    :try_start_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@29
    .line 303
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@2b
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@31
    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@33
    monitor-enter v1

    #@34
    .line 307
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@35
    .line 308
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@37
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3b
    monitor-exit v1

    #@3c
    .line 289
    return-void

    #@3d
    .line 290
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit p0

    #@3f
    throw v0

    #@40
    .line 307
    :catchall_1
    move-exception v0

    #@41
    :try_start_5
    monitor-exit p0

    #@42
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@43
    .line 306
    :catchall_2
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method

.method public declared-synchronized capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 168
    if-nez p1, :cond_0

    #@3
    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "request must not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    #@24
    move-result v0

    #@25
    iget v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@27
    if-eq v0, v1, :cond_3

    #@29
    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v1, "capture request was created for another session"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "this capture session cannot handle reprocess requests"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 177
    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@3e
    .line 179
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@41
    move-result-object p3

    #@42
    .line 186
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@44
    .line 187
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@4a
    .line 186
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    #@4d
    move-result v0

    #@4e
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    move-result v0

    #@52
    monitor-exit p0

    #@53
    return v0
.end method

.method public declared-synchronized captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 5
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    monitor-enter p0

    #@1
    .line 193
    if-nez p1, :cond_0

    #@3
    .line 194
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "Requests must not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v2

    #@d
    monitor-exit p0

    #@e
    throw v2

    #@f
    .line 195
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v3, "Requests must have at least one element"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 199
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "request$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_4

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@2e
    .line 200
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 201
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3

    #@3a
    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v3, "This capture session cannot handle reprocess requests"

    #@3f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 204
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    #@46
    move-result v2

    #@47
    iget v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@49
    if-eq v2, v3, :cond_2

    #@4b
    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v3, "Capture request was created for another session"

    #@50
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 211
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@57
    .line 213
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@5a
    move-result-object p3

    #@5b
    .line 221
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@5d
    .line 222
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@60
    move-result-object v3

    #@61
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@63
    .line 221
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    #@66
    move-result v2

    #@67
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    move-result v2

    #@6b
    monitor-exit p0

    #@6c
    return v2
.end method

.method public close()V
    .locals 6

    #@0
    .prologue
    .line 371
    monitor-enter p0

    #@1
    .line 372
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 374
    return-void

    #@7
    .line 379
    :cond_0
    const/4 v2, 0x1

    #@8
    :try_start_1
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 382
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@d
    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 383
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@11
    .line 395
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@13
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@17
    monitor-exit v3

    #@18
    .line 415
    monitor-enter p0

    #@19
    .line 417
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@1b
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@1e
    monitor-exit p0

    #@1f
    .line 370
    return-void

    #@20
    .line 371
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2

    #@23
    .line 406
    :catch_0
    move-exception v0

    #@24
    .line 408
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6
    const-string/jumbo v2, "CameraCaptureSession"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "Exception while stopping repeating: "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@40
    goto :goto_0

    #@41
    .line 383
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_1
    move-exception v2

    #@42
    :try_start_7
    monitor-exit p0

    #@43
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@44
    .line 382
    :catchall_2
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2

    #@47
    .line 396
    :catch_1
    move-exception v1

    #@48
    .line 404
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@4a
    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@4d
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@4e
    monitor-exit v3

    #@4f
    .line 405
    return-void

    #@50
    .line 415
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_3
    move-exception v2

    #@51
    monitor-exit p0

    #@52
    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 621
    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    #@6
    .line 617
    return-void

    #@7
    .line 620
    :catchall_0
    move-exception v0

    #@8
    .line 621
    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    #@b
    .line 620
    throw v0
.end method

.method public finishDeferredConfiguration(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    .local p1, "deferredOutputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->finishDeferredConfig(Ljava/util/List;)V

    #@5
    .line 161
    return-void
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 2

    #@0
    .prologue
    .line 521
    move-object v0, p0

    #@1
    .line 523
    .local v0, "session":Landroid/hardware/camera2/CameraCaptureSession;
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    #@3
    invoke-direct {v1, p0, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    #@6
    return-object v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    #@0
    .prologue
    .line 432
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@2
    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(ILandroid/view/Surface;)V

    #@5
    .line 150
    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    #@5
    .line 145
    return-void
.end method

.method public replaceSessionClose()V
    .locals 1

    #@0
    .prologue
    .line 340
    monitor-enter p0

    #@1
    .line 364
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 366
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    #@8
    .line 339
    return-void

    #@9
    .line 340
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 5
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    monitor-enter p0

    #@1
    .line 250
    if-nez p1, :cond_0

    #@3
    .line 251
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "requests must not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v2

    #@d
    monitor-exit p0

    #@e
    throw v2

    #@f
    .line 252
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v3, "requests must have at least one element"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 256
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_3

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@2e
    .line 257
    .local v0, "r":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v3, "repeating reprocess burst requests are not supported"

    #@39
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 263
    .end local v0    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@40
    .line 265
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@43
    move-result-object p3

    #@44
    .line 273
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@46
    .line 274
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@49
    move-result-object v3

    #@4a
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@4c
    .line 273
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    #@4f
    move-result v2

    #@50
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    move-result v2

    #@54
    monitor-exit p0

    #@55
    return v2
.end method

.method public declared-synchronized setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 228
    if-nez p1, :cond_0

    #@3
    .line 229
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "request must not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 230
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "repeating reprocess requests are not supported"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 234
    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@21
    .line 236
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@24
    move-result-object p3

    #@25
    .line 243
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@27
    .line 244
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@2d
    .line 243
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    #@30
    move-result v0

    #@31
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v0

    #@35
    monitor-exit p0

    #@36
    return v0
.end method

.method public declared-synchronized stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@4
    .line 285
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@6
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 278
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    #@5
    .line 155
    return-void
.end method

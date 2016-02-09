.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;
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
    .line 89
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    #@6
    .line 73
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@8
    .line 77
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    #@a
    .line 93
    if-eqz p3, :cond_0

    #@c
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "outputs must be a non-null, non-empty list"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 95
    :cond_1
    if-nez p4, :cond_2

    #@1d
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "callback must not be null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 99
    :cond_2
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@28
    .line 100
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
    .line 103
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mOutputs:Ljava/util/List;

    #@3d
    .line 104
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    #@3f
    .line 105
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    #@45
    .line 106
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    #@47
    invoke-direct {p0, v0, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@4d
    .line 108
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
    .line 109
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
    .line 117
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    #@65
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@67
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    #@69
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;)V

    #@6c
    .line 118
    const-string/jumbo v3, "seq"

    #@6f
    .line 117
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@72
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@74
    .line 119
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@76
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@78
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    #@7a
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;)V

    #@7d
    .line 120
    const-string/jumbo v3, "idle"

    #@80
    .line 119
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@83
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@85
    .line 121
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@87
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@89
    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    #@8b
    invoke-direct {v2, p0, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;)V

    #@8e
    .line 122
    const-string/jumbo v3, "abort"

    #@91
    .line 121
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@94
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@96
    .line 126
    if-eqz p8, :cond_3

    #@98
    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@9a
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@9d
    .line 129
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    #@9f
    .line 92
    :goto_0
    return-void

    #@a0
    .line 131
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@a2
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    #@a5
    .line 132
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@a7
    .line 133
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
    .line 134
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    #@c5
    goto :goto_0
.end method

.method private addPendingSequence(I)I
    .locals 2
    .param p1, "sequenceId"    # I

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    #@9
    .line 616
    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    #@0
    .prologue
    .line 600
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 602
    const-string/jumbo v1, "Session has been closed; further changes are illegal."

    #@9
    .line 601
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 599
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
    .line 433
    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    #@3
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    #@6
    .line 454
    .local v3, "localCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    if-nez p2, :cond_0

    #@8
    .line 458
    return-object v3

    #@9
    .line 462
    :cond_0
    new-instance v4, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@b
    invoke-direct {v4, v3}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@e
    .line 465
    .local v4, "localSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    new-instance v6, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@10
    invoke-direct {v6, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@13
    .line 467
    .local v6, "userCallbackSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v2, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@15
    invoke-direct {v2, v6, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    #@18
    .line 469
    .local v2, "handlerPassthrough":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v1, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;

    #@1a
    const-class v7, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    #@1c
    invoke-direct {v1, v2, v7}, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@1f
    .line 471
    .local v1, "duckToSession":Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;, "Landroid/hardware/camera2/dispatch/DuckTypingDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;>;"
    new-instance v5, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;

    #@21
    invoke-direct {v5, v1, v8, p0}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V

    #@24
    .line 475
    .local v5, "replaceDeviceWithSession":Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;, "Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;

    #@26
    const/4 v7, 0x2

    #@27
    new-array v7, v7, [Landroid/hardware/camera2/dispatch/Dispatchable;

    #@29
    .line 476
    aput-object v5, v7, v8

    #@2b
    .line 477
    const/4 v8, 0x1

    #@2c
    aput-object v4, v7, v8

    #@2e
    .line 475
    invoke-direct {v0, v7}, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;-><init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V

    #@31
    .line 479
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
    .line 413
    new-instance v1, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    #@2
    invoke-direct {v1, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    #@5
    .line 415
    .local v1, "userCallbackSink":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    #@7
    invoke-direct {v0, v1, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    #@a
    .line 417
    .local v0, "handlerPassthrough":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v2, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    #@c
    invoke-direct {v2, v0}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    #@f
    return-object v2
.end method

.method private finishPendingSequence(I)V
    .locals 2
    .param p1, "sequenceId"    # I

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V

    #@9
    .line 625
    return-void
.end method


# virtual methods
.method public declared-synchronized abortCaptures()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@4
    .line 284
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 285
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
    .line 286
    return-void

    #@26
    .line 289
    :cond_0
    const/4 v0, 0x1

    #@27
    :try_start_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@29
    .line 290
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    #@2b
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    #@2e
    .line 292
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@30
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 277
    return-void

    #@35
    :catchall_0
    move-exception v0

    #@36
    monitor-exit p0

    #@37
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
    .line 156
    if-nez p1, :cond_0

    #@3
    .line 157
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
    .line 158
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
    .line 161
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
    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v1, "capture request was created for another session"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "this capture session cannot handle reprocess requests"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 165
    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@3e
    .line 167
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@41
    move-result-object p3

    #@42
    .line 174
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@44
    .line 175
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@4a
    .line 174
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
    .line 181
    if-nez p1, :cond_0

    #@3
    .line 182
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
    .line 183
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v3, "Requests must have at least one element"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 187
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
    .line 188
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 189
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3

    #@3a
    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v3, "This capture session cannot handle reprocess requests"

    #@3f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 192
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    #@46
    move-result v2

    #@47
    iget v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    #@49
    if-eq v2, v3, :cond_2

    #@4b
    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v3, "Capture request was created for another session"

    #@50
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 199
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@57
    .line 201
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@5a
    move-result-object p3

    #@5b
    .line 209
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@5d
    .line 210
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@60
    move-result-object v3

    #@61
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@63
    .line 209
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

.method public declared-synchronized close()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 353
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 355
    return-void

    #@7
    .line 360
    :cond_0
    const/4 v2, 0x1

    #@8
    :try_start_1
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    .line 373
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@c
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f
    .line 392
    :goto_0
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@11
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 351
    return-void

    #@16
    .line 384
    :catch_0
    move-exception v0

    #@17
    .line 386
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_4
    const-string/jumbo v2, "CameraCaptureSession"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "Exception while stopping repeating: "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@33
    goto :goto_0

    #@34
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2

    #@37
    .line 374
    :catch_1
    move-exception v1

    #@38
    .line 382
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@3a
    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3d
    monitor-exit p0

    #@3e
    .line 383
    return-void
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
    .line 593
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 595
    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    #@6
    .line 591
    return-void

    #@7
    .line 594
    :catchall_0
    move-exception v0

    #@8
    .line 595
    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    #@b
    .line 594
    throw v0
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 2

    #@0
    .prologue
    .line 495
    move-object v0, p0

    #@1
    .line 497
    .local v0, "session":Landroid/hardware/camera2/CameraCaptureSession;
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    #@3
    invoke-direct {v1, p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    #@6
    return-object v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    #@0
    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    #@2
    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    #@0
    .prologue
    .line 298
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
    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    #@5
    .line 144
    return-void
.end method

.method public declared-synchronized replaceSessionClose()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 345
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    #@4
    .line 347
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 321
    return-void

    #@9
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
    .line 238
    if-nez p1, :cond_0

    #@3
    .line 239
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
    .line 240
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v3, "requests must have at least one element"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 244
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
    .line 245
    .local v0, "r":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v3, "repeating reprocess burst requests are not supported"

    #@39
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 251
    .end local v0    # "r":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@40
    .line 253
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@43
    move-result-object p3

    #@44
    .line 261
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@46
    .line 262
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@49
    move-result-object v3

    #@4a
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@4c
    .line 261
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
    .line 216
    if-nez p1, :cond_0

    #@3
    .line 217
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
    .line 218
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "repeating reprocess requests are not supported"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 222
    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@21
    .line 224
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@24
    move-result-object p3

    #@25
    .line 231
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@27
    .line 232
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    #@2d
    .line 231
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
    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    #@4
    .line 273
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@6
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 266
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
    .line 150
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    #@5
    .line 149
    return-void
.end method

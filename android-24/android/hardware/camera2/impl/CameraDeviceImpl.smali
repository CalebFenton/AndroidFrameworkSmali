.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$1;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$2;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$3;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$4;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$5;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$6;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$7;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private mRepeatingRequestId:I

.field private final mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    #@0
    .prologue
    const/16 v8, 0x17

    #@2
    const/4 v4, -0x1

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    .line 234
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    #@9
    .line 69
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    #@b
    .line 77
    new-instance v3, Ljava/lang/Object;

    #@d
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@12
    .line 78
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@14
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@17
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@19
    .line 84
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1e
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@20
    .line 85
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@22
    .line 86
    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@24
    .line 90
    new-instance v3, Landroid/util/SparseArray;

    #@26
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@29
    .line 89
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@2b
    .line 92
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@2d
    .line 95
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@36
    .line 94
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@38
    .line 97
    new-instance v3, Landroid/util/SparseArray;

    #@3a
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@3d
    .line 96
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@3f
    .line 108
    new-instance v3, Ljava/util/ArrayList;

    #@41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@44
    .line 107
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@46
    .line 114
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@48
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@4b
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@4d
    .line 117
    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@4f
    .line 122
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    #@51
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@54
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    #@56
    .line 138
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    #@58
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@5b
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@5d
    .line 153
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    #@5f
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@62
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    #@64
    .line 168
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    #@66
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@69
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@6b
    .line 183
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    #@6d
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@70
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    #@72
    .line 203
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    #@74
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@77
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@79
    .line 218
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    #@7b
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@7e
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    #@80
    .line 236
    if-eqz p1, :cond_0

    #@82
    if-nez p2, :cond_1

    #@84
    .line 237
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@86
    const-string/jumbo v4, "Null argument given"

    #@89
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3

    #@8d
    .line 236
    :cond_1
    if-eqz p3, :cond_0

    #@8f
    if-eqz p4, :cond_0

    #@91
    .line 239
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@93
    .line 240
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@95
    .line 241
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@97
    .line 242
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@99
    .line 244
    const/16 v0, 0x17

    #@9b
    .line 245
    .local v0, "MAX_TAG_LEN":I
    const-string/jumbo v3, "CameraDevice-JV-%s"

    #@9e
    new-array v4, v7, [Ljava/lang/Object;

    #@a0
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@a2
    aput-object v5, v4, v6

    #@a4
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    .line 246
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ab
    move-result v3

    #@ac
    if-le v3, v8, :cond_2

    #@ae
    .line 247
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b1
    move-result-object v2

    #@b2
    .line 249
    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@b4
    .line 252
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@b6
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@b8
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@bb
    move-result-object v1

    #@bc
    check-cast v1, Ljava/lang/Integer;

    #@be
    .line 253
    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_3

    #@c0
    .line 255
    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    #@c2
    .line 235
    :goto_0
    return-void

    #@c3
    .line 257
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@c6
    move-result v3

    #@c7
    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    #@c9
    goto :goto_0
.end method

.method private checkAndFireSequenceComplete()V
    .locals 21

    #@0
    .prologue
    .line 1542
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    #@9
    move-result-wide v2

    #@a
    .line 1543
    .local v2, "completedFrameNumber":J
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@e
    move-object/from16 v18, v0

    #@10
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    #@13
    move-result-wide v4

    #@14
    .line 1544
    .local v4, "completedReprocessFrameNumber":J
    const/4 v8, 0x0

    #@15
    .line 1545
    .local v8, "isReprocess":Z
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@19
    move-object/from16 v18, v0

    #@1b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v9

    #@1f
    .line 1546
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v18

    #@23
    if-eqz v18, :cond_6

    #@25
    .line 1547
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v15

    #@29
    check-cast v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@2b
    .line 1548
    .local v15, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    const/16 v17, 0x0

    #@2d
    .line 1549
    .local v17, "sequenceCompleted":Z
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    #@30
    move-result v14

    #@31
    .line 1551
    .local v14, "requestId":I
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@35
    move-object/from16 v19, v0

    #@37
    monitor-enter v19

    #@38
    .line 1552
    :try_start_0
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@3c
    move-object/from16 v18, v0

    #@3e
    if-nez v18, :cond_1

    #@40
    .line 1553
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@44
    move-object/from16 v18, v0

    #@46
    const-string/jumbo v20, "Camera closed while checking sequences"

    #@49
    move-object/from16 v0, v18

    #@4b
    move-object/from16 v1, v20

    #@4d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    monitor-exit v19

    #@51
    .line 1554
    return-void

    #@52
    .line 1557
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@56
    move-object/from16 v18, v0

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@5d
    move-result v7

    #@5e
    .line 1558
    .local v7, "index":I
    if-ltz v7, :cond_5

    #@60
    .line 1559
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@64
    move-object/from16 v18, v0

    #@66
    move-object/from16 v0, v18

    #@68
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6b
    move-result-object v6

    #@6c
    check-cast v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@6e
    .line 1560
    :goto_1
    if-eqz v6, :cond_2

    #@70
    .line 1562
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    #@73
    move-result-wide v10

    #@74
    .line 1564
    .local v10, "lastRegularFrameNumber":J
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    #@77
    move-result-wide v12

    #@78
    .line 1567
    .local v12, "lastReprocessFrameNumber":J
    cmp-long v18, v10, v2

    #@7a
    if-gtz v18, :cond_2

    #@7c
    .line 1568
    cmp-long v18, v12, v4

    #@7e
    if-gtz v18, :cond_2

    #@80
    .line 1569
    const/16 v17, 0x1

    #@82
    .line 1570
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@86
    move-object/from16 v18, v0

    #@88
    move-object/from16 v0, v18

    #@8a
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    .end local v10    # "lastRegularFrameNumber":J
    .end local v12    # "lastReprocessFrameNumber":J
    :cond_2
    monitor-exit v19

    #@8e
    .line 1584
    if-eqz v6, :cond_3

    #@90
    if-eqz v17, :cond_4

    #@92
    .line 1585
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    #@95
    .line 1589
    :cond_4
    if-eqz v17, :cond_0

    #@97
    .line 1590
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    #@99
    move-object/from16 v0, v16

    #@9b
    move-object/from16 v1, p0

    #@9d
    invoke-direct {v0, v1, v14, v6, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    #@a0
    .line 1607
    .local v16, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@a3
    move-result-object v18

    #@a4
    move-object/from16 v0, v18

    #@a6
    move-object/from16 v1, v16

    #@a8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1559
    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    const/4 v6, 0x0

    #@ae
    .local v6, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    goto :goto_1

    #@af
    .line 1551
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v7    # "index":I
    :catchall_0
    move-exception v18

    #@b0
    monitor-exit v19

    #@b1
    throw v18

    #@b2
    .line 1541
    .end local v14    # "requestId":I
    .end local v15    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .end local v17    # "sequenceCompleted":Z
    :cond_6
    return-void
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 782
    const-wide/16 v4, -0x1

    #@4
    cmp-long v3, p2, v4

    #@6
    if-nez v3, :cond_3

    #@8
    .line 784
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@d
    move-result v1

    #@e
    .line 785
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@10
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@18
    move-object v0, v3

    #@19
    .line 786
    .local v0, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_0
    if-eqz v0, :cond_1

    #@1b
    .line 787
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@20
    .line 796
    :cond_1
    if-eqz v0, :cond_2

    #@22
    .line 802
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    #@24
    invoke-direct {v2, p0, p1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    #@27
    .line 817
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 779
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    :goto_0
    return-void

    #@2f
    .line 819
    .restart local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .restart local v1    # "index":I
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@31
    .line 820
    const-string/jumbo v4, "did not register callback to request %d"

    #@34
    .line 819
    const/4 v5, 0x1

    #@35
    new-array v5, v5, [Ljava/lang/Object;

    #@37
    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v6

    #@3b
    aput-object v6, v5, v7

    #@3d
    .line 819
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_0

    #@45
    .line 826
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@47
    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@49
    invoke-direct {v4, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(IJ)V

    #@4c
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 831
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    #@52
    goto :goto_0
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1961
    if-nez p0, :cond_1

    #@2
    .line 1962
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 1963
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 1964
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 1965
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 1964
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1967
    :cond_0
    new-instance p0, Landroid/os/Handler;

    #@13
    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 1969
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p0    # "handler":Landroid/os/Handler;
    :cond_1
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    #@0
    .prologue
    .line 1978
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .line 1979
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 1981
    :cond_0
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 1985
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1986
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "CameraDevice was already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1988
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1989
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@13
    .line 1990
    const-string/jumbo v1, "The camera device has encountered a serious error"

    #@16
    .line 1989
    const/4 v2, 0x3

    #@17
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1984
    :cond_1
    return-void
.end method

.method private checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 11
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1008
    if-eqz p1, :cond_5

    #@3
    .line 1009
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@5
    .line 1010
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@7
    .line 1009
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@d
    .line 1012
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    #@10
    move-result-object v2

    #@11
    .line 1013
    .local v2, "inputFormats":[I
    const/4 v5, 0x0

    #@12
    .line 1014
    .local v5, "validFormat":Z
    array-length v9, v2

    #@13
    move v8, v7

    #@14
    :goto_0
    if-ge v8, v9, :cond_1

    #@16
    aget v1, v2, v8

    #@18
    .line 1015
    .local v1, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@1b
    move-result v10

    #@1c
    if-ne v1, v10, :cond_0

    #@1e
    .line 1016
    const/4 v5, 0x1

    #@1f
    .line 1014
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1020
    .end local v1    # "format":I
    :cond_1
    if-nez v5, :cond_2

    #@24
    .line 1021
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v8, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v9, "input format "

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@35
    move-result v9

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 1022
    const-string/jumbo v9, " is not valid"

    #@3d
    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v7

    #@49
    .line 1025
    :cond_2
    const/4 v6, 0x0

    #@4a
    .line 1026
    .local v6, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@4d
    move-result v8

    #@4e
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    #@51
    move-result-object v3

    #@52
    .line 1027
    .local v3, "inputSizes":[Landroid/util/Size;
    array-length v8, v3

    #@53
    :goto_1
    if-ge v7, v8, :cond_4

    #@55
    aget-object v4, v3, v7

    #@57
    .line 1028
    .local v4, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    #@5a
    move-result v9

    #@5b
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    #@5e
    move-result v10

    #@5f
    if-ne v9, v10, :cond_3

    #@61
    .line 1029
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@64
    move-result v9

    #@65
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    #@68
    move-result v10

    #@69
    if-ne v9, v10, :cond_3

    #@6b
    .line 1030
    const/4 v6, 0x1

    #@6c
    .line 1027
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 1034
    .end local v4    # "s":Landroid/util/Size;
    :cond_4
    if-nez v6, :cond_5

    #@71
    .line 1035
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@73
    new-instance v8, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v9, "input size "

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    #@82
    move-result v9

    #@83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    const-string/jumbo v9, "x"

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    .line 1036
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@91
    move-result v9

    #@92
    .line 1035
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    .line 1036
    const-string/jumbo v9, " is not valid"

    #@99
    .line 1035
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v7

    #@a5
    .line 1007
    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v2    # "inputFormats":[I
    .end local v3    # "inputSizes":[Landroid/util/Size;
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    :cond_5
    return-void
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V
    .locals 26
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4
    move-object/from16 v25, v0

    #@6
    monitor-enter v25

    #@7
    .line 588
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@a
    .line 590
    if-eqz p5, :cond_0

    #@c
    if-eqz p1, :cond_0

    #@e
    .line 591
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v7, "Constrained high speed session doesn\'t support input configuration yet."

    #@13
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 583
    :catchall_0
    move-exception v5

    #@18
    monitor-exit v25

    #@19
    throw v5

    #@1a
    .line 597
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 598
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@24
    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 602
    :cond_1
    const/4 v11, 0x1

    #@28
    .line 603
    .local v11, "configureSuccess":Z
    const/16 v24, 0x0

    #@2a
    .line 604
    .local v24, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    #@2b
    .line 607
    .local v14, "input":Landroid/view/Surface;
    :try_start_2
    move-object/from16 v0, p0

    #@2d
    move-object/from16 v1, p1

    #@2f
    move-object/from16 v2, p2

    #@31
    move/from16 v3, p5

    #@33
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    #@36
    move-result v11

    #@37
    .line 609
    .local v11, "configureSuccess":Z
    if-eqz v11, :cond_2

    #@39
    if-eqz p1, :cond_2

    #@3b
    .line 610
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@3f
    invoke-virtual {v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    move-result-object v14

    #@43
    .line 621
    .end local v11    # "configureSuccess":Z
    .end local v14    # "input":Landroid/view/Surface;
    .end local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :goto_0
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    #@45
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@48
    move-result v5

    #@49
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@4c
    .line 622
    .local v6, "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v22

    #@50
    .local v22, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v21

    #@5a
    check-cast v21, Landroid/hardware/camera2/params/OutputConfiguration;

    #@5c
    .line 623
    .local v21, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@5f
    move-result-object v5

    #@60
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_1

    #@64
    .line 612
    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v21    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v22    # "config$iterator":Ljava/util/Iterator;
    .restart local v14    # "input":Landroid/view/Surface;
    .restart local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catch_0
    move-exception v23

    #@65
    .line 613
    .local v23, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v11, 0x0

    #@66
    .line 614
    .local v11, "configureSuccess":Z
    move-object/from16 v24, v23

    #@68
    .line 615
    .local v24, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    #@69
    goto :goto_0

    #@6a
    .line 626
    .end local v11    # "configureSuccess":Z
    .end local v14    # "input":Landroid/view/Surface;
    .end local v23    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v24    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local v22    # "config$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    #@6b
    .line 627
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz p5, :cond_4

    #@6d
    .line 628
    new-instance v4, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    #@6f
    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    #@71
    iget v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@73
    add-int/lit8 v7, v5, 0x1

    #@75
    move-object/from16 v0, p0

    #@77
    iput v7, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@79
    .line 629
    move-object/from16 v0, p0

    #@7b
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@7d
    .line 630
    move-object/from16 v0, p0

    #@7f
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@81
    move-object/from16 v7, p3

    #@83
    move-object/from16 v8, p4

    #@85
    move-object/from16 v9, p0

    #@87
    .line 628
    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    #@8a
    .line 638
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_2
    move-object/from16 v0, p0

    #@8c
    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@8e
    .line 640
    if-eqz v24, :cond_5

    #@90
    .line 641
    throw v24

    #@91
    .line 632
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_4
    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@93
    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    #@95
    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@97
    add-int/lit8 v5, v13, 0x1

    #@99
    move-object/from16 v0, p0

    #@9b
    iput v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@9d
    .line 633
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@a1
    move-object/from16 v19, v0

    #@a3
    move-object v12, v4

    #@a4
    move-object v15, v6

    #@a5
    move-object/from16 v16, p3

    #@a7
    move-object/from16 v17, p4

    #@a9
    move-object/from16 v18, p0

    #@ab
    move/from16 v20, v11

    #@ad
    .line 632
    invoke-direct/range {v12 .. v20}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    #@b0
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_2

    #@b1
    .line 644
    :cond_5
    move-object/from16 v0, p0

    #@b3
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@b5
    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@b8
    move-result-object v5

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bd
    monitor-exit v25

    #@be
    .line 582
    return-void
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    #@0
    .prologue
    .line 2000
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@2
    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 1996
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .locals 17
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 840
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p3

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@7
    move-result-object p3

    #@8
    .line 843
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v9

    #@c
    .local v9, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_3

    #@12
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v8

    #@16
    check-cast v8, Landroid/hardware/camera2/CaptureRequest;

    #@18
    .line 844
    .local v8, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 845
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    .line 846
    const-string/jumbo v3, "Each request must have at least one Surface target"

    #@27
    .line 845
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 849
    :cond_1
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v13

    #@33
    .local v13, "surface$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v12

    #@3d
    check-cast v12, Landroid/view/Surface;

    #@3f
    .line 850
    .local v12, "surface":Landroid/view/Surface;
    if-nez v12, :cond_2

    #@41
    .line 851
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v3, "Null Surface targets are not allowed"

    #@46
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 856
    .end local v8    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v12    # "surface":Landroid/view/Surface;
    .end local v13    # "surface$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    #@4c
    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4e
    monitor-enter v14

    #@4f
    .line 857
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@52
    .line 858
    if-eqz p4, :cond_4

    #@54
    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    #@57
    .line 864
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@5a
    move-result v2

    #@5b
    new-array v2, v2, [Landroid/hardware/camera2/CaptureRequest;

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@62
    move-result-object v10

    #@63
    check-cast v10, [Landroid/hardware/camera2/CaptureRequest;

    #@65
    .line 865
    .local v10, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    #@67
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@69
    move/from16 v0, p4

    #@6b
    invoke-virtual {v2, v10, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@6e
    move-result-object v11

    #@6f
    .line 870
    .local v11, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    if-eqz p2, :cond_5

    #@71
    .line 871
    move-object/from16 v0, p0

    #@73
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@75
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    #@78
    move-result v16

    #@79
    .line 872
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@7b
    .line 873
    move-object/from16 v0, p0

    #@7d
    iget v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@7f
    add-int/lit8 v7, v3, -0x1

    #@81
    move-object/from16 v3, p2

    #@83
    move-object/from16 v4, p1

    #@85
    move-object/from16 v5, p3

    #@87
    move/from16 v6, p4

    #@89
    .line 872
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V

    #@8c
    .line 871
    move/from16 v0, v16

    #@8e
    invoke-virtual {v15, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@91
    .line 880
    :cond_5
    if-eqz p4, :cond_8

    #@93
    .line 881
    move-object/from16 v0, p0

    #@95
    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@97
    const/4 v3, -0x1

    #@98
    if-eq v2, v3, :cond_6

    #@9a
    .line 882
    move-object/from16 v0, p0

    #@9c
    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@9e
    .line 883
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    #@a1
    move-result-wide v4

    #@a2
    .line 882
    move-object/from16 v0, p0

    #@a4
    invoke-direct {v0, v2, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    #@a7
    .line 885
    :cond_6
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    #@aa
    move-result v2

    #@ab
    move-object/from16 v0, p0

    #@ad
    iput v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@af
    .line 891
    :goto_0
    move-object/from16 v0, p0

    #@b1
    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@b3
    if-eqz v2, :cond_7

    #@b5
    .line 892
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    #@bd
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c0
    .line 894
    :cond_7
    const/4 v2, 0x0

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@c5
    .line 896
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c8
    move-result v2

    #@c9
    monitor-exit v14

    #@ca
    return v2

    #@cb
    .line 887
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    #@cd
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@cf
    .line 888
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-direct {v3, v0, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    #@d6
    .line 887
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d9
    goto :goto_0

    #@da
    .line 856
    .end local v10    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .end local v11    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    :catchall_0
    move-exception v2

    #@db
    monitor-exit v14

    #@dc
    throw v2
.end method

.method private waitUntilIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 942
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 943
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 945
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@8
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 946
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v2, "Active repeating request ongoing"

    #@10
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 942
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 949
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@19
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 940
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 2009
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "CameraDevice "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, " died unexpectedly"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2011
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@24
    if-nez v1, :cond_0

    #@26
    .line 2012
    return-void

    #@27
    .line 2015
    :cond_0
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@2a
    .line 2016
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    #@2c
    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@2f
    .line 2025
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@31
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@34
    .line 2008
    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 753
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 754
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
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
    .line 759
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 760
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "At least one request must be given"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 762
    :cond_1
    const/4 v0, 0x0

    #@12
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 976
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 977
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    monitor-exit v1

    #@d
    .line 978
    return-void

    #@e
    .line 981
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 982
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@14
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    #@17
    .line 983
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@1d
    .line 989
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@1f
    if-nez v0, :cond_2

    #@21
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 990
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@27
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    #@29
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2c
    .line 993
    :cond_3
    const/4 v0, 0x0

    #@2d
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v1

    #@30
    .line 975
    return-void

    #@31
    .line 976
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
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
    .line 354
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 355
    .local v0, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/Surface;

    #@19
    .line 356
    .local v1, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1b
    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@1e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 358
    .end local v1    # "s":Landroid/view/Surface;
    :cond_0
    const/4 v3, 0x0

    #@23
    .line 359
    const/4 v4, 0x0

    #@24
    .line 358
    invoke-virtual {p0, v3, v0, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    #@27
    .line 352
    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z
    .locals 20
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p2, :cond_0

    #@2
    .line 387
    new-instance p2, Ljava/util/ArrayList;

    #@4
    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 389
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@a
    move-result v15

    #@b
    if-nez v15, :cond_1

    #@d
    if-eqz p1, :cond_1

    #@f
    .line 390
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v16, "cannot configure an input stream without any output streams"

    #@14
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v15

    #@18
    .line 394
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    #@1b
    .line 396
    const/4 v14, 0x0

    #@1c
    .line 398
    .local v14, "success":Z
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@20
    move-object/from16 v16, v0

    #@22
    monitor-enter v16

    #@23
    .line 399
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@26
    .line 401
    new-instance v3, Ljava/util/HashSet;

    #@28
    move-object/from16 v0, p2

    #@2a
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2d
    .line 403
    .local v3, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@32
    .line 406
    .local v5, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    #@33
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@35
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@3a
    move-result v15

    #@3b
    if-ge v8, v15, :cond_3

    #@3d
    .line 407
    move-object/from16 v0, p0

    #@3f
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@44
    move-result v11

    #@45
    .line 408
    .local v11, "streamId":I
    move-object/from16 v0, p0

    #@47
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v9

    #@4d
    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    #@4f
    .line 410
    .local v9, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    move-object/from16 v0, p2

    #@51
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@54
    move-result v15

    #@55
    if-nez v15, :cond_2

    #@57
    .line 411
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v15

    #@5b
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    .line 406
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@60
    goto :goto_0

    #@61
    .line 413
    :cond_2
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    goto :goto_1

    #@65
    .line 398
    .end local v3    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v11    # "streamId":I
    :catchall_0
    move-exception v15

    #@66
    monitor-exit v16

    #@67
    throw v15

    #@68
    .line 417
    .restart local v3    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v5    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "i":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@6a
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@70
    move-object/from16 v17, v0

    #@72
    move-object/from16 v0, v17

    #@74
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@77
    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 421
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    #@7d
    .line 423
    move-object/from16 v0, p0

    #@7f
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@81
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    #@84
    .line 426
    move-object/from16 v0, p0

    #@86
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@88
    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    #@8b
    move-result-object v4

    #@8c
    check-cast v4, Landroid/hardware/camera2/params/InputConfiguration;

    #@8e
    .line 427
    .local v4, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    move-object/from16 v0, p1

    #@90
    if-eq v0, v4, :cond_4

    #@92
    .line 428
    if-eqz p1, :cond_5

    #@94
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v15

    #@9a
    if-eqz v15, :cond_5

    #@9c
    .line 443
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9f
    move-result-object v13

    #@a0
    .local v13, "streamId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@a3
    move-result v15

    #@a4
    if-eqz v15, :cond_7

    #@a6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a9
    move-result-object v12

    #@aa
    check-cast v12, Ljava/lang/Integer;

    #@ac
    .line 444
    .local v12, "streamId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@ae
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@b0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@b3
    move-result v17

    #@b4
    move/from16 v0, v17

    #@b6
    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    #@b9
    .line 445
    move-object/from16 v0, p0

    #@bb
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@bd
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@c0
    move-result v17

    #@c1
    move/from16 v0, v17

    #@c3
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c6
    goto :goto_3

    #@c7
    .line 459
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v12    # "streamId":Ljava/lang/Integer;
    .end local v13    # "streamId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    #@c8
    .line 462
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    move-object/from16 v0, p0

    #@ca
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@cc
    new-instance v17, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v18, "Stream configuration failed due to: "

    #@d4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v17

    #@d8
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@db
    move-result-object v18

    #@dc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v17

    #@e0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v17

    #@e4
    move-object/from16 v0, v17

    #@e6
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e9
    .line 471
    if-eqz v14, :cond_c

    #@eb
    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@ee
    move-result v15

    #@ef
    if-lez v15, :cond_c

    #@f1
    .line 472
    move-object/from16 v0, p0

    #@f3
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@f9
    move-object/from16 v17, v0

    #@fb
    move-object/from16 v0, v17

    #@fd
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@100
    .line 463
    :goto_4
    const/4 v15, 0x0

    #@101
    monitor-exit v16

    #@102
    return v15

    #@103
    .line 429
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_5
    if-eqz v4, :cond_6

    #@105
    .line 430
    :try_start_5
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@109
    move-object/from16 v17, v0

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@10f
    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    #@112
    move-result-object v15

    #@113
    check-cast v15, Ljava/lang/Integer;

    #@115
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@118
    move-result v15

    #@119
    move-object/from16 v0, v17

    #@11b
    invoke-virtual {v0, v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    #@11e
    .line 431
    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    #@120
    .line 432
    const/16 v17, -0x1

    #@122
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v17

    #@126
    const/16 v18, 0x0

    #@128
    .line 431
    move-object/from16 v0, v17

    #@12a
    move-object/from16 v1, v18

    #@12c
    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@12f
    move-object/from16 v0, p0

    #@131
    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@133
    .line 434
    :cond_6
    if-eqz p1, :cond_4

    #@135
    .line 435
    move-object/from16 v0, p0

    #@137
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@139
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    #@13c
    move-result v17

    #@13d
    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@140
    move-result v18

    #@141
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@144
    move-result v19

    #@145
    .line 435
    move/from16 v0, v17

    #@147
    move/from16 v1, v18

    #@149
    move/from16 v2, v19

    #@14b
    invoke-virtual {v15, v0, v1, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(III)I

    #@14e
    move-result v11

    #@14f
    .line 437
    .restart local v11    # "streamId":I
    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    #@151
    .line 438
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@154
    move-result-object v17

    #@155
    .line 437
    move-object/from16 v0, v17

    #@157
    move-object/from16 v1, p1

    #@159
    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@160
    goto/16 :goto_2

    #@162
    .line 464
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v11    # "streamId":I
    :catch_1
    move-exception v6

    #@163
    .line 465
    .local v6, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    #@166
    move-result v15

    #@167
    const/16 v17, 0x4

    #@169
    move/from16 v0, v17

    #@16b
    if-ne v15, v0, :cond_b

    #@16d
    .line 466
    new-instance v15, Ljava/lang/IllegalStateException;

    #@16f
    const-string/jumbo v17, "The camera is currently busy. You must wait until the previous operation completes."

    #@172
    move-object/from16 v0, v17

    #@174
    invoke-direct {v15, v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@177
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@178
    .line 470
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_1
    move-exception v15

    #@179
    .line 471
    if-eqz v14, :cond_d

    #@17b
    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@17e
    move-result v17

    #@17f
    if-lez v17, :cond_d

    #@181
    .line 472
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@185
    move-object/from16 v17, v0

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@18b
    move-object/from16 v18, v0

    #@18d
    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@190
    .line 470
    :goto_5
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@191
    .line 449
    .restart local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v13    # "streamId$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_8
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@194
    move-result-object v10

    #@195
    .local v10, "outConfig$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@198
    move-result v15

    #@199
    if-eqz v15, :cond_9

    #@19b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19e
    move-result-object v9

    #@19f
    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1a1
    .line 450
    .restart local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1a4
    move-result v15

    #@1a5
    if-eqz v15, :cond_8

    #@1a7
    .line 451
    move-object/from16 v0, p0

    #@1a9
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@1ab
    invoke-virtual {v15, v9}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    #@1ae
    move-result v11

    #@1af
    .line 452
    .restart local v11    # "streamId":I
    move-object/from16 v0, p0

    #@1b1
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1b3
    invoke-virtual {v15, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b6
    goto :goto_6

    #@1b7
    .line 456
    .end local v9    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v11    # "streamId":I
    :cond_9
    move-object/from16 v0, p0

    #@1b9
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@1bb
    move/from16 v0, p3

    #@1bd
    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1c0
    .line 458
    const/4 v14, 0x1

    #@1c1
    .line 471
    if-eqz v14, :cond_a

    #@1c3
    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@1c6
    move-result v15

    #@1c7
    if-lez v15, :cond_a

    #@1c9
    .line 472
    move-object/from16 v0, p0

    #@1cb
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@1d1
    move-object/from16 v17, v0

    #@1d3
    move-object/from16 v0, v17

    #@1d5
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1d8
    :goto_7
    monitor-exit v16

    #@1d9
    .line 480
    return v14

    #@1da
    .line 475
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    #@1dc
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@1e2
    move-object/from16 v17, v0

    #@1e4
    move-object/from16 v0, v17

    #@1e6
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@1e9
    goto :goto_7

    #@1ea
    .line 469
    .end local v4    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v10    # "outConfig$iterator":Ljava/util/Iterator;
    .end local v13    # "streamId$iterator":Ljava/util/Iterator;
    .restart local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_b
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@1eb
    .line 475
    .end local v6    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    #@1ed
    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@1f3
    move-object/from16 v17, v0

    #@1f5
    move-object/from16 v0, v17

    #@1f7
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1fa
    goto/16 :goto_4

    #@1fc
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@200
    move-object/from16 v17, v0

    #@202
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@206
    move-object/from16 v18, v0

    #@208
    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@20b
    goto :goto_5
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 661
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 663
    const/4 v1, 0x0

    #@7
    .line 665
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@9
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@c
    move-result-object v1

    #@d
    .line 667
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@f
    .line 668
    const/4 v2, 0x0

    #@10
    const/4 v4, -0x1

    #@11
    .line 667
    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v3

    #@15
    .line 670
    return-object v0

    #@16
    .line 660
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit v3

    #@18
    throw v2
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 488
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v7

    #@d
    .local v7, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Landroid/view/Surface;

    #@19
    .line 489
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1b
    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@1e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 491
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 492
    const/4 v5, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v3, p2

    #@26
    move-object v4, p3

    #@27
    .line 491
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@2a
    .line 486
    return-void
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 507
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    #@6
    .line 508
    const/4 v5, 0x0

    #@7
    move-object v0, p0

    #@8
    move-object v3, p2

    #@9
    move-object v4, p3

    #@a
    .line 507
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@d
    .line 499
    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v1, 0x0

    #@1
    .line 563
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 565
    const-string/jumbo v1, "Output surface list must not be null and the size must be no more than 2"

    #@e
    .line 564
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 563
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@15
    move-result v0

    #@16
    const/4 v3, 0x2

    #@17
    if-gt v0, v3, :cond_0

    #@19
    .line 568
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    #@1c
    move-result-object v0

    #@1d
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1f
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@25
    .line 569
    .local v6, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1, v1, v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    #@28
    .line 571
    new-instance v2, Ljava/util/ArrayList;

    #@2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2d
    move-result v0

    #@2e
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    .line 572
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v8

    #@35
    .local v8, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_2

    #@3b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, Landroid/view/Surface;

    #@41
    .line 573
    .local v7, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@43
    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@46
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 576
    .end local v7    # "surface":Landroid/view/Surface;
    :cond_2
    const/4 v5, 0x1

    #@4b
    move-object v0, p0

    #@4c
    move-object v3, p2

    #@4d
    move-object v4, p3

    #@4e
    .line 575
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@51
    .line 562
    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 678
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 680
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    .line 681
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@b
    move-result-object v1

    #@c
    .line 680
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@f
    .line 683
    .local v0, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@11
    .line 684
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    #@14
    move-result v3

    #@15
    .line 683
    const/4 v4, 0x1

    #@16
    invoke-direct {v1, v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    return-object v1

    #@1b
    .line 677
    .end local v0    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    #@2
    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 523
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 524
    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v7

    #@18
    .local v7, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Landroid/view/Surface;

    #@24
    .line 525
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@26
    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@29
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 528
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_1
    const/4 v5, 0x0

    #@2e
    move-object v0, p0

    #@2f
    move-object v1, p1

    #@30
    move-object v3, p3

    #@31
    move-object v4, p4

    #@32
    .line 527
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@35
    .line 514
    return-void
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p1, :cond_0

    #@2
    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 545
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Output configurations cannot be null when creating a reprocessable capture session"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 551
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 552
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v7

    #@1f
    .local v7, "output$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    #@2b
    .line 553
    .local v6, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@2d
    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    #@30
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 556
    .end local v6    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_2
    const/4 v5, 0x0

    #@35
    move-object v0, p0

    #@36
    move-object v1, p1

    #@37
    move-object v3, p3

    #@38
    move-object v4, p4

    #@39
    .line 555
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@3c
    .line 535
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
    .line 1000
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 1003
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    #@6
    .line 998
    return-void

    #@7
    .line 1002
    :catchall_0
    move-exception v0

    #@8
    .line 1003
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    #@b
    .line 1002
    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 954
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 955
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@7
    .line 957
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@9
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 961
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 962
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@14
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@16
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 963
    return-void

    #@1b
    .line 966
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@1d
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    #@20
    move-result-wide v0

    #@21
    .line 967
    .local v0, "lastFrameNumber":J
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@23
    if-eq v2, v5, :cond_1

    #@25
    .line 968
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@27
    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    #@2a
    .line 969
    const/4 v2, -0x1

    #@2b
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :cond_1
    monitor-exit v3

    #@2e
    .line 953
    return-void

    #@2f
    .line 954
    .end local v0    # "lastFrameNumber":J
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 5
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 708
    if-nez p2, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Surface is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 709
    :cond_0
    if-gtz p1, :cond_1

    #@d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Invalid maxCount given: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 712
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@29
    monitor-enter v3

    #@2a
    .line 713
    const/4 v1, -0x1

    #@2b
    .line 714
    .local v1, "streamId":I
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@31
    move-result v2

    #@32
    if-ge v0, v2, :cond_2

    #@34
    .line 715
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    #@3c
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@3f
    move-result-object v2

    #@40
    if-ne p2, v2, :cond_3

    #@42
    .line 716
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@44
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@47
    move-result v1

    #@48
    .line 720
    :cond_2
    const/4 v2, -0x1

    #@49
    if-ne v1, v2, :cond_4

    #@4b
    .line 721
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v4, "Surface is not part of this session"

    #@50
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 712
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v3

    #@56
    throw v2

    #@57
    .line 714
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 724
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@5c
    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    monitor-exit v3

    #@60
    .line 707
    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 689
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Surface is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 691
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 692
    const/4 v1, -0x1

    #@f
    .line 693
    .local v1, "streamId":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v2

    #@16
    if-ge v0, v2, :cond_1

    #@18
    .line 694
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    #@20
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@23
    move-result-object v2

    #@24
    if-ne p1, v2, :cond_2

    #@26
    .line 695
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v1

    #@2c
    .line 699
    :cond_1
    const/4 v2, -0x1

    #@2d
    if-ne v1, v2, :cond_3

    #@2f
    .line 700
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v4, "Surface is not part of this session"

    #@34
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 691
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 693
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 703
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@40
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v3

    #@44
    .line 688
    return-void
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 6
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 276
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    return-void

    #@9
    .line 278
    :cond_0
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@b
    invoke-direct {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    #@e
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@10
    .line 280
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result-object v1

    #@14
    .line 283
    .local v1, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    #@16
    .line 285
    const/4 v2, 0x0

    #@17
    :try_start_2
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    .line 294
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1c
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    #@1e
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@21
    .line 295
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@23
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@25
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 272
    return-void

    #@2a
    .line 286
    :catch_0
    move-exception v0

    #@2b
    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@2d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    #@2f
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    .line 289
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    #@34
    .line 290
    const-string/jumbo v4, "The camera device has encountered a serious error"

    #@37
    .line 289
    const/4 v5, 0x2

    #@38
    invoke-direct {v2, v5, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@3b
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3c
    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "remoteDeviceBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2
.end method

.method public setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .locals 7
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    #@0
    .prologue
    .line 306
    const/4 v1, 0x4

    #@1
    .line 307
    .local v1, "failureCode":I
    const/4 v2, 0x1

    #@2
    .line 309
    .local v2, "failureIsError":Z
    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 326
    :pswitch_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@9
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "Unexpected failure in opening camera device: "

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    iget v6, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    .line 327
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 330
    :goto_0
    move v0, v1

    #@2b
    .line 331
    .local v0, "code":I
    move v3, v2

    #@2c
    .line 332
    .local v3, "isError":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2e
    monitor-enter v5

    #@2f
    .line 333
    const/4 v4, 0x1

    #@30
    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@32
    .line 334
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@34
    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    #@36
    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    #@39
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v5

    #@3d
    .line 305
    return-void

    #@3e
    .line 311
    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_1
    const/4 v1, 0x1

    #@3f
    .line 312
    goto :goto_0

    #@40
    .line 314
    :pswitch_2
    const/4 v1, 0x2

    #@41
    .line 315
    goto :goto_0

    #@42
    .line 317
    :pswitch_3
    const/4 v1, 0x3

    #@43
    .line 318
    goto :goto_0

    #@44
    .line 320
    :pswitch_4
    const/4 v2, 0x0

    #@45
    .line 321
    goto :goto_0

    #@46
    .line 323
    :pswitch_5
    const/4 v1, 0x4

    #@47
    .line 324
    goto :goto_0

    #@48
    .line 332
    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_0
    move-exception v4

    #@49
    monitor-exit v5

    #@4a
    throw v4

    #@4b
    .line 309
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
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
    .line 909
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 910
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "At least one request must be given"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 912
    :cond_1
    const/4 v0, 0x1

    #@12
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 903
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 904
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 653
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 651
    return-void

    #@7
    .line 652
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public stopRepeating()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 917
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 918
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@7
    .line 919
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@9
    if-eq v4, v6, :cond_0

    #@b
    .line 921
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@d
    .line 922
    .local v1, "requestId":I
    const/4 v4, -0x1

    #@e
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 926
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@12
    invoke-virtual {v4, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-wide v2

    #@16
    .line 935
    .local v2, "lastFrameNumber":J
    :try_start_2
    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .end local v1    # "requestId":I
    .end local v2    # "lastFrameNumber":J
    :cond_0
    monitor-exit v5

    #@1a
    .line 915
    return-void

    #@1b
    .line 927
    .restart local v1    # "requestId":I
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    monitor-exit v5

    #@1d
    .line 932
    return-void

    #@1e
    .line 917
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit v5

    #@20
    throw v4
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    if-nez p1, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Surface is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 731
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 732
    const/4 v1, -0x1

    #@f
    .line 733
    .local v1, "streamId":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v2

    #@16
    if-ge v0, v2, :cond_1

    #@18
    .line 734
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    #@20
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@23
    move-result-object v2

    #@24
    if-ne p1, v2, :cond_2

    #@26
    .line 735
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v1

    #@2c
    .line 739
    :cond_1
    const/4 v2, -0x1

    #@2d
    if-ne v1, v2, :cond_3

    #@2f
    .line 740
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v4, "Surface is not part of this session"

    #@34
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 731
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 733
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 743
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    #@40
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v3

    #@44
    .line 728
    return-void
.end method

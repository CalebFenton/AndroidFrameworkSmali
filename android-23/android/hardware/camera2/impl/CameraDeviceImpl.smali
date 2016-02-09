.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$1;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$2;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$3;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$4;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$5;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$6;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$7;
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

.field private mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

.field private mRepeatingRequestId:I

.field private final mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.method static synthetic -get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
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
    .line 68
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    #@b
    .line 76
    new-instance v3, Ljava/lang/Object;

    #@d
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@12
    .line 77
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@14
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@17
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@19
    .line 83
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1e
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@20
    .line 84
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@22
    .line 85
    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@24
    .line 89
    new-instance v3, Landroid/util/SparseArray;

    #@26
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@29
    .line 88
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@2b
    .line 91
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@2d
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    #@34
    .line 95
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    #@36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3d
    .line 94
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@3f
    .line 97
    new-instance v3, Landroid/util/SparseArray;

    #@41
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@44
    .line 96
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@46
    .line 108
    new-instance v3, Ljava/util/ArrayList;

    #@48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@4b
    .line 107
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@4d
    .line 114
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@4f
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@52
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    #@54
    .line 117
    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@56
    .line 122
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    #@58
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@5b
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    #@5d
    .line 138
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    #@5f
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@62
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@64
    .line 153
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    #@66
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@69
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    #@6b
    .line 168
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    #@6d
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@70
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@72
    .line 183
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    #@74
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@77
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    #@79
    .line 203
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    #@7b
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@7e
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@80
    .line 218
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    #@82
    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    #@85
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    #@87
    .line 236
    if-eqz p1, :cond_0

    #@89
    if-nez p2, :cond_1

    #@8b
    .line 237
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8d
    const-string/jumbo v4, "Null argument given"

    #@90
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@93
    throw v3

    #@94
    .line 236
    :cond_1
    if-eqz p3, :cond_0

    #@96
    if-eqz p4, :cond_0

    #@98
    .line 239
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@9a
    .line 240
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    #@9c
    .line 241
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@9e
    .line 242
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@a0
    .line 244
    const/16 v0, 0x17

    #@a2
    .line 245
    .local v0, "MAX_TAG_LEN":I
    const-string/jumbo v3, "CameraDevice-JV-%s"

    #@a5
    new-array v4, v7, [Ljava/lang/Object;

    #@a7
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@a9
    aput-object v5, v4, v6

    #@ab
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    .line 246
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b2
    move-result v3

    #@b3
    if-le v3, v8, :cond_2

    #@b5
    .line 247
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    .line 249
    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@bb
    .line 252
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@bd
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@bf
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@c2
    move-result-object v1

    #@c3
    check-cast v1, Ljava/lang/Integer;

    #@c5
    .line 253
    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_3

    #@c7
    .line 255
    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    #@c9
    .line 235
    :goto_0
    return-void

    #@ca
    .line 257
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@cd
    move-result v3

    #@ce
    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    #@d0
    goto :goto_0
.end method

.method private checkAndFireSequenceComplete()V
    .locals 21

    #@0
    .prologue
    .line 1530
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
    .line 1531
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
    .line 1532
    .local v4, "completedReprocessFrameNumber":J
    const/4 v8, 0x0

    #@15
    .line 1533
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
    .line 1534
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v18

    #@23
    if-eqz v18, :cond_6

    #@25
    .line 1535
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v15

    #@29
    check-cast v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@2b
    .line 1536
    .local v15, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    const/16 v17, 0x0

    #@2d
    .line 1537
    .local v17, "sequenceCompleted":Z
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    #@30
    move-result v14

    #@31
    .line 1539
    .local v14, "requestId":I
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@35
    move-object/from16 v19, v0

    #@37
    monitor-enter v19

    #@38
    .line 1540
    :try_start_0
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@3c
    move-object/from16 v18, v0

    #@3e
    if-nez v18, :cond_1

    #@40
    .line 1541
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
    .line 1542
    return-void

    #@52
    .line 1545
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
    .line 1546
    .local v7, "index":I
    if-ltz v7, :cond_5

    #@60
    .line 1547
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
    .line 1548
    :goto_1
    if-eqz v6, :cond_2

    #@70
    .line 1550
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    #@73
    move-result-wide v10

    #@74
    .line 1552
    .local v10, "lastRegularFrameNumber":J
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    #@77
    move-result-wide v12

    #@78
    .line 1555
    .local v12, "lastReprocessFrameNumber":J
    cmp-long v18, v10, v2

    #@7a
    if-gtz v18, :cond_2

    #@7c
    .line 1556
    cmp-long v18, v12, v4

    #@7e
    if-gtz v18, :cond_2

    #@80
    .line 1557
    const/16 v17, 0x1

    #@82
    .line 1558
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
    .line 1572
    if-eqz v6, :cond_3

    #@90
    if-eqz v17, :cond_4

    #@92
    .line 1573
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    #@95
    .line 1577
    :cond_4
    if-eqz v17, :cond_0

    #@97
    .line 1578
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    #@99
    move-object/from16 v0, v16

    #@9b
    move-object/from16 v1, p0

    #@9d
    invoke-direct {v0, v1, v14, v6, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    #@a0
    .line 1595
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
    .line 1547
    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    const/4 v6, 0x0

    #@ae
    .local v6, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    goto :goto_1

    #@af
    .line 1539
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v7    # "index":I
    :catchall_0
    move-exception v18

    #@b0
    monitor-exit v19

    #@b1
    throw v18

    #@b2
    .line 1529
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
    .line 742
    const-wide/16 v4, -0x1

    #@3
    cmp-long v3, p2, v4

    #@5
    if-nez v3, :cond_3

    #@7
    .line 744
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@c
    move-result v1

    #@d
    .line 745
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@f
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@17
    .line 746
    :goto_0
    if-eqz v0, :cond_0

    #@19
    .line 747
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@1e
    .line 756
    :cond_0
    if-eqz v0, :cond_2

    #@20
    .line 762
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    #@22
    invoke-direct {v2, p0, p1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    #@25
    .line 777
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2c
    .line 739
    .end local v1    # "index":I
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    :goto_1
    return-void

    #@2d
    .line 745
    .restart local v1    # "index":I
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    goto :goto_0

    #@2f
    .line 779
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@31
    .line 780
    const-string/jumbo v4, "did not register callback to request %d"

    #@34
    .line 779
    const/4 v5, 0x1

    #@35
    new-array v5, v5, [Ljava/lang/Object;

    #@37
    .line 781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v6

    #@3b
    aput-object v6, v5, v7

    #@3d
    .line 779
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_1

    #@45
    .line 786
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
    .line 791
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    #@52
    goto :goto_1
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1945
    if-nez p0, :cond_1

    #@2
    .line 1946
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 1947
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 1948
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 1949
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 1948
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1951
    :cond_0
    new-instance p0, Landroid/os/Handler;

    #@13
    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 1953
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
    .line 1962
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .line 1963
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 1965
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
    .line 1969
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1970
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "CameraDevice was already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1972
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1973
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@13
    .line 1974
    const-string/jumbo v1, "The camera device has encountered a serious error"

    #@16
    .line 1973
    const/4 v2, 0x3

    #@17
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1968
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
    .line 1001
    if-eqz p1, :cond_5

    #@3
    .line 1002
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@5
    .line 1003
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@7
    .line 1002
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@d
    .line 1005
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    #@10
    move-result-object v2

    #@11
    .line 1006
    .local v2, "inputFormats":[I
    const/4 v5, 0x0

    #@12
    .line 1007
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
    .line 1008
    .local v1, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@1b
    move-result v10

    #@1c
    if-ne v1, v10, :cond_0

    #@1e
    .line 1009
    const/4 v5, 0x1

    #@1f
    .line 1007
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1013
    .end local v1    # "format":I
    :cond_1
    if-nez v5, :cond_2

    #@24
    .line 1014
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
    .line 1015
    const-string/jumbo v9, " is not valid"

    #@3d
    .line 1014
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
    .line 1018
    :cond_2
    const/4 v6, 0x0

    #@4a
    .line 1019
    .local v6, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@4d
    move-result v8

    #@4e
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    #@51
    move-result-object v3

    #@52
    .line 1020
    .local v3, "inputSizes":[Landroid/util/Size;
    array-length v8, v3

    #@53
    :goto_1
    if-ge v7, v8, :cond_4

    #@55
    aget-object v4, v3, v7

    #@57
    .line 1021
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
    .line 1022
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
    .line 1023
    const/4 v6, 0x1

    #@6c
    .line 1020
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 1027
    .end local v4    # "s":Landroid/util/Size;
    :cond_4
    if-nez v6, :cond_5

    #@71
    .line 1028
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
    .line 1029
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@91
    move-result v9

    #@92
    .line 1028
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    .line 1029
    const-string/jumbo v9, " is not valid"

    #@99
    .line 1028
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
    .line 1000
    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v2    # "inputFormats":[I
    .end local v3    # "inputSizes":[Landroid/util/Size;
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    :cond_5
    return-void
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V
    .locals 29
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
    .line 537
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4
    move-object/from16 v28, v0

    #@6
    monitor-enter v28

    #@7
    .line 542
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@a
    .line 544
    if-eqz p5, :cond_0

    #@c
    if-eqz p1, :cond_0

    #@e
    .line 545
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
    .line 537
    :catchall_0
    move-exception v5

    #@18
    monitor-exit v28

    #@19
    throw v5

    #@1a
    .line 551
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 552
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@24
    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 556
    :cond_1
    const/4 v11, 0x1

    #@28
    .line 557
    .local v11, "configureSuccess":Z
    const/16 v27, 0x0

    #@2a
    .line 558
    .local v27, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    #@2b
    .line 561
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
    .line 563
    .local v11, "configureSuccess":Z
    if-eqz v11, :cond_2

    #@39
    if-eqz p1, :cond_2

    #@3b
    .line 564
    new-instance v26, Landroid/view/Surface;

    #@3d
    invoke-direct/range {v26 .. v26}, Landroid/view/Surface;-><init>()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 566
    .end local v14    # "input":Landroid/view/Surface;
    .local v26, "input":Landroid/view/Surface;
    :try_start_3
    move-object/from16 v0, p0

    #@42
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@44
    move-object/from16 v0, v26

    #@46
    invoke-interface {v5, v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getInputSurface(Landroid/view/Surface;)I
    :try_end_3
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    move-object/from16 v14, v26

    #@4b
    .line 583
    .end local v11    # "configureSuccess":Z
    .end local v26    # "input":Landroid/view/Surface;
    .end local v27    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :goto_0
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    #@4d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@50
    move-result v5

    #@51
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@54
    .line 584
    .local v6, "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v22

    #@58
    .local v22, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_3

    #@5e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v21

    #@62
    check-cast v21, Landroid/hardware/camera2/params/OutputConfiguration;

    #@64
    .line 585
    .local v21, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@67
    move-result-object v5

    #@68
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6b
    goto :goto_1

    #@6c
    .line 567
    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v21    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v22    # "config$iterator":Ljava/util/Iterator;
    .restart local v11    # "configureSuccess":Z
    .restart local v26    # "input":Landroid/view/Surface;
    .restart local v27    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catch_0
    move-exception v24

    #@6d
    .line 568
    .local v24, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@70
    move-object/from16 v14, v26

    #@72
    .end local v26    # "input":Landroid/view/Surface;
    .local v14, "input":Landroid/view/Surface;
    goto :goto_0

    #@73
    .line 578
    .end local v11    # "configureSuccess":Z
    .end local v24    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .local v14, "input":Landroid/view/Surface;
    :catch_1
    move-exception v25

    #@74
    .end local v14    # "input":Landroid/view/Surface;
    .local v25, "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v28

    #@75
    .line 580
    return-void

    #@76
    .line 571
    .end local v25    # "e":Landroid/os/RemoteException;
    .restart local v14    # "input":Landroid/view/Surface;
    :catch_2
    move-exception v23

    #@77
    .line 572
    .end local v14    # "input":Landroid/view/Surface;
    .local v23, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_3
    const/4 v11, 0x0

    #@78
    .line 573
    .local v11, "configureSuccess":Z
    move-object/from16 v27, v23

    #@7a
    .line 574
    .local v27, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    #@7b
    .restart local v14    # "input":Landroid/view/Surface;
    goto :goto_0

    #@7c
    .line 588
    .end local v11    # "configureSuccess":Z
    .end local v14    # "input":Landroid/view/Surface;
    .end local v23    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v27    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local v22    # "config$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    #@7d
    .line 589
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz p5, :cond_4

    #@7f
    .line 590
    :try_start_6
    new-instance v4, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    #@81
    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    #@83
    iget v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@85
    add-int/lit8 v7, v5, 0x1

    #@87
    move-object/from16 v0, p0

    #@89
    iput v7, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@8b
    .line 591
    move-object/from16 v0, p0

    #@8d
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@8f
    .line 592
    move-object/from16 v0, p0

    #@91
    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@93
    move-object/from16 v7, p3

    #@95
    move-object/from16 v8, p4

    #@97
    move-object/from16 v9, p0

    #@99
    .line 590
    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    #@9c
    .line 600
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_4
    move-object/from16 v0, p0

    #@9e
    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@a0
    .line 602
    if-eqz v27, :cond_5

    #@a2
    .line 603
    throw v27

    #@a3
    .line 594
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_4
    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    #@a5
    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    #@a7
    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@a9
    add-int/lit8 v5, v13, 0x1

    #@ab
    move-object/from16 v0, p0

    #@ad
    iput v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@af
    .line 595
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@b3
    move-object/from16 v19, v0

    #@b5
    move-object v12, v4

    #@b6
    move-object v15, v6

    #@b7
    move-object/from16 v16, p3

    #@b9
    move-object/from16 v17, p4

    #@bb
    move-object/from16 v18, p0

    #@bd
    move/from16 v20, v11

    #@bf
    .line 594
    invoke-direct/range {v12 .. v20}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    #@c2
    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_4

    #@c3
    .line 606
    :cond_5
    move-object/from16 v0, p0

    #@c5
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    #@c7
    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@ca
    move-result-object v5

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@cf
    monitor-exit v28

    #@d0
    .line 536
    return-void

    #@d1
    .line 571
    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v22    # "config$iterator":Ljava/util/Iterator;
    .local v11, "configureSuccess":Z
    .restart local v26    # "input":Landroid/view/Surface;
    .local v27, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catch_3
    move-exception v23

    #@d2
    .restart local v23    # "e":Landroid/hardware/camera2/CameraAccessException;
    move-object/from16 v14, v26

    #@d4
    .end local v26    # "input":Landroid/view/Surface;
    .local v14, "input":Landroid/view/Surface;
    goto :goto_3

    #@d5
    .line 578
    .end local v14    # "input":Landroid/view/Surface;
    .end local v23    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v26    # "input":Landroid/view/Surface;
    :catch_4
    move-exception v25

    #@d6
    .restart local v25    # "e":Landroid/os/RemoteException;
    move-object/from16 v14, v26

    #@d8
    .end local v26    # "input":Landroid/view/Surface;
    .restart local v14    # "input":Landroid/view/Surface;
    goto :goto_2
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    #@0
    .prologue
    .line 1984
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@2
    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 1980
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .locals 20
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
    .line 800
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p3

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    #@7
    move-result-object p3

    #@8
    .line 803
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v14

    #@c
    .local v14, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_3

    #@12
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v13

    #@16
    check-cast v13, Landroid/hardware/camera2/CaptureRequest;

    #@18
    .line 804
    .local v13, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 805
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    .line 806
    const-string/jumbo v3, "Each request must have at least one Surface target"

    #@27
    .line 805
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 809
    :cond_1
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v17

    #@33
    .local v17, "surface$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v16

    #@3d
    check-cast v16, Landroid/view/Surface;

    #@3f
    .line 810
    .local v16, "surface":Landroid/view/Surface;
    if-nez v16, :cond_2

    #@41
    .line 811
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v3, "Null Surface targets are not allowed"

    #@46
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 816
    .end local v13    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v16    # "surface":Landroid/view/Surface;
    .end local v17    # "surface$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@4e
    move-object/from16 v18, v0

    #@50
    monitor-enter v18

    #@51
    .line 817
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@54
    .line 820
    if-eqz p4, :cond_4

    #@56
    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    #@59
    .line 824
    :cond_4
    new-instance v12, Landroid/hardware/camera2/utils/LongParcelable;

    #@5b
    invoke-direct {v12}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 826
    .local v12, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :try_start_1
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@62
    move-object/from16 v0, p1

    #@64
    move/from16 v1, p4

    #@66
    invoke-interface {v2, v0, v1, v12}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    move-result v15

    #@6a
    .line 838
    .local v15, "requestId":I
    if-eqz p2, :cond_5

    #@6c
    .line 839
    :try_start_2
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@70
    move-object/from16 v19, v0

    #@72
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    #@74
    .line 840
    move-object/from16 v0, p0

    #@76
    iget v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    #@78
    add-int/lit8 v7, v3, -0x1

    #@7a
    move-object/from16 v3, p2

    #@7c
    move-object/from16 v4, p1

    #@7e
    move-object/from16 v5, p3

    #@80
    move/from16 v6, p4

    #@82
    .line 839
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V

    #@85
    move-object/from16 v0, v19

    #@87
    invoke-virtual {v0, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8a
    .line 847
    :cond_5
    invoke-virtual {v12}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    #@8d
    move-result-wide v10

    #@8e
    .line 849
    .local v10, "lastFrameNumber":J
    if-eqz p4, :cond_8

    #@90
    .line 850
    move-object/from16 v0, p0

    #@92
    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@94
    const/4 v3, -0x1

    #@95
    if-eq v2, v3, :cond_6

    #@97
    .line 851
    move-object/from16 v0, p0

    #@99
    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@9b
    move-object/from16 v0, p0

    #@9d
    invoke-direct {v0, v2, v10, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    #@a0
    .line 853
    :cond_6
    move-object/from16 v0, p0

    #@a2
    iput v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@a4
    .line 859
    :goto_0
    move-object/from16 v0, p0

    #@a6
    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@a8
    if-eqz v2, :cond_7

    #@aa
    .line 860
    move-object/from16 v0, p0

    #@ac
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    #@b2
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b5
    .line 862
    :cond_7
    const/4 v2, 0x0

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ba
    monitor-exit v18

    #@bb
    .line 864
    return v15

    #@bc
    .line 833
    .end local v10    # "lastFrameNumber":J
    .end local v15    # "requestId":I
    :catch_0
    move-exception v9

    #@bd
    .line 835
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    #@be
    monitor-exit v18

    #@bf
    return v2

    #@c0
    .line 831
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    #@c1
    .line 832
    .local v8, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@c4
    move-result-object v2

    #@c5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c6
    .line 816
    .end local v8    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v12    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catchall_0
    move-exception v2

    #@c7
    monitor-exit v18

    #@c8
    throw v2

    #@c9
    .line 855
    .restart local v10    # "lastFrameNumber":J
    .restart local v12    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v15    # "requestId":I
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    #@cd
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-direct {v3, v0, v15, v10, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;IJ)V

    #@d4
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d7
    goto :goto_0
.end method

.method private waitUntilIdle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 916
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 917
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 919
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@8
    const/4 v4, -0x1

    #@9
    if-eq v2, v4, :cond_0

    #@b
    .line 920
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v4, "Active repeating request ongoing"

    #@10
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 916
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2

    #@17
    .line 923
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@19
    invoke-interface {v2}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v3

    #@1d
    .line 914
    return-void

    #@1e
    .line 926
    :catch_0
    move-exception v1

    #@1f
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v3

    #@20
    .line 928
    return-void

    #@21
    .line 924
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@22
    .line 925
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@25
    move-result-object v2

    #@26
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
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
    .line 712
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 713
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 714
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
    .line 719
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 720
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "At least one request must be given"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 722
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
    .locals 6

    #@0
    .prologue
    .line 964
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 965
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    monitor-exit v3

    #@d
    .line 966
    return-void

    #@e
    .line 970
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 971
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@14
    invoke-interface {v2}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 982
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@19
    if-nez v2, :cond_2

    #@1b
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 983
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@21
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    #@23
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@26
    .line 986
    :cond_3
    const/4 v2, 0x0

    #@27
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 963
    return-void

    #@2b
    .line 973
    :catch_0
    move-exception v0

    #@2c
    .line 974
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@2e
    const-string/jumbo v4, "Exception while closing: "

    #@31
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@34
    move-result-object v5

    #@35
    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 964
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2

    #@3c
    .line 975
    :catch_1
    move-exception v1

    #@3d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 332
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 333
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
    .line 334
    .local v1, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1b
    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@1e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 336
    .end local v1    # "s":Landroid/view/Surface;
    :cond_0
    const/4 v3, 0x0

    #@23
    .line 337
    const/4 v4, 0x0

    #@24
    .line 336
    invoke-virtual {p0, v3, v0, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    #@27
    .line 330
    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z
    .locals 22
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
    .line 364
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p2, :cond_0

    #@2
    .line 365
    new-instance p2, Ljava/util/ArrayList;

    #@4
    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 367
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@a
    move-result v17

    #@b
    if-nez v17, :cond_1

    #@d
    if-eqz p1, :cond_1

    #@f
    .line 368
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v18, "cannot configure an input stream without any output streams"

    #@14
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v17

    #@18
    .line 372
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    #@1b
    .line 374
    const/16 v16, 0x0

    #@1d
    .line 376
    .local v16, "success":Z
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@21
    move-object/from16 v18, v0

    #@23
    monitor-enter v18

    #@24
    .line 377
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@27
    .line 379
    new-instance v4, Ljava/util/HashSet;

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2e
    .line 381
    .local v4, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@30
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 384
    .local v6, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    #@34
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@38
    move-object/from16 v17, v0

    #@3a
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    #@3d
    move-result v17

    #@3e
    move/from16 v0, v17

    #@40
    if-ge v10, v0, :cond_3

    #@42
    .line 385
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@46
    move-object/from16 v17, v0

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@4d
    move-result v13

    #@4e
    .line 386
    .local v13, "streamId":I
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@52
    move-object/from16 v17, v0

    #@54
    move-object/from16 v0, v17

    #@56
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v11

    #@5a
    check-cast v11, Landroid/hardware/camera2/params/OutputConfiguration;

    #@5c
    .line 388
    .local v11, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    move-object/from16 v0, p2

    #@5e
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@61
    move-result v17

    #@62
    if-nez v17, :cond_2

    #@64
    .line 389
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v17

    #@68
    move-object/from16 v0, v17

    #@6a
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 384
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 391
    :cond_2
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    goto :goto_1

    #@74
    .line 376
    .end local v4    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v6    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "streamId":I
    :catchall_0
    move-exception v17

    #@75
    monitor-exit v18

    #@76
    throw v17

    #@77
    .line 395
    .restart local v4    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v6    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@7b
    move-object/from16 v17, v0

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@81
    move-object/from16 v19, v0

    #@83
    move-object/from16 v0, v17

    #@85
    move-object/from16 v1, v19

    #@87
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@8a
    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    .line 399
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    #@90
    .line 401
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@94
    move-object/from16 v17, v0

    #@96
    invoke-interface/range {v17 .. v17}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()I

    #@99
    .line 404
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@9d
    move-object/from16 v17, v0

    #@9f
    invoke-virtual/range {v17 .. v17}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    #@a2
    move-result-object v5

    #@a3
    check-cast v5, Landroid/hardware/camera2/params/InputConfiguration;

    #@a5
    .line 405
    .local v5, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    move-object/from16 v0, p1

    #@a7
    if-eq v0, v5, :cond_4

    #@a9
    .line 406
    if-eqz p1, :cond_5

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v17

    #@b1
    if-eqz v17, :cond_5

    #@b3
    .line 421
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b6
    move-result-object v15

    #@b7
    .local v15, "streamId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@ba
    move-result v17

    #@bb
    if-eqz v17, :cond_7

    #@bd
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c0
    move-result-object v14

    #@c1
    check-cast v14, Ljava/lang/Integer;

    #@c3
    .line 422
    .local v14, "streamId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@c7
    move-object/from16 v17, v0

    #@c9
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@cc
    move-result v19

    #@cd
    move-object/from16 v0, v17

    #@cf
    move/from16 v1, v19

    #@d1
    invoke-interface {v0, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    #@d4
    .line 423
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@d8
    move-object/from16 v17, v0

    #@da
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@dd
    move-result v19

    #@de
    move-object/from16 v0, v17

    #@e0
    move/from16 v1, v19

    #@e2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e5
    goto :goto_3

    #@e6
    .line 445
    .end local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v14    # "streamId":Ljava/lang/Integer;
    .end local v15    # "streamId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    #@e7
    .line 446
    .local v7, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v7}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@ea
    move-result v17

    #@eb
    const/16 v19, 0x4

    #@ed
    move/from16 v0, v17

    #@ef
    move/from16 v1, v19

    #@f1
    if-ne v0, v1, :cond_d

    #@f3
    .line 447
    new-instance v17, Ljava/lang/IllegalStateException;

    #@f5
    const-string/jumbo v19, "The camera is currently busy. You must wait until the previous operation completes."

    #@f8
    move-object/from16 v0, v17

    #@fa
    move-object/from16 v1, v19

    #@fc
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@100
    .line 455
    .end local v7    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_1
    move-exception v17

    #@101
    .line 456
    if-eqz v16, :cond_e

    #@103
    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@106
    move-result v19

    #@107
    if-lez v19, :cond_e

    #@109
    .line 457
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@10d
    move-object/from16 v19, v0

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@113
    move-object/from16 v20, v0

    #@115
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@118
    .line 455
    :goto_4
    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@119
    .line 407
    .restart local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_5
    if-eqz v5, :cond_6

    #@11b
    .line 408
    :try_start_5
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@11f
    move-object/from16 v19, v0

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@125
    move-object/from16 v17, v0

    #@127
    invoke-virtual/range {v17 .. v17}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    #@12a
    move-result-object v17

    #@12b
    check-cast v17, Ljava/lang/Integer;

    #@12d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@130
    move-result v17

    #@131
    move-object/from16 v0, v19

    #@133
    move/from16 v1, v17

    #@135
    invoke-interface {v0, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    #@138
    .line 409
    new-instance v17, Ljava/util/AbstractMap$SimpleEntry;

    #@13a
    .line 410
    const/16 v19, -0x1

    #@13c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13f
    move-result-object v19

    #@140
    const/16 v20, 0x0

    #@142
    .line 409
    move-object/from16 v0, v17

    #@144
    move-object/from16 v1, v19

    #@146
    move-object/from16 v2, v20

    #@148
    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@14b
    move-object/from16 v0, v17

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    #@151
    .line 412
    :cond_6
    if-eqz p1, :cond_4

    #@153
    .line 413
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@157
    move-object/from16 v17, v0

    #@159
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    #@15c
    move-result v19

    #@15d
    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    #@160
    move-result v20

    #@161
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    #@164
    move-result v21

    #@165
    .line 413
    move-object/from16 v0, v17

    #@167
    move/from16 v1, v19

    #@169
    move/from16 v2, v20

    #@16b
    move/from16 v3, v21

    #@16d
    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser;->createInputStream(III)I

    #@170
    move-result v13

    #@171
    .line 415
    .restart local v13    # "streamId":I
    new-instance v17, Ljava/util/AbstractMap$SimpleEntry;

    #@173
    .line 416
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@176
    move-result-object v19

    #@177
    .line 415
    move-object/from16 v0, v17

    #@179
    move-object/from16 v1, v19

    #@17b
    move-object/from16 v2, p1

    #@17d
    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@180
    move-object/from16 v0, v17

    #@182
    move-object/from16 v1, p0

    #@184
    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    :try_end_5
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@186
    goto/16 :goto_2

    #@188
    .line 452
    .end local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v13    # "streamId":I
    :catch_1
    move-exception v8

    #@189
    .line 456
    .local v8, "e":Landroid/os/RemoteException;
    if-eqz v16, :cond_c

    #@18b
    :try_start_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@18e
    move-result v17

    #@18f
    if-lez v17, :cond_c

    #@191
    .line 457
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@195
    move-object/from16 v17, v0

    #@197
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@19b
    move-object/from16 v19, v0

    #@19d
    move-object/from16 v0, v17

    #@19f
    move-object/from16 v1, v19

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1a4
    .line 454
    :goto_5
    const/16 v17, 0x0

    #@1a6
    monitor-exit v18

    #@1a7
    return v17

    #@1a8
    .line 427
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v15    # "streamId$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ab
    move-result-object v12

    #@1ac
    .local v12, "outConfig$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1af
    move-result v17

    #@1b0
    if-eqz v17, :cond_9

    #@1b2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b5
    move-result-object v11

    #@1b6
    check-cast v11, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1b8
    .line 428
    .restart local v11    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1bb
    move-result v17

    #@1bc
    if-eqz v17, :cond_8

    #@1be
    .line 429
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@1c2
    move-object/from16 v17, v0

    #@1c4
    move-object/from16 v0, v17

    #@1c6
    invoke-interface {v0, v11}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    #@1c9
    move-result v13

    #@1ca
    .line 430
    .restart local v13    # "streamId":I
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1ce
    move-object/from16 v17, v0

    #@1d0
    move-object/from16 v0, v17

    #@1d2
    invoke-virtual {v0, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1d5
    goto :goto_6

    #@1d6
    .line 435
    .end local v11    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "streamId":I
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@1da
    move-object/from16 v17, v0

    #@1dc
    move-object/from16 v0, v17

    #@1de
    move/from16 v1, p3

    #@1e0
    invoke-interface {v0, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure(Z)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1e3
    .line 444
    const/16 v16, 0x1

    #@1e5
    .line 456
    if-eqz v16, :cond_b

    #@1e7
    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@1ea
    move-result v17

    #@1eb
    if-lez v17, :cond_b

    #@1ed
    .line 457
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1f1
    move-object/from16 v17, v0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@1f7
    move-object/from16 v19, v0

    #@1f9
    move-object/from16 v0, v17

    #@1fb
    move-object/from16 v1, v19

    #@1fd
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@200
    :goto_7
    monitor-exit v18

    #@201
    .line 465
    return v16

    #@202
    .line 437
    :catch_2
    move-exception v9

    #@203
    .line 440
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@207
    move-object/from16 v17, v0

    #@209
    const-string/jumbo v19, "Stream configuration failed"

    #@20c
    move-object/from16 v0, v17

    #@20e
    move-object/from16 v1, v19

    #@210
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@213
    .line 456
    if-eqz v16, :cond_a

    #@215
    :try_start_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@218
    move-result v17

    #@219
    if-lez v17, :cond_a

    #@21b
    .line 457
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@21f
    move-object/from16 v17, v0

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@225
    move-object/from16 v19, v0

    #@227
    move-object/from16 v0, v17

    #@229
    move-object/from16 v1, v19

    #@22b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@22e
    .line 441
    :goto_8
    const/16 v17, 0x0

    #@230
    monitor-exit v18

    #@231
    return v17

    #@232
    .line 460
    :cond_a
    :try_start_c
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@236
    move-object/from16 v17, v0

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@23c
    move-object/from16 v19, v0

    #@23e
    move-object/from16 v0, v17

    #@240
    move-object/from16 v1, v19

    #@242
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@245
    goto :goto_8

    #@246
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@24a
    move-object/from16 v17, v0

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@250
    move-object/from16 v19, v0

    #@252
    move-object/from16 v0, v17

    #@254
    move-object/from16 v1, v19

    #@256
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@259
    goto :goto_7

    #@25a
    .end local v5    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v12    # "outConfig$iterator":Ljava/util/Iterator;
    .end local v15    # "streamId$iterator":Ljava/util/Iterator;
    .restart local v8    # "e":Landroid/os/RemoteException;
    :cond_c
    move-object/from16 v0, p0

    #@25c
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@25e
    move-object/from16 v17, v0

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@264
    move-object/from16 v19, v0

    #@266
    move-object/from16 v0, v17

    #@268
    move-object/from16 v1, v19

    #@26a
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@26d
    goto/16 :goto_5

    #@26f
    .line 451
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v7    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_d
    :try_start_d
    invoke-virtual {v7}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@272
    move-result-object v17

    #@273
    throw v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@274
    .line 460
    .end local v7    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    #@276
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@278
    move-object/from16 v19, v0

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@27e
    move-object/from16 v20, v0

    #@280
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@283
    goto/16 :goto_4
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 7
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 623
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 625
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 628
    .local v3, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@d
    invoke-interface {v4, p1, v3}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 636
    :try_start_2
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@12
    .line 637
    const/4 v4, 0x0

    #@13
    const/4 v6, -0x1

    #@14
    .line 636
    invoke-direct {v0, v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@17
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v5

    #@18
    .line 639
    return-object v0

    #@19
    .line 631
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v2

    #@1a
    .line 633
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    #@1b
    monitor-exit v5

    #@1c
    return-object v4

    #@1d
    .line 629
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@1e
    .line 630
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@21
    move-result-object v4

    #@22
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    .line 622
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v3    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4
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
    .line 472
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 473
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
    .line 474
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@1b
    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@1e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 476
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 477
    const/4 v5, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v3, p2

    #@26
    move-object v4, p3

    #@27
    .line 476
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@2a
    .line 471
    return-void
.end method

.method public createCaptureSessionByOutputConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
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
    .line 489
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    #@1
    .line 490
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    .line 489
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@9
    .line 484
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
    .line 517
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 519
    const-string/jumbo v1, "Output surface list must not be null and the size must be no more than 2"

    #@e
    .line 518
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 517
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@15
    move-result v0

    #@16
    const/4 v3, 0x2

    #@17
    if-gt v0, v3, :cond_0

    #@19
    .line 522
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
    .line 523
    .local v6, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1, v1, v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    #@28
    .line 525
    new-instance v2, Ljava/util/ArrayList;

    #@2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2d
    move-result v0

    #@2e
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@31
    .line 526
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
    .line 527
    .local v7, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@43
    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@46
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 530
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
    .line 529
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@51
    .line 516
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
    .line 646
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 647
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@6
    .line 649
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    .line 650
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@b
    move-result-object v1

    #@c
    .line 649
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@f
    .line 652
    .local v0, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    #@11
    .line 653
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    #@14
    move-result v3

    #@15
    .line 652
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
    .line 646
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
    .line 501
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    #@2
    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 505
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 506
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
    .line 507
    .local v6, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    #@26
    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    #@29
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 510
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
    .line 509
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    #@35
    .line 496
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
    .line 993
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 996
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    #@6
    .line 991
    return-void

    #@7
    .line 995
    :catchall_0
    move-exception v0

    #@8
    .line 996
    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    #@b
    .line 995
    throw v0
.end method

.method public flush()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 934
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 935
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@7
    .line 937
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@9
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 941
    iget-boolean v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 942
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@14
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    #@16
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v6

    #@1a
    .line 943
    return-void

    #@1b
    .line 946
    :cond_0
    :try_start_1
    new-instance v4, Landroid/hardware/camera2/utils/LongParcelable;

    #@1d
    invoke-direct {v4}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@20
    .line 947
    .local v4, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@22
    invoke-interface {v5, v4}, Landroid/hardware/camera2/ICameraDeviceUser;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    #@25
    .line 948
    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@27
    if-eq v5, v8, :cond_1

    #@29
    .line 949
    invoke-virtual {v4}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    #@2c
    move-result-wide v2

    #@2d
    .line 950
    .local v2, "lastFrameNumber":J
    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@2f
    invoke-direct {p0, v5, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    #@32
    .line 951
    const/4 v5, -0x1

    #@33
    iput v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .end local v2    # "lastFrameNumber":J
    :cond_1
    monitor-exit v6

    #@36
    .line 933
    return-void

    #@37
    .line 955
    .end local v4    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catch_0
    move-exception v1

    #@38
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v6

    #@39
    .line 957
    return-void

    #@3a
    .line 953
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@3b
    .line 954
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@3e
    move-result-object v5

    #@3f
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 934
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v5

    #@41
    monitor-exit v6

    #@42
    throw v5
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
    .line 327
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 658
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "Surface is null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 660
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 661
    const/4 v3, -0x1

    #@f
    .line 662
    .local v3, "streamId":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    if-ge v2, v4, :cond_1

    #@18
    .line 663
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    #@20
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@23
    move-result-object v4

    #@24
    if-ne p1, v4, :cond_2

    #@26
    .line 664
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v3

    #@2c
    .line 668
    :cond_1
    const/4 v4, -0x1

    #@2d
    if-ne v3, v4, :cond_3

    #@2f
    .line 669
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v6, "Surface is not part of this session"

    #@34
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 660
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 662
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 672
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@40
    invoke-interface {v4, v3}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare(I)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v5

    #@44
    .line 657
    return-void

    #@45
    .line 675
    :catch_0
    move-exception v1

    #@46
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v5

    #@47
    .line 677
    return-void

    #@48
    .line 673
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@49
    .line 674
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@4c
    move-result-object v4

    #@4d
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 3
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 269
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    return-void

    #@9
    .line 271
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@11
    .line 273
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@13
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@18
    .line 274
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@1a
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 265
    return-void

    #@21
    .line 266
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V
    .locals 7
    .param p1, "failure"    # Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@0
    .prologue
    .line 285
    const/4 v1, 0x4

    #@1
    .line 286
    .local v1, "failureCode":I
    const/4 v2, 0x1

    #@2
    .line 288
    .local v2, "failureIsError":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@5
    move-result v4

    #@6
    packed-switch v4, :pswitch_data_0

    #@9
    .line 305
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Unknown failure in opening camera device: "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@1a
    move-result v6

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 308
    :goto_0
    move v0, v1

    #@27
    .line 309
    .local v0, "code":I
    move v3, v2

    #@28
    .line 310
    .local v3, "isError":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2a
    monitor-enter v5

    #@2b
    .line 311
    const/4 v4, 0x1

    #@2c
    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    #@2e
    .line 312
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    #@30
    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    #@32
    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    #@35
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v5

    #@39
    .line 284
    return-void

    #@3a
    .line 290
    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_0
    const/4 v1, 0x1

    #@3b
    .line 291
    goto :goto_0

    #@3c
    .line 293
    :pswitch_1
    const/4 v1, 0x2

    #@3d
    .line 294
    goto :goto_0

    #@3e
    .line 296
    :pswitch_2
    const/4 v1, 0x3

    #@3f
    .line 297
    goto :goto_0

    #@40
    .line 299
    :pswitch_3
    const/4 v2, 0x0

    #@41
    .line 300
    goto :goto_0

    #@42
    .line 302
    :pswitch_4
    const/4 v1, 0x4

    #@43
    .line 303
    goto :goto_0

    #@44
    .line 310
    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_0
    move-exception v4

    #@45
    monitor-exit v5

    #@46
    throw v4

    #@47
    .line 288
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
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
    .line 877
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 878
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "At least one request must be given"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 880
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
    .line 870
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 871
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 872
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
    .line 614
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 615
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 613
    return-void

    #@7
    .line 614
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public stopRepeating()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 885
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 886
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    #@7
    .line 887
    iget v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@9
    if-eq v6, v8, :cond_1

    #@b
    .line 889
    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@d
    .line 890
    .local v5, "requestId":I
    const/4 v6, -0x1

    #@e
    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    #@10
    .line 893
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 894
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    #@1a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 898
    :cond_0
    :try_start_1
    new-instance v4, Landroid/hardware/camera2/utils/LongParcelable;

    #@23
    invoke-direct {v4}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    #@26
    .line 899
    .local v4, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@28
    invoke-interface {v6, v5, v4}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    #@2b
    .line 900
    invoke-virtual {v4}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    #@2e
    move-result-wide v2

    #@2f
    .line 902
    .local v2, "lastFrameNumber":J
    invoke-direct {p0, v5, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .end local v2    # "lastFrameNumber":J
    .end local v4    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "requestId":I
    :cond_1
    monitor-exit v7

    #@33
    .line 883
    return-void

    #@34
    .line 906
    .restart local v5    # "requestId":I
    :catch_0
    move-exception v1

    #@35
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v7

    #@36
    .line 908
    return-void

    #@37
    .line 904
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@38
    .line 905
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@3b
    move-result-object v6

    #@3c
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 885
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v5    # "requestId":I
    :catchall_0
    move-exception v6

    #@3e
    monitor-exit v7

    #@3f
    throw v6
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 683
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "Surface is null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 685
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 686
    const/4 v3, -0x1

    #@f
    .line 687
    .local v3, "streamId":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    if-ge v2, v4, :cond_1

    #@18
    .line 688
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    #@20
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@23
    move-result-object v4

    #@24
    if-ne p1, v4, :cond_2

    #@26
    .line 689
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v3

    #@2c
    .line 693
    :cond_1
    const/4 v4, -0x1

    #@2d
    if-ne v3, v4, :cond_3

    #@2f
    .line 694
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v6, "Surface is not part of this session"

    #@34
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 685
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 687
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 697
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    #@40
    invoke-interface {v4, v3}, Landroid/hardware/camera2/ICameraDeviceUser;->tearDown(I)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v5

    #@44
    .line 682
    return-void

    #@45
    .line 700
    :catch_0
    move-exception v1

    #@46
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v5

    #@47
    .line 702
    return-void

    #@48
    .line 698
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@49
    .line 699
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@4c
    move-result-object v4

    #@4d
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

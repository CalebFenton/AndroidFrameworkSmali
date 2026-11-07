.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;
    }
.end annotation


# static fields
.field static final blacklist CHECK_PARAMS_IN_IS_SESSION_CONFIGURATION_SUPPORTED:J = 0x131e218fL

.field private static final greylist-max-o NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final greylist-max-o REQUEST_ID_NONE:I = -0x1

.field private static final blacklist sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o TAG:Ljava/lang/String;

.field private final greylist-max-o mAppTargetSdkVersion:I

.field private blacklist mBatchOutputMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallOnActive:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnBusy:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnClosed:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnDisconnected:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnIdle:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnOpened:Ljava/lang/Runnable;

.field private final blacklist mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final greylist-max-o mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final blacklist mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

.field private final greylist-max-o mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private greylist-max-o mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final greylist-max-o mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

.field private blacklist mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

.field private greylist-max-o mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final greylist-max-o mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final greylist-max-o mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFMQReader:J

.field private blacklist mFailedRepeatingRequestId:I

.field private blacklist mFailedRepeatingRequestTypes:[I

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field private greylist-max-o mIdle:Z

.field private greylist-max-o mInError:Z

.field final greylist-max-o mInterfaceLock:Ljava/lang/Object;

.field private blacklist mIsPrimaryClient:Z

.field private greylist-max-o mNextSessionId:I

.field private blacklist mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

.field private final blacklist mOfflineSupport:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mPhysicalIdsToChars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private blacklist mRemoteDeviceInit:Z

.field private greylist-max-o mRepeatingRequestId:I

.field private blacklist mRepeatingRequestTypes:[I

.field private final greylist-max-o mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private blacklist mSharedMode:Z

.field private final greylist-max-o mTotalPartialCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$rQjdWE7R1mrbFM85yUKYqEVN9Os(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyError(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xo_9-sEzfUo5YLY0z2ZXoA7vub8(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyClientSharedAccessPriorityChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatchOutputMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFMQReader(Landroid/hardware/camera2/impl/CameraDeviceImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPrimaryClient(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPhysicalIdToChars(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadResultMetadata(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeReadResultMetadata(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraManager;ILandroid/content/Context;Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Z)V
    .registers 16
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p5, "manager"    # Landroid/hardware/camera2/CameraManager;
    .param p6, "appTargetSdkVersion"    # I
    .param p7, "ctx"    # Landroid/content/Context;
    .param p8, "cameraDeviceSetup"    # Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .param p9, "sharedMode"    # Z

    .line 418
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 126
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    .line 132
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 133
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 141
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 146
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 150
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 152
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 157
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 161
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 163
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 167
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 189
    new-instance v2, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 194
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 206
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 222
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

    .line 241
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 256
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 271
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 286
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 306
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 321
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 419
    if-eqz p1, :cond_fd

    if-eqz p2, :cond_fd

    if-eqz p3, :cond_fd

    if-eqz p4, :cond_fd

    if-eqz p5, :cond_fd

    .line 423
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 424
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    invoke-direct {v2, p0, p3, p2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/impl/CameraDeviceImpl-IA;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 425
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->singleThreadExecutorNaming()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 426
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    goto :goto_bf

    .line 428
    :cond_b9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 430
    :goto_bf
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 431
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 432
    iput p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    .line 433
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 434
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    .line 435
    iput-boolean p9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    .line 437
    const/16 v2, 0x17

    .line 438
    .local v2, "MAX_TAG_LEN":I
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "CameraDevice-JV-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x17

    if-le v4, v5, :cond_e5

    .line 440
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 442
    :cond_e5
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 445
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 446
    .local v0, "partialCount":Ljava/lang/Integer;
    if-nez v0, :cond_f6

    .line 448
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_fc

    .line 450
    :cond_f6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 452
    :goto_fc
    return-void

    .line 421
    .end local v0    # "partialCount":Ljava/lang/Integer;
    .end local v2    # "MAX_TAG_LEN":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkAndFireSequenceComplete()V
    .registers 24

    .line 1986
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 1987
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 1988
    .local v4, "completedReprocessFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    .line 1990
    .local v6, "completedZslStillFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1991
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1992
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 1993
    .local v9, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v10

    .line 1995
    .local v10, "requestId":I
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_37

    .line 1996
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v11, "Camera closed while checking sequences"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return-void

    .line 1999
    :cond_37
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2000
    nop

    .line 2001
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v11

    .line 2002
    .local v11, "lastRegularFrameNumber":J
    nop

    .line 2003
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v13

    .line 2004
    .local v13, "lastReprocessFrameNumber":J
    nop

    .line 2005
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v15

    .line 2006
    .local v15, "lastZslStillFrameNumber":J
    cmp-long v0, v11, v2

    if-gtz v0, :cond_5b

    cmp-long v0, v13, v4

    if-gtz v0, :cond_5b

    cmp-long v0, v15, v6

    if-gtz v0, :cond_5b

    .line 2018
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markSequenceCompleted()V

    .line 2022
    :cond_5b
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-wide/from16 v17, v2

    .end local v2    # "completedFrameNumber":J
    .local v17, "completedFrameNumber":J
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 2023
    .local v2, "index":I
    if-ltz v2, :cond_6e

    .line 2024
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    move-object v3, v0

    .line 2025
    .local v3, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-eqz v3, :cond_9d

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2026
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;

    invoke-direct {v0, v1, v10, v3, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object/from16 v19, v0

    .line 2043
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2045
    .local v20, "ident":J
    :try_start_83
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_94

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .local v22, "index":I
    :try_start_8b
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_92

    .line 2047
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    goto :goto_a2

    .line 2047
    :catchall_92
    move-exception v0

    goto :goto_99

    .end local v22    # "index":I
    .local v2, "index":I
    .restart local v19    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_94
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .restart local v22    # "index":I
    :goto_99
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    throw v0

    .line 2025
    .end local v20    # "ident":J
    .end local v22    # "index":I
    .local v2, "index":I
    :cond_9d
    move/from16 v22, v2

    .end local v2    # "index":I
    .restart local v22    # "index":I
    goto :goto_a2

    .line 1999
    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v11    # "lastRegularFrameNumber":J
    .end local v13    # "lastReprocessFrameNumber":J
    .end local v15    # "lastZslStillFrameNumber":J
    .end local v17    # "completedFrameNumber":J
    .end local v22    # "index":I
    .local v2, "completedFrameNumber":J
    :cond_a0
    move-wide/from16 v17, v2

    .line 2052
    .end local v2    # "completedFrameNumber":J
    .restart local v17    # "completedFrameNumber":J
    :goto_a2
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2053
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isInflightCompleted()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2054
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2055
    .local v0, "index":I
    if-ltz v0, :cond_bb

    .line 2056
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2062
    :cond_bb
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 2064
    .end local v0    # "index":I
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "requestId":I
    :cond_be
    move-wide/from16 v2, v17

    goto/16 :goto_1a

    .line 2065
    .end local v17    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_c2
    return-void
.end method

.method public static greylist-max-o checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .registers 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2875
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private blacklist checkEarlyTriggerSequenceCompleteLocked(IJ[I)V
    .registers 11
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J
    .param p4, "repeatingRequestTypes"    # [I

    .line 1412
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_4d

    .line 1414
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1415
    .local v0, "index":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1416
    .local v1, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_18
    if-eqz v1, :cond_39

    .line 1417
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1428
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;

    invoke-direct {v2, p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;)V

    .line 1443
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1445
    .local v3, "ident":J
    :try_start_28
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_34

    .line 1447
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    nop

    .line 1449
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    goto :goto_4c

    .line 1447
    .restart local v2    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_34
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    throw v5

    .line 1450
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    :cond_39
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 1452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1450
    const-string v4, "did not register callback to request %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v0    # "index":I
    .end local v1    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_4c
    goto :goto_5a

    .line 1457
    :cond_4d
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(IJ[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1464
    :goto_5a
    return-void
.end method

.method static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 2853
    if-nez p0, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 2862
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2887
    if-nez p0, :cond_17

    .line 2888
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2889
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_f

    .line 2893
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v1

    goto :goto_17

    .line 2890
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2895
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_17
    :goto_17
    return-object p0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .registers 3
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

    .line 2904
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7

    .line 2905
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 2907
    :cond_7
    return-object p0
.end method

.method private greylist-max-o checkIfCameraClosedOrInError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2911
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_12

    .line 2914
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-nez v0, :cond_9

    .line 2918
    return-void

    .line 2915
    :cond_9
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2912
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 1879
    if-nez p1, :cond_3

    .line 1880
    return-void

    .line 1882
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    .line 1883
    .local v0, "inputFormat":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v1

    const-string v2, "x"

    const/4 v3, 0x0

    if-eqz v1, :cond_b5

    .line 1884
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 1887
    .local v1, "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputFormats()[I

    move-result-object v4

    .line 1888
    .local v4, "inputFormats":[I
    const/4 v5, 0x0

    .line 1889
    .local v5, "validFormat":Z
    array-length v6, v4

    :goto_20
    if-ge v3, v6, :cond_2a

    aget v7, v4, v3

    .line 1890
    .local v7, "format":I
    if-ne v7, v0, :cond_27

    .line 1891
    const/4 v5, 0x1

    .line 1889
    .end local v7    # "format":I
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1896
    :cond_2a
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->multiResRawReprocessing()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isRawFormat(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1897
    return-void

    .line 1900
    :cond_37
    const-string v3, " is not valid"

    if-eqz v5, :cond_98

    .line 1905
    const/4 v6, 0x0

    .line 1906
    .local v6, "validSize":Z
    nop

    .line 1907
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputInfo(I)Ljava/util/Collection;

    move-result-object v7

    .line 1908
    .local v7, "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_45
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 1909
    .local v9, "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_66

    .line 1910
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_66

    .line 1911
    const/4 v6, 0x1

    .line 1913
    .end local v9    # "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    :cond_66
    goto :goto_45

    .line 1915
    :cond_67
    if-eqz v6, :cond_6b

    .line 1919
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    goto/16 :goto_102

    .line 1916
    .restart local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .restart local v4    # "inputFormats":[I
    .restart local v5    # "validFormat":Z
    .restart local v6    # "validSize":Z
    .restart local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_6b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multi-resolution input size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1917
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1901
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multi-resolution input format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1920
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    :cond_b5
    invoke-direct {p0, p1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-nez v1, :cond_102

    .line 1921
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_c3

    goto :goto_102

    .line 1922
    :cond_c3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input config with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1923
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1924
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported by camera id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1927
    :cond_102
    :goto_102
    return-void
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z
    .registers 9
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "maxResolution"    # Z

    .line 1852
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1855
    .local v0, "ck":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Landroid/hardware/camera2/params/StreamConfigurationMap;>;"
    if-eqz p2, :cond_6

    .line 1856
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1859
    :cond_6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1861
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1862
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1863
    return v2

    .line 1866
    :cond_18
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1867
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1869
    if-eqz v1, :cond_46

    .line 1870
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1872
    return v2

    .line 1874
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :cond_46
    goto :goto_24

    .line 1875
    :cond_47
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z
    .registers 15
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1815
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1816
    .local v0, "inputFormats":[I
    const/4 v1, 0x0

    .line 1817
    .local v1, "validFormat":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    .line 1818
    .local v2, "inputFormat":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    if-ge v5, v3, :cond_16

    aget v6, v0, v5

    .line 1819
    .local v6, "format":I
    if-ne v6, v2, :cond_13

    .line 1820
    const/4 v1, 0x1

    .line 1818
    .end local v6    # "format":I
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1825
    :cond_16
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isRawFormat(I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1e

    .line 1826
    return v5

    .line 1829
    :cond_1e
    if-nez v1, :cond_21

    .line 1830
    return v4

    .line 1833
    :cond_21
    const/4 v3, 0x0

    .line 1834
    .local v3, "validSize":Z
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 1835
    .local v6, "inputSizes":[Landroid/util/Size;
    array-length v7, v6

    move v8, v4

    :goto_28
    if-ge v8, v7, :cond_44

    aget-object v9, v6, v8

    .line 1836
    .local v9, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_41

    .line 1837
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_41

    .line 1838
    const/4 v3, 0x1

    .line 1835
    .end local v9    # "s":Landroid/util/Size;
    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 1842
    :cond_44
    if-nez v3, :cond_47

    .line 1843
    return v4

    .line 1845
    :cond_47
    return v5
.end method

.method private blacklist checkSharedOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)Z
    .registers 11
    .param p1, "outConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 859
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 860
    return v1

    .line 862
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_CONFIGURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 863
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;

    .line 864
    .local v0, "sharedSessionConfiguration":Landroid/hardware/camera2/params/SharedSessionConfiguration;
    if-nez v0, :cond_15

    .line 865
    return v1

    .line 868
    :cond_15
    nop

    .line 869
    invoke-virtual {v0}, Landroid/hardware/camera2/params/SharedSessionConfiguration;->getOutputStreamsInformation()Ljava/util/List;

    move-result-object v2

    .line 870
    .local v2, "sharedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;

    .line 871
    .local v4, "sharedConfig":Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaceGroupId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_91

    .line 872
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getMirrorMode()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getMirrorMode()I

    move-result v6

    if-ne v5, v6, :cond_91

    .line 873
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isReadoutTimestampEnabled()Z

    move-result v5

    .line 874
    invoke-virtual {v4}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->isReadoutTimestampEnabled()Z

    move-result v6

    if-ne v5, v6, :cond_91

    .line 875
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getTimestampBase()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getTimestampBase()I

    move-result v6

    if-ne v5, v6, :cond_91

    .line 876
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getStreamUseCase()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_91

    .line 877
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_91

    .line 879
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-virtual {v4}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    .line 879
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 881
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSensorPixelModes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_91

    .line 882
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isMultiResolution()Z

    move-result v5

    if-nez v5, :cond_91

    .line 883
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v5

    if-nez v5, :cond_91

    .line 884
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->isShared()Z

    move-result v5

    if-nez v5, :cond_91

    .line 886
    const/4 v1, 0x1

    return v1

    .line 888
    .end local v4    # "sharedConfig":Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    :cond_91
    goto :goto_1e

    .line 889
    :cond_92
    return v1
.end method

.method private blacklist checkSharedSessionConfiguration(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 893
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 894
    .local v1, "out":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkSharedOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 895
    const/4 v0, 0x0

    return v0

    .line 897
    .end local v1    # "out":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_18
    goto :goto_4

    .line 898
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V
    .registers 25
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "operatingMode"    # I
    .param p6, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 924
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v4, p0

    move/from16 v1, p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 925
    .local v6, "createSessionStartTime":J
    iget-object v8, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 930
    :try_start_b
    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 932
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v0, :cond_15

    move v0, v9

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    move v10, v0

    .line 933
    .local v10, "isSharedSession":Z
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_152

    if-eqz v0, :cond_51

    :try_start_1d
    iget-boolean v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_4a

    if-eqz v0, :cond_51

    .line 934
    if-eqz v10, :cond_40

    .line 937
    move-object/from16 v3, p2

    :try_start_25
    invoke-direct {v4, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkSharedSessionConfiguration(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 940
    if-nez p1, :cond_2e

    goto :goto_53

    .line 941
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shared capture session doesn\'t support input configuration yet."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0

    .line 938
    .restart local v6    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output configurations"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0

    .line 1027
    .end local v10    # "isSharedSession":Z
    .restart local v6    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_3e
    move-exception v0

    goto :goto_4d

    .line 935
    .restart local v10    # "isSharedSession":Z
    :cond_40
    move-object/from16 v3, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid session type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0

    .line 1027
    .end local v10    # "isSharedSession":Z
    .restart local v6    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_4a
    move-exception v0

    move-object/from16 v3, p2

    :goto_4d
    move-wide/from16 v16, v6

    goto/16 :goto_155

    .line 933
    .restart local v10    # "isSharedSession":Z
    :cond_51
    move-object/from16 v3, p2

    .line 946
    :goto_53
    if-ne v1, v9, :cond_57

    move v0, v9

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    move v11, v0

    .line 948
    .local v11, "isConstrainedHighSpeed":Z
    if-eqz v11, :cond_66

    if-nez p1, :cond_5e

    goto :goto_66

    .line 949
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0
    :try_end_66
    .catchall {:try_start_25 .. :try_end_66} :catchall_3e

    .line 953
    .restart local v6    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_66
    :goto_66
    :try_start_66
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_152

    if-eqz v0, :cond_6f

    .line 954
    :try_start_6a
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->commitStats()V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_3e

    .line 957
    :cond_6f
    :try_start_6f
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_152

    if-eqz v0, :cond_78

    .line 958
    :try_start_73
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->commitStats()V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_3e

    .line 963
    :cond_78
    :try_start_78
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_152

    if-eqz v0, :cond_81

    .line 964
    :try_start_7c
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_3e

    .line 967
    :cond_81
    :try_start_81
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_152

    const/4 v12, 0x0

    if-eqz v0, :cond_8d

    .line 968
    :try_start_86
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 969
    iput-object v12, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_3e

    .line 972
    :cond_8d
    :try_start_8d
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_152

    if-eqz v0, :cond_98

    .line 973
    :try_start_91
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 974
    iput-object v12, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_3e

    .line 978
    :cond_98
    const/4 v13, 0x1

    .line 979
    .local v13, "configureSuccess":Z
    const/4 v14, 0x0

    .line 980
    .local v14, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v15, 0x0

    .line 983
    .local v15, "input":Landroid/view/Surface;
    move-object v2, v4

    move v4, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    :try_start_a2
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    move-result v0
    :try_end_a6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a2 .. :try_end_a6} :catch_be
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_ba

    move-object v4, v1

    move-wide/from16 v16, v6

    .end local v6    # "createSessionStartTime":J
    .local v16, "createSessionStartTime":J
    move v13, v0

    .line 985
    if-ne v13, v9, :cond_b8

    if-eqz p1, :cond_b8

    .line 986
    :try_start_ae
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_b4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_ae .. :try_end_b4} :catch_b6
    .catchall {:try_start_ae .. :try_end_b4} :catchall_157

    move-object v15, v0

    goto :goto_b8

    .line 988
    :catch_b6
    move-exception v0

    goto :goto_c2

    .line 995
    :cond_b8
    :goto_b8
    move v6, v13

    goto :goto_c6

    .line 1027
    .end local v10    # "isSharedSession":Z
    .end local v11    # "isConstrainedHighSpeed":Z
    .end local v13    # "configureSuccess":Z
    .end local v14    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .end local v15    # "input":Landroid/view/Surface;
    .end local v16    # "createSessionStartTime":J
    .restart local v6    # "createSessionStartTime":J
    :catchall_ba
    move-exception v0

    move-object v4, v1

    goto/16 :goto_153

    .line 988
    .restart local v10    # "isSharedSession":Z
    .restart local v11    # "isConstrainedHighSpeed":Z
    .restart local v13    # "configureSuccess":Z
    .restart local v14    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v15    # "input":Landroid/view/Surface;
    :catch_be
    move-exception v0

    move-object v4, v1

    move-wide/from16 v16, v6

    .line 989
    .end local v6    # "createSessionStartTime":J
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v16    # "createSessionStartTime":J
    :goto_c2
    const/4 v13, 0x0

    .line 990
    move-object v14, v0

    .line 991
    const/4 v15, 0x0

    move v6, v13

    .line 998
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v13    # "configureSuccess":Z
    .local v6, "configureSuccess":Z
    :goto_c6
    const/4 v9, 0x0

    .line 999
    .local v9, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz v11, :cond_114

    .line 1000
    :try_start_c9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 1001
    .local v13, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1002
    .local v1, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    nop

    .end local v1    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_d7

    .line 1004
    :cond_ec
    nop

    .line 1005
    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1006
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v13, v12, v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 1008
    move-object v1, v0

    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v1, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v0, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-object v2, v1

    .end local v1    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v2, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget v1, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v5, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v3, p4

    move-object v12, v2

    move-object/from16 v2, p3

    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v12, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    .line 1011
    .end local v9    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v12    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v13    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v0, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object v2, v15

    goto :goto_13f

    .end local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v9    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_114
    if-eqz v10, :cond_129

    .line 1012
    new-instance v0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    iget v1, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v5, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    move-object v2, v15

    .end local v9    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_13f

    .line 1015
    .end local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v9    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_129
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v1, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move v7, v6

    .end local v6    # "configureSuccess":Z
    .local v7, "configureSuccess":Z
    iget-object v6, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;
    :try_end_134
    .catchall {:try_start_c9 .. :try_end_134} :catchall_157

    move-object/from16 v3, p3

    move-object v5, v4

    move-object v2, v15

    move-object/from16 v4, p4

    .end local v15    # "input":Landroid/view/Surface;
    .local v2, "input":Landroid/view/Surface;
    :try_start_13a
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_14f

    move-object v4, v5

    move v6, v7

    .line 1020
    .end local v7    # "configureSuccess":Z
    .end local v9    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v6    # "configureSuccess":Z
    :goto_13f
    :try_start_13f
    iput-object v0, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1022
    if-nez v14, :cond_14d

    .line 1026
    iget-object v1, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 1027
    .end local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v2    # "input":Landroid/view/Surface;
    .end local v6    # "configureSuccess":Z
    .end local v10    # "isSharedSession":Z
    .end local v11    # "isConstrainedHighSpeed":Z
    .end local v14    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    monitor-exit v8

    .line 1028
    return-void

    .line 1023
    .restart local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v2    # "input":Landroid/view/Surface;
    .restart local v6    # "configureSuccess":Z
    .restart local v10    # "isSharedSession":Z
    .restart local v11    # "isConstrainedHighSpeed":Z
    .restart local v14    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :cond_14d
    nop

    .end local v16    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v14

    .line 1027
    .end local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v2    # "input":Landroid/view/Surface;
    .end local v6    # "configureSuccess":Z
    .end local v10    # "isSharedSession":Z
    .end local v11    # "isConstrainedHighSpeed":Z
    .end local v14    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v16    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_14f
    move-exception v0

    move-object v4, v5

    goto :goto_155

    .end local v16    # "createSessionStartTime":J
    .local v6, "createSessionStartTime":J
    :catchall_152
    move-exception v0

    :goto_153
    move-wide/from16 v16, v6

    .end local v6    # "createSessionStartTime":J
    .restart local v16    # "createSessionStartTime":J
    :goto_155
    monitor-exit v8
    :try_end_156
    .catchall {:try_start_13f .. :try_end_156} :catchall_157

    throw v0

    :catchall_157
    move-exception v0

    goto :goto_155
.end method

.method public static blacklist disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V
    .registers 6
    .param p0, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "targetSdkVersion"    # I
    .param p2, "templateType"    # I

    .line 1061
    const/16 v0, 0x1a

    if-lt p1, v0, :cond_8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 1063
    return-void

    .line 1066
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1067
    .local v0, "enableZsl":Ljava/lang/Boolean;
    if-nez v0, :cond_13

    .line 1069
    return-void

    .line 1072
    :cond_13
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1073
    return-void
.end method

.method private greylist-max-o getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2

    .line 2926
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private blacklist getPhysicalIdToChars()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    if-nez v0, :cond_17

    .line 467
    :try_start_4
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_e} :catch_f

    .line 470
    goto :goto_17

    .line 468
    :catch_f
    move-exception v0

    .line 469
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unable to query the physical characteristics map!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I
    .registers 5
    .param p1, "requestArray"    # [Landroid/hardware/camera2/CaptureRequest;

    .line 1467
    array-length v0, p1

    new-array v0, v0, [I

    .line 1468
    .local v0, "requestTypes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 1469
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    aput v2, v0, v1

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1471
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private blacklist hasBatchedOutputs(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    .line 1475
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x1

    .line 1476
    .local v0, "hasBatchedOutputs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1477
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1478
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1479
    const/4 v0, 0x0

    .line 1480
    goto :goto_28

    .line 1482
    :cond_16
    if-nez v1, :cond_25

    .line 1483
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    .line 1484
    .local v3, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_25

    .line 1485
    const/4 v0, 0x0

    .line 1486
    goto :goto_28

    .line 1476
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1490
    .end local v1    # "i":I
    :cond_28
    :goto_28
    return v0
.end method

.method private greylist-max-o isClosed()Z
    .registers 2

    .line 2922
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist isRawFormat(I)Z
    .registers 3
    .param p1, "format"    # I

    .line 2930
    const/16 v0, 0x24

    if-eq p1, v0, :cond_13

    const/16 v0, 0x25

    if-eq p1, v0, :cond_13

    const/16 v0, 0x26

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeCreateFMQReader(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadResultMetadata(JJ)J
.end method

.method private blacklist notifyClientSharedAccessPriorityChanged(Z)V
    .registers 3
    .param p1, "primaryClient"    # Z

    .line 2152
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2153
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    .line 2154
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClientSharedAccessPriorityChanged(Landroid/hardware/camera2/CameraDevice;Z)V

    .line 2157
    :cond_d
    return-void
.end method

.method private blacklist notifyError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 2219
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2220
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 2222
    :cond_b
    return-void
.end method

.method private blacklist onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 22
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 2229
    move-object/from16 v1, p0

    move/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v12

    .line 2230
    .local v12, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v8

    .line 2231
    .local v8, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v13

    .line 2232
    .local v13, "frameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorPhysicalCameraId()Ljava/lang/String;

    move-result-object v15

    .line 2233
    .local v15, "errorPhysicalCameraId":Ljava/lang/String;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2235
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-nez v2, :cond_33

    .line 2236
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 2237
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2236
    const-string v4, "Receive capture error on unknown request ID %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    return-void

    .line 2241
    :cond_33
    invoke-virtual {v2, v8}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 2243
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v0, 0x0

    .line 2244
    .local v0, "failureDispatch":Ljava/lang/Runnable;
    const/4 v4, 0x5

    if-ne v7, v4, :cond_a2

    .line 2247
    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v5

    .line 2247
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2249
    .local v9, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    if-nez v9, :cond_62

    .line 2250
    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 2252
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 2250
    const-string v6, "Stream %d has been removed. Skipping buffer lost callback"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    return-void

    .line 2255
    :cond_62
    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v0

    .end local v0    # "failureDispatch":Ljava/lang/Runnable;
    .local v11, "failureDispatch":Ljava/lang/Runnable;
    :goto_6b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    .line 2256
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 2257
    goto :goto_6b

    .line 2264
    :cond_7f
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;

    move-wide v5, v13

    .end local v13    # "frameNumber":J
    .local v5, "frameNumber":J
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .end local v5    # "frameNumber":J
    .restart local v13    # "frameNumber":J
    move-object v11, v0

    .line 2274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2276
    .local v5, "ident":J
    :try_start_8a
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_96

    .line 2278
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2279
    nop

    .line 2280
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "ident":J
    goto :goto_6b

    .line 2278
    .restart local v4    # "surface":Landroid/view/Surface;
    .restart local v5    # "ident":J
    :catchall_96
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2279
    throw v0

    .line 2281
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "ident":J
    .end local v9    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_9b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move v4, v8

    goto/16 :goto_12e

    .line 2282
    .end local v11    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v0    # "failureDispatch":Ljava/lang/Runnable;
    :cond_a2
    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v7, v4, :cond_a8

    const/4 v11, 0x1

    goto :goto_a9

    :cond_a8
    move v11, v5

    .line 2288
    .local v11, "mayHaveBuffers":Z
    :goto_a9
    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v4, :cond_b7

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 2289
    const/4 v10, 0x1

    goto :goto_b8

    .line 2290
    :cond_b7
    move v10, v5

    :goto_b8
    nop

    .line 2292
    .local v10, "reason":I
    move v4, v8

    .end local v8    # "subsequenceId":I
    .local v4, "subsequenceId":I
    new-instance v8, Landroid/hardware/camera2/CaptureFailure;

    move-object v9, v3

    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-direct/range {v8 .. v15}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 2300
    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v8, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v5, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;

    invoke-direct {v5, v1, v2, v3, v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2316
    .end local v0    # "failureDispatch":Ljava/lang/Runnable;
    .local v5, "failureDispatch":Ljava/lang/Runnable;
    if-nez v15, :cond_11b

    .line 2318
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 2319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d4
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v0, v6, :cond_102

    .line 2320
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    sub-int v9, v4, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v16, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v17, "request":Landroid/hardware/camera2/CaptureRequest;
    int-to-long v2, v9

    sub-long v2, v13, v2

    .line 2321
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v9

    .line 2320
    move/from16 v18, v0

    const/4 v0, 0x1

    .end local v0    # "i":I
    .local v18, "i":I
    invoke-virtual {v6, v2, v3, v0, v9}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2319
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto :goto_d4

    .end local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_102
    move/from16 v18, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v0    # "i":I
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_117

    .line 2324
    .end local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_109
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 2325
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    .line 2324
    const/4 v3, 0x1

    invoke-virtual {v0, v13, v14, v3, v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 2328
    :goto_117
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    goto :goto_11f

    .line 2316
    .end local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_11b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 2332
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v16    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    :goto_11f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2334
    .local v2, "ident":J
    :try_start_123
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_12f

    .line 2336
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2337
    move-object v11, v5

    .line 2340
    .end local v2    # "ident":J
    .end local v5    # "failureDispatch":Ljava/lang/Runnable;
    .end local v8    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v10    # "reason":I
    .local v11, "failureDispatch":Ljava/lang/Runnable;
    :goto_12e
    return-void

    .line 2336
    .restart local v2    # "ident":J
    .restart local v5    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v8    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v10    # "reason":I
    .local v11, "mayHaveBuffers":Z
    :catchall_12f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2337
    throw v0
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .registers 18
    .param p1, "lastCompletedRegularFrameNumber"    # J
    .param p3, "lastCompletedReprocessFrameNumber"    # J
    .param p5, "lastCompletedZslStillFrameNumber"    # J

    .line 2079
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2080
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2081
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 2082
    .local v1, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v2

    .line 2084
    .local v2, "requestId":I
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v3, :cond_22

    .line 2085
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Camera closed while removing completed callback holders"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return-void

    .line 2089
    :cond_22
    nop

    .line 2090
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v3

    .line 2091
    .local v3, "lastRegularFrameNumber":J
    nop

    .line 2092
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v5

    .line 2093
    .local v5, "lastReprocessFrameNumber":J
    nop

    .line 2094
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v7

    .line 2096
    .local v7, "lastZslStillFrameNumber":J
    cmp-long v9, v3, p1

    if-gtz v9, :cond_57

    cmp-long v9, v5, p3

    if-gtz v9, :cond_57

    cmp-long v9, v7, p5

    if-gtz v9, :cond_57

    .line 2100
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 2101
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 2102
    .local v9, "index":I
    if-ltz v9, :cond_50

    .line 2103
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2114
    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2115
    .end local v9    # "index":I
    goto :goto_57

    .line 2119
    :cond_54
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markInflightCompleted()V

    .line 2122
    .end local v1    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v2    # "requestId":I
    .end local v3    # "lastRegularFrameNumber":J
    .end local v5    # "lastReprocessFrameNumber":J
    .end local v7    # "lastZslStillFrameNumber":J
    :cond_57
    :goto_57
    goto :goto_6

    .line 2123
    :cond_58
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .registers 7
    .param p1, "code"    # I

    .line 2208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2211
    .local v0, "ident":J
    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 2212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2211
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2212
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2211
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    .line 2214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2215
    nop

    .line 2216
    return-void

    .line 2214
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2215
    throw v2
.end method

.method private blacklist submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I
    .registers 18
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1514
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move/from16 v4, p4

    move-object/from16 v0, p3

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1516
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1517
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1520
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 1521
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 1526
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 1527
    .local v5, "surface":Landroid/view/Surface;
    if-eqz v5, :cond_3f

    .line 1530
    .end local v5    # "surface":Landroid/view/Surface;
    goto :goto_30

    .line 1528
    .restart local v5    # "surface":Landroid/view/Surface;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null Surface targets are not allowed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1531
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "surface":Landroid/view/Surface;
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :cond_47
    goto :goto_12

    .line 1522
    .restart local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Each request must have at least one Surface target"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1533
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :cond_50
    if-eqz v4, :cond_55

    .line 1534
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1539
    :cond_55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/CaptureRequest;

    move-object v7, v0

    .line 1541
    .local v7, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    array-length v0, v7

    const/4 v8, 0x0

    move v1, v8

    :goto_65
    if-ge v1, v0, :cond_71

    aget-object v2, v7, v1

    .line 1542
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    .line 1541
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1545
    :cond_71
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, v7, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0

    move-object v9, v0

    .line 1550
    .local v9, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    array-length v0, v7

    move v1, v8

    :goto_7a
    if-ge v1, v0, :cond_84

    aget-object v2, v7, v1

    .line 1551
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    .line 1550
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 1556
    :cond_84
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->hasBatchedOutputs(Ljava/util/List;)Z

    move-result v0

    move v10, v0

    .line 1557
    .local v10, "hasBatchedOutputs":Z
    if-eqz v10, :cond_a0

    .line 1558
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1559
    .local v0, "requestCount":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    .end local v0    # "requestCount":I
    :cond_a0
    if-eqz p2, :cond_b6

    .line 1563
    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v12

    new-instance v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v1, -0x1

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    :cond_b6
    if-eqz p4, :cond_d5

    .line 1573
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c8

    .line 1574
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1575
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v4

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1574
    invoke-direct {p0, v0, v4, v5, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1578
    :cond_c8
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1579
    invoke-direct {p0, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    goto :goto_df

    .line 1581
    :cond_d5
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    :goto_df
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v0, :cond_ea

    .line 1586
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1588
    :cond_ea
    iput-boolean v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1590
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    monitor-exit v6

    return v0

    .line 1591
    .end local v7    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .end local v9    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    .end local v10    # "hasBatchedOutputs":Z
    :catchall_f2
    move-exception v0

    monitor-exit v6
    :try_end_f4
    .catchall {:try_start_b .. :try_end_f4} :catchall_f2

    throw v0
.end method

.method private blacklist updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V
    .registers 18
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "requestType"    # I
    .param p5, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p6, "isPartialResult"    # Z

    .line 1495
    const/4 v0, 0x1

    .line 1497
    .local v0, "requestCount":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1498
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_33

    .line 1500
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    int-to-long v3, v3

    sub-long v3, p2, v3

    move v7, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v1    # "i":I
    :cond_33
    goto :goto_3f

    .line 1504
    :cond_34
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-wide v6, p2

    move v10, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1507
    :goto_3f
    return-void
.end method

.method private greylist-max-o waitUntilIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1721
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1722
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1724
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 1728
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V

    .line 1729
    monitor-exit v0

    .line 1730
    return-void

    .line 1725
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v1

    .line 1729
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 2941
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died unexpectedly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_25

    .line 2944
    return-void

    .line 2947
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2948
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$16;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$16;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2957
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2959
    .local v1, "ident":J
    :try_start_31
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 2961
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2962
    nop

    .line 2963
    return-void

    .line 2961
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2962
    throw v3
.end method

.method public blacklist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public blacklist captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1388
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1391
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1389
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 1757
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1759
    monitor-exit v0

    return-void

    .line 1762
    :cond_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 1763
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1764
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1768
    :cond_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_23

    .line 1769
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->commitStats()V

    .line 1772
    :cond_23
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_2c

    .line 1773
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->commitStats()V

    .line 1776
    :cond_2c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v1, :cond_3b

    .line 1777
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1778
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1781
    :cond_3b
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_46

    .line 1782
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 1783
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1786
    :cond_46
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_51

    .line 1787
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 1788
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 1794
    :cond_51
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_59

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_60

    .line 1795
    :cond_59
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1797
    :cond_60
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeClose(J)V

    .line 1799
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 1800
    monitor-exit v0

    .line 1801
    return-void

    .line 1800
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public greylist-max-o configureOutputs(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 590
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 591
    .local v4, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 592
    .local v1, "s":Landroid/view/Surface;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v1    # "s":Landroid/view/Surface;
    goto :goto_e

    .line 594
    :cond_23
    nop

    .line 596
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 594
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    .line 598
    return-void
.end method

.method public blacklist configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z
    .registers 24
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .param p5, "createSessionStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CaptureRequest;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 628
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-wide/from16 v4, p5

    if-nez p2, :cond_11

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v0, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_13

    .line 628
    .end local v0    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_11
    move-object/from16 v6, p2

    .line 631
    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v6, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    if-nez v2, :cond_1c

    goto :goto_24

    .line 632
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "cannot configure an input stream without any output streams"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_24
    :goto_24
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 638
    const/4 v7, 0x0

    .line 640
    .local v7, "success":Z
    iget-object v8, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 641
    :try_start_2b
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 643
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 645
    .local v9, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 648
    .local v10, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v0, v11, :cond_6c

    .line 649
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 650
    .local v11, "streamId":I
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 652
    .local v12, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62

    invoke-virtual {v12}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v13

    if-eqz v13, :cond_5e

    goto :goto_62

    .line 658
    :cond_5e
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 656
    :cond_62
    :goto_62
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v11    # "streamId":I
    .end local v12    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 662
    .end local v0    # "i":I
    :cond_6c
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 663
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_1e6

    .line 668
    :try_start_76
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v0, :cond_7d

    .line 669
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 672
    :cond_7d
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 675
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 676
    .local v0, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    const/4 v12, 0x0

    if-eq v2, v0, :cond_e1

    if-eqz v2, :cond_99

    .line 677
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_96

    goto :goto_99

    :cond_96
    const/16 p2, 0x0

    goto :goto_e3

    .line 678
    :cond_99
    :goto_99
    if-eqz v0, :cond_b8

    .line 679
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v14}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 680
    new-instance v13, Ljava/util/AbstractMap$SimpleEntry;

    .line 681
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 683
    :cond_b8
    if-eqz v2, :cond_de

    .line 684
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v14

    .line 685
    invoke-virtual {v2}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v15
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_c4} :catch_194
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_76 .. :try_end_c4} :catch_182
    .catchall {:try_start_76 .. :try_end_c4} :catchall_180

    const/16 p2, 0x0

    :try_start_c6
    invoke-virtual {v2}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v11

    .line 686
    invoke-virtual {v2}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v12

    .line 684
    invoke-virtual {v13, v14, v15, v11, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(IIIZ)I

    move-result v11

    .line 687
    .restart local v11    # "streamId":I
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    .line 688
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    goto :goto_e3

    .line 683
    .end local v11    # "streamId":I
    :cond_de
    const/16 p2, 0x0

    goto :goto_e3

    .line 676
    :cond_e1
    const/16 p2, 0x0

    .line 693
    :goto_e3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_106

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 694
    .local v12, "streamId":Ljava/lang/Integer;
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 695
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->delete(I)V

    .line 696
    .end local v12    # "streamId":Ljava/lang/Integer;
    goto :goto_e7

    .line 699
    :cond_106
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_128

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 700
    .local v12, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_127

    .line 701
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v13, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v13

    .line 702
    .local v13, "streamId":I
    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    .end local v12    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "streamId":I
    :cond_127
    goto :goto_10a

    .line 707
    :cond_128
    if-eqz p4, :cond_135

    .line 708
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 709
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    .line 708
    invoke-virtual {v11, v3, v12, v4, v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .local v11, "offlineStreamIds":[I
    goto :goto_13c

    .line 711
    .end local v11    # "offlineStreamIds":[I
    :cond_135
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12, v4, v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .line 715
    .restart local v11    # "offlineStreamIds":[I
    :goto_13c
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 716
    if-eqz v11, :cond_161

    array-length v12, v11

    if-lez v12, :cond_161

    .line 717
    array-length v12, v11

    move/from16 v13, p2

    :goto_149
    if-ge v13, v12, :cond_15e

    aget v14, v11, v13

    .line 718
    .local v14, "offlineStreamId":I
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v16, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_158} :catch_17e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c6 .. :try_end_158} :catch_182
    .catchall {:try_start_c6 .. :try_end_158} :catchall_180

    .line 717
    nop

    .end local v14    # "offlineStreamId":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_149

    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_15e
    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    goto :goto_163

    .line 716
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_161
    move-object/from16 v16, v0

    .line 722
    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :goto_163
    const/4 v7, 0x1

    .line 735
    .end local v11    # "offlineStreamIds":[I
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    if-eqz v7, :cond_174

    :try_start_166
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_174

    .line 736
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17c

    .line 739
    :cond_174
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 741
    nop

    .line 742
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_17c
    monitor-exit v8
    :try_end_17d
    .catchall {:try_start_166 .. :try_end_17d} :catchall_1e6

    .line 744
    return v7

    .line 723
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_17e
    move-exception v0

    goto :goto_197

    .line 735
    :catchall_180
    move-exception v0

    goto :goto_1cd

    .line 728
    :catch_182
    move-exception v0

    .line 729
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_183
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_192

    .line 730
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v11, v12, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v11

    .line 733
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :cond_192
    nop

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 723
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catch_194
    move-exception v0

    const/16 p2, 0x0

    .line 726
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_197
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stream configuration failed due to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_183 .. :try_end_1b3} :catchall_180

    .line 727
    nop

    .line 735
    if-eqz v7, :cond_1c4

    :try_start_1b6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1c4

    .line 736
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1cb

    .line 739
    :cond_1c4
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1cb
    monitor-exit v8

    .line 727
    return p2

    .line 735
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1cd
    if-eqz v7, :cond_1dd

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1dd

    .line 736
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e4

    .line 739
    :cond_1dd
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 741
    :goto_1e4
    nop

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 742
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catchall_1e6
    move-exception v0

    monitor-exit v8
    :try_end_1e8
    .catchall {:try_start_1b6 .. :try_end_1e8} :catchall_1e6

    throw v0
.end method

.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 11
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1110
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1111
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1113
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1114
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "In shared session mode,only primary clients can create capture request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "templateType":I
    throw v0

    .line 1118
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "templateType":I
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    .line 1120
    .local v0, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v4, v2

    .line 1122
    .end local v0    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v4, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 1124
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1126
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1128
    .local v3, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v1

    return-object v3

    .line 1129
    .end local v3    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v4    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public whitelist createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 12
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1079
    .local p2, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1082
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    if-eqz v0, :cond_20

    :try_start_c
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    if-eqz v0, :cond_15

    goto :goto_20

    .line 1083
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "In shared session mode,only primary clients can create capture request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "templateType":I
    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1d

    .line 1104
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "templateType":I
    .restart local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1d
    move-exception v0

    move-object v8, p2

    goto :goto_60

    .line 1087
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_5e

    if-eqz v2, :cond_43

    :try_start_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1088
    .local v2, "physicalId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1091
    .end local v2    # "physicalId":Ljava/lang/String;
    goto :goto_24

    .line 1089
    .restart local v2    # "physicalId":Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Physical id matches the logical id!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "templateType":I
    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v0
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_1d

    .line 1093
    .end local v2    # "physicalId":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "templateType":I
    .restart local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_43
    const/4 v0, 0x0

    .line 1095
    .local v0, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_44
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v4, v2

    .line 1097
    .end local v0    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v4, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 1099
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1101
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_5e

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v8, p2

    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_59
    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1103
    .local v3, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v1

    return-object v3

    .line 1104
    .end local v3    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v4    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_5e
    move-exception v0

    move-object v8, p2

    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_62

    throw v0

    :catchall_62
    move-exception v0

    goto :goto_60
.end method

.method public whitelist createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 9
    .param p1, "config"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 904
    if-eqz p1, :cond_37

    .line 908
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 909
    .local v2, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz v2, :cond_2f

    .line 912
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 915
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 916
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v5

    .line 917
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionParameters()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 915
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 918
    return-void

    .line 913
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    .end local v2    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 751
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 752
    .local v4, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 753
    .local v1, "surface":Landroid/view/Surface;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v1    # "surface":Landroid/view/Surface;
    goto :goto_e

    .line 755
    :cond_23
    nop

    .line 756
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 755
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v5, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 758
    return-void
.end method

.method public whitelist createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 12
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 770
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 772
    .local v3, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    .end local p2    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v4, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 774
    return-void
.end method

.method public whitelist createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 830
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_40

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 835
    .local v4, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 836
    .local v1, "surface":Landroid/view/Surface;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v1    # "surface":Landroid/view/Surface;
    goto :goto_1d

    .line 838
    :cond_32
    nop

    .line 839
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 838
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v5, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 842
    return-void

    .line 830
    .end local v4    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    :cond_40
    move-object v5, p2

    .line 831
    .end local p2    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v5    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
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

    .line 850
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 851
    .local v3, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 852
    .local v1, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v1    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_a

    .line 854
    :cond_1f
    nop

    .line 855
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 854
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    move-object v4, p4

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v2, "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v4, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v6, "operatingMode":I
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 856
    return-void
.end method

.method public whitelist createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V
    .registers 10
    .param p1, "extensionConfiguration"    # Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2990
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 2991
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "In shared session mode,extension sessions are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2995
    :cond_13
    :goto_13
    new-instance v0, Ljava/util/HashMap;

    .line 2996
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getPhysicalIdToChars()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    .line 2997
    .local v3, "characteristicsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    const/4 v1, 0x1

    .line 2999
    .local v1, "initializationFailed":Z
    new-instance v7, Landroid/os/Binder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 3001
    .local v7, "token":Landroid/os/IBinder;
    :try_start_49
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 3002
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 3003
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 3001
    invoke-static {v0, v7, v2, v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 3004
    .local v0, "ret":Z
    if-eqz v0, :cond_8c

    .line 3009
    nop

    .line 3010
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    .line 3009
    invoke-static {v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 3011
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_6a} :catch_9f
    .catchall {:try_start_49 .. :try_end_6a} :catchall_9a

    .line 3012
    move-object v2, p0

    move-object v5, p1

    .end local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .local v5, "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    :try_start_6c
    invoke-static/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->createCameraAdvancedExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    move-result-object p1

    iput-object p1, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    goto :goto_7f

    .line 3016
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    :cond_73
    move-object v2, p0

    move-object v5, p1

    .end local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v6, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-static/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createCameraExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    move-result-object p1

    iput-object p1, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7f} :catch_97
    .catchall {:try_start_6c .. :try_end_7f} :catchall_aa

    .line 3020
    :goto_7f
    const/4 p1, 0x0

    .line 3024
    .end local v0    # "ret":Z
    .end local v1    # "initializationFailed":Z
    .local p1, "initializationFailed":Z
    if-eqz p1, :cond_8b

    .line 3025
    iget-object v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 3026
    invoke-virtual {v5}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    .line 3025
    invoke-static {v0, v7, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 3029
    :cond_8b
    return-void

    .line 3005
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v0    # "ret":Z
    .restart local v1    # "initializationFailed":Z
    .local p1, "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    :cond_8c
    move-object v2, p0

    move-object v5, p1

    .end local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    const/4 v7, 0x0

    .line 3006
    :try_start_8f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Unsupported extension!"

    invoke-direct {p1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "initializationFailed":Z
    .end local v3    # "characteristicsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .end local v7    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw p1
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_97} :catch_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_aa

    .line 3021
    .end local v0    # "ret":Z
    .restart local v1    # "initializationFailed":Z
    .restart local v3    # "characteristicsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v7    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_97
    move-exception v0

    move-object p1, v0

    goto :goto_a3

    .line 3024
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    :catchall_9a
    move-exception v0

    move-object v2, p0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    goto :goto_ac

    .line 3021
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local p1    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    :catch_9f
    move-exception v0

    move-object v2, p0

    move-object v5, p1

    move-object p1, v0

    .line 3022
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_a3
    :try_start_a3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .end local v1    # "initializationFailed":Z
    .end local v3    # "characteristicsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .end local v7    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v0
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_aa

    .line 3024
    .end local p1    # "e":Landroid/os/RemoteException;
    .restart local v1    # "initializationFailed":Z
    .restart local v3    # "characteristicsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v5    # "extensionConfiguration":Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .restart local v7    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catchall_aa
    move-exception v0

    move-object p1, v0

    :goto_ac
    if-eqz v1, :cond_b9

    if-eqz v7, :cond_b9

    .line 3025
    iget-object v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 3026
    invoke-virtual {v5}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    .line 3025
    invoke-static {v0, v7, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 3028
    :cond_b9
    throw p1
.end method

.method public whitelist createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 11
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1135
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1136
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1137
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-nez v0, :cond_11

    goto :goto_19

    .line 1138
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "In shared session mode,reprocess capture requests are not supported."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputResult":Landroid/hardware/camera2/TotalCaptureResult;
    throw v0

    .line 1142
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputResult":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_19
    :goto_19
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1143
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v4, v0

    .line 1145
    .local v4, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1146
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v6

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 1148
    .local v3, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1149
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1148
    invoke-virtual {v3, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1151
    monitor-exit v1

    return-object v3

    .line 1152
    .end local v3    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v4    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public whitelist createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 14
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
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

    .line 784
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_33

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 789
    .local v4, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 790
    .local v1, "surface":Landroid/view/Surface;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v1    # "surface":Landroid/view/Surface;
    goto :goto_10

    .line 792
    :cond_25
    nop

    .line 793
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 792
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v3, "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v5, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 795
    return-void

    .line 785
    .end local v3    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v4    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    :cond_33
    move-object v3, p1

    move-object v5, p3

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v3    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v5    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
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

    .line 806
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_3b

    .line 811
    if-eqz p2, :cond_31

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 818
    .local v3, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 819
    .local v1, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v1    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_e

    .line 821
    :cond_23
    nop

    .line 822
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 821
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .local v2, "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v4, "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 824
    return-void

    .line 812
    .end local v2    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v3    # "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v4    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    :cond_31
    move-object v2, p1

    move-object v4, p3

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v2    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v4    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 807
    .end local v2    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    :cond_3b
    move-object v2, p1

    move-object v4, p3

    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v2    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v4    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1806
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1809
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1810
    nop

    .line 1811
    return-void

    .line 1809
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1810
    throw v0
.end method

.method public greylist-max-o finalizeOutputConfigs(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1344
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_83

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_83

    .line 1348
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1352
    .local v2, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v3, -0x1

    .line 1353
    .local v3, "streamId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 1356
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1357
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 1358
    goto :goto_3f

    .line 1353
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1361
    .end local v4    # "i":I
    :cond_3f
    :goto_3f
    const/4 v4, -0x1

    if-eq v3, v4, :cond_76

    .line 1366
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_57

    .line 1370
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1371
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1372
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    goto :goto_12

    .line 1367
    .restart local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v3    # "streamId":I
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The final config for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must have at least 1 surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1362
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Deferred config is not part of this session"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1373
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_7e
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_b .. :try_end_82} :catchall_80

    throw v1

    .line 1345
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferred config is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1733
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1734
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1736
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1740
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v1, :cond_1a

    .line 1741
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1742
    monitor-exit v0

    return-void

    .line 1745
    :cond_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v1

    .line 1746
    .local v1, "lastFrameNumber":J
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 1747
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    invoke-direct {p0, v3, v1, v2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1749
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1750
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1752
    .end local v1    # "lastFrameNumber":J
    :cond_31
    monitor-exit v0

    .line 1753
    return-void

    .line 1752
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public greylist-max-o getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .registers 2

    .line 477
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getCameraAudioRestriction()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2981
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2982
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2983
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getGlobalAudioRestriction()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2984
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isPrimaryClient()Z
    .registers 3

    .line 459
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    monitor-exit v0

    return v1

    .line 461
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 5
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1036
    const-wide/32 v1, 0x131e218f

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1037
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraDeviceSetup()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    if-eqz v1, :cond_21

    .line 1039
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1041
    :cond_21
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1042
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist onClientSharedAccessPriorityChanged(Z)V
    .registers 8
    .param p1, "primaryClient"    # Z

    .line 2135
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2136
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    if-eqz v1, :cond_d

    .line 2137
    monitor-exit v0

    return-void

    .line 2139
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_33

    .line 2141
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 2143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2141
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    .line 2143
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    .line 2141
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2d

    .line 2145
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2146
    nop

    .line 2147
    .end local v1    # "ident":J
    monitor-exit v0

    .line 2148
    return-void

    .line 2145
    .restart local v1    # "ident":J
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2146
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "primaryClient":Z
    throw v3

    .line 2147
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "primaryClient":Z
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 2167
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2168
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    if-eqz v1, :cond_d

    .line 2169
    monitor-exit v0

    return-void

    .line 2174
    :cond_d
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_1c

    .line 2175
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2176
    monitor-exit v0

    return-void

    .line 2179
    :cond_1c
    packed-switch p1, :pswitch_data_66

    .line 2201
    :pswitch_1f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    goto :goto_46

    .line 2198
    :pswitch_22
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2199
    goto :goto_60

    .line 2192
    :pswitch_27
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2193
    goto :goto_60

    .line 2195
    :pswitch_2b
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2196
    goto :goto_60

    .line 2181
    :pswitch_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_62

    .line 2183
    .local v1, "ident":J
    :try_start_34
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_40

    .line 2185
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2186
    nop

    .line 2187
    goto :goto_60

    .line 2185
    :catchall_40
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2186
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "errorCode":I
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    throw v3

    .line 2201
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "errorCode":I
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from camera device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 2204
    :goto_60
    monitor-exit v0

    .line 2205
    return-void

    .line 2204
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3b .. :try_end_64} :catchall_62

    throw v1

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist onDeviceIdle()V
    .registers 10

    .line 2346
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2347
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    .line 2351
    :cond_9
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v0, :cond_18

    .line 2352
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    .line 2353
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_49

    return-void

    .line 2357
    :cond_18
    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    move-object v2, p0

    :try_start_28
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    .line 2362
    iget-boolean v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-nez v0, :cond_44

    .line 2363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_4d

    .line 2365
    .local v3, "ident":J
    :try_start_33
    iget-object v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3e

    .line 2367
    :try_start_3a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2368
    goto :goto_44

    .line 2367
    :catchall_3e
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2368
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v0

    .line 2370
    .end local v3    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_44
    :goto_44
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 2371
    monitor-exit v1

    .line 2372
    return-void

    .line 2371
    :catchall_49
    move-exception v0

    move-object v2, p0

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .registers 7
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1177
    if-eqz p2, :cond_5b

    .line 1178
    if-lez p1, :cond_42

    .line 1181
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1183
    const/4 v1, -0x1

    .line 1184
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1185
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p2, v3, :cond_2a

    .line 1186
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1187
    goto :goto_2d

    .line 1184
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1190
    .end local v2    # "i":I
    :cond_2d
    :goto_2d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 1194
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V

    .line 1195
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1196
    return-void

    .line 1191
    .restart local v1    # "streamId":I
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "maxCount":I
    .end local p2    # "surface":Landroid/view/Surface;
    throw v2

    .line 1195
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "maxCount":I
    .restart local p2    # "surface":Landroid/view/Surface;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1

    .line 1178
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxCount given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o prepare(Landroid/view/Surface;)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1156
    if-eqz p1, :cond_44

    .line 1158
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1160
    const/4 v1, -0x1

    .line 1161
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 1162
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    .line 1163
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1164
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move v1, v4

    .line 1165
    goto :goto_2f

    .line 1161
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1168
    .end local v2    # "i":I
    :cond_2f
    :goto_2f
    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 1172
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V

    .line 1173
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1174
    return-void

    .line 1169
    .restart local v1    # "streamId":I
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1173
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw v1

    .line 1156
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCameraAudioRestriction(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2968
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2969
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2970
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setCameraAudioRestriction(I)V

    .line 2971
    monitor-exit v0

    .line 2972
    return-void

    .line 2971
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public greylist-max-o setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 9
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 493
    :cond_9
    new-instance v1, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "resultParcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/common/fmq/MQDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 503
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->nativeCreateFMQReader(Landroid/os/Parcel;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFMQReader:J

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 509
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6f

    .line 512
    .local v2, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_43

    .line 514
    const/4 v4, 0x0

    :try_start_2e
    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_6f

    .line 520
    goto :goto_43

    .line 515
    :catch_32
    move-exception v3

    .line 516
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_33
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 518
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "The camera device has encountered a serious error"

    const/4 v6, 0x2

    invoke-direct {v4, v6, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    throw v4

    .line 523
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_43
    :goto_43
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSharedMode:Z

    if-eqz v4, :cond_5d

    .line 524
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isPrimaryClient()Z

    move-result v4

    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIsPrimaryClient:Z

    .line 525
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpenedInSharedMode:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    .line 527
    :cond_5d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 529
    :goto_64
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 531
    iput-boolean v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDeviceInit:Z

    .line 532
    .end local v1    # "resultParcel":Landroid/os/Parcel;
    .end local v2    # "remoteDeviceBinder":Landroid/os/IBinder;
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_33 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public greylist-max-o setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .registers 9
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    .line 542
    const/4 v0, 0x4

    .line 543
    .local v0, "failureCode":I
    const/4 v1, 0x1

    .line 545
    .local v1, "failureIsError":Z
    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_4c

    .line 562
    :pswitch_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in opening camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 563
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 559
    :pswitch_2a
    const/4 v0, 0x4

    .line 560
    goto :goto_34

    .line 550
    :pswitch_2c
    const/4 v0, 0x2

    .line 551
    goto :goto_34

    .line 547
    :pswitch_2e
    const/4 v0, 0x1

    .line 548
    goto :goto_34

    .line 553
    :pswitch_30
    const/4 v0, 0x3

    .line 554
    goto :goto_34

    .line 556
    :pswitch_32
    const/4 v1, 0x0

    .line 557
    nop

    .line 566
    :goto_34
    move v2, v0

    .line 567
    .local v2, "code":I
    move v3, v1

    .line 568
    .local v3, "isError":Z
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 569
    const/4 v5, 0x1

    :try_start_3a
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 570
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 580
    monitor-exit v4

    .line 581
    return-void

    .line 580
    :catchall_48
    move-exception v5

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v5

    nop

    :pswitch_data_4c
    .packed-switch 0x4
        :pswitch_32
        :pswitch_7
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_7
        :pswitch_2a
    .end packed-switch
.end method

.method public blacklist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1677
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1680
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1678
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public greylist-max-o setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .registers 4
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 1049
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_3
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 1051
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist startStreaming(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .registers 16
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1598
    .local p1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1599
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1600
    :try_start_7
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_cf

    if-eqz v1, :cond_29

    :try_start_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1602
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_1d

    .line 1605
    .end local v1    # "surface":Landroid/view/Surface;
    goto :goto_e

    .line 1603
    .restart local v1    # "surface":Landroid/view/Surface;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null Surface targets are not allowed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    throw v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_25

    .line 1665
    .end local v1    # "surface":Landroid/view/Surface;
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :catchall_25
    move-exception v0

    move-object v1, p2

    goto/16 :goto_d1

    .line 1611
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1619
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    move-object v5, v0

    .line 1622
    .local v5, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1624
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    move-object v6, v5

    .end local v5    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v6, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object v7, v4

    .line 1626
    .local v7, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_cf

    if-eqz v2, :cond_56

    :try_start_4c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1627
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_25

    .line 1628
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_46

    .line 1629
    :cond_56
    :try_start_56
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    move-object v8, v0

    .line 1630
    .local v8, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    .line 1633
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getStreamIds()[I

    move-result-object v2

    .line 1634
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getSurfaceIds()[I

    move-result-object v4

    .line 1633
    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v0

    move-object v9, v0

    .line 1635
    .local v9, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    .line 1636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    if-eqz p2, :cond_91

    .line 1640
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v11

    new-instance v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I
    :try_end_86
    .catchall {:try_start_56 .. :try_end_86} :catchall_cf

    add-int/lit8 v5, v4, -0x1

    const/4 v4, 0x1

    move-object v1, p2

    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .local v1, "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :try_start_8a
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_92

    .line 1639
    .end local v1    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :cond_91
    move-object v1, p2

    .line 1649
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local v1    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :goto_92
    iget p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a2

    .line 1650
    iget p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1651
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1650
    invoke-direct {p0, p2, v4, v5, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1654
    :cond_a2
    nop

    .line 1655
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/hardware/camera2/CaptureRequest;

    .line 1654
    invoke-interface {v2, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/CaptureRequest;

    .line 1656
    .local p2, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1657
    invoke-direct {p0, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1659
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v0, :cond_c6

    .line 1660
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1662
    :cond_c6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1664
    invoke-virtual {v9}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v0

    monitor-exit p3

    return v0

    .line 1665
    .end local v1    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local v2    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v6    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v7    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v8    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v9    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    .local p2, "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :catchall_cf
    move-exception v0

    move-object v1, p2

    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local v1    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    :goto_d1
    monitor-exit p3
    :try_end_d2
    .catchall {:try_start_8a .. :try_end_d2} :catchall_d3

    throw v0

    :catchall_d3
    move-exception v0

    goto :goto_d1
.end method

.method public greylist-max-o stopRepeating()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1685
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1687
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 1689
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1690
    .local v1, "requestId":I
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1691
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1692
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1693
    .local v2, "requestTypes":[I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1694
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2c

    .line 1698
    :try_start_18
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J

    move-result-wide v3
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1e} :catch_23
    .catchall {:try_start_18 .. :try_end_1e} :catchall_2c

    .line 1712
    .local v3, "lastFrameNumber":J
    nop

    .line 1714
    :try_start_1f
    invoke-direct {p0, v1, v3, v4, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    goto :goto_2a

    .line 1699
    .end local v3    # "lastFrameNumber":J
    :catch_23
    move-exception v3

    .line 1707
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1708
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    .line 1711
    monitor-exit v0

    return-void

    .line 1716
    .end local v1    # "requestId":I
    .end local v2    # "requestTypes":[I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2a
    :goto_2a
    monitor-exit v0

    .line 1717
    return-void

    .line 1716
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1304
    if-eqz p1, :cond_42

    .line 1306
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    const/4 v1, -0x1

    .line 1308
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 1309
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_25

    .line 1310
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1311
    goto :goto_28

    .line 1308
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1314
    .end local v2    # "i":I
    :cond_28
    :goto_28
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    .line 1318
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1315
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1319
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1

    .line 1304
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 20
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1222
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_106

    .line 1226
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 1227
    .local v2, "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v0

    .line 1231
    .local v8, "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1232
    :try_start_17
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1233
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-nez v0, :cond_fb

    .line 1237
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v15, -0x1

    if-eqz v3, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 1238
    .local v3, "surface":Landroid/view/Surface;
    const/4 v4, -0x1

    .line 1239
    .local v4, "streamId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 1240
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v3, v6, :cond_5a

    .line 1241
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move v4, v6

    .line 1242
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v8, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1243
    goto :goto_5d

    .line 1239
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1246
    .end local v5    # "i":I
    :cond_5d
    :goto_5d
    if-eq v4, v15, :cond_93

    .line 1251
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1257
    nop

    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    goto :goto_22

    .line 1252
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "streamId":I
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not  support offline mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1247
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offline surface is not part of this session"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1258
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_9b
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1260
    new-instance v3, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v13}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1264
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1266
    .local v0, "ret":Landroid/hardware/camera2/CameraOfflineSession;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1267
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1268
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 1269
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1270
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 1271
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 1272
    new-instance v3, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 1274
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->closeWithoutDraining()V

    .line 1275
    iput-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1276
    monitor-exit v14
    :try_end_f0
    .catchall {:try_start_17 .. :try_end_f0} :catchall_103

    .line 1278
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v4, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1300
    return-object v0

    .line 1234
    .end local v0    # "ret":Landroid/hardware/camera2/CameraOfflineSession;
    :cond_fb
    :try_start_fb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Switch to offline mode already in progress"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1276
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :catchall_103
    move-exception v0

    monitor-exit v14
    :try_end_105
    .catchall {:try_start_fb .. :try_end_105} :catchall_103

    throw v0

    .line 1223
    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v8    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid offline surfaces!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1323
    if-eqz p1, :cond_40

    .line 1325
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1327
    const/4 v1, -0x1

    .line 1328
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1329
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_28

    .line 1330
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1331
    goto :goto_2b

    .line 1328
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1334
    .end local v2    # "i":I
    :cond_2b
    :goto_2b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 1338
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V

    .line 1339
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1340
    return-void

    .line 1335
    .restart local v1    # "streamId":I
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1339
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1

    .line 1323
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 7
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1202
    const/4 v1, -0x1

    .line 1203
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1204
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v3, v4, :cond_2a

    .line 1205
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1206
    goto :goto_2d

    .line 1203
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1209
    .end local v2    # "i":I
    :cond_2d
    :goto_2d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 1213
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1214
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1215
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1216
    return-void

    .line 1210
    .restart local v1    # "streamId":I
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output configuration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    throw v2

    .line 1215
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

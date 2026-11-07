.class public final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraAdvancedExtensionSessionImpl"


# instance fields
.field private blacklist mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private final blacklist mCameraConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final blacklist mCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientCaptureSurface:Landroid/view/Surface;

.field private blacklist mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientPostviewSurface:Landroid/view/Surface;

.field private blacklist mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private blacklist mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExtensionType:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

.field private blacklist mInitialized:Z

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mReaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

.field private blacklist mSessionClosed:Z

.field private final blacklist mSessionId:I

.field private blacklist mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

.field private final blacklist mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$3YZY2YAYnctBQXfroyjOhJaF36A(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->lambda$release$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MyEH403Zk6srKDOWjRpz3Pvx9XU(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->lambda$notifyConfigurationFailure$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtensionType(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsAggregator(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;I)V
    .registers 16
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "extender"    # Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .param p3, "cameraDevice"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p5, "repeatingRequestOutputConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .param p6, "burstCaptureOutputConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .param p7, "postviewOutputConfig"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .param p8, "callback"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .param p9, "executor"    # Ljava/util/concurrent/Executor;
    .param p10, "sessionId"    # I
    .param p11, "token"    # Landroid/os/IBinder;
    .param p12, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/os/IBinder;",
            "I)V"
        }
    .end annotation

    .line 279
    .local p4, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    .line 98
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 106
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 107
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 280
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    .line 282
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 283
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCharacteristicsMap:Ljava/util/Map;

    .line 284
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 285
    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 286
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 287
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 288
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 289
    if-eqz p5, :cond_39

    .line 290
    invoke-virtual {p5}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 292
    :cond_39
    if-eqz p6, :cond_41

    .line 293
    invoke-virtual {p6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 295
    :cond_41
    if-eqz p7, :cond_49

    .line 296
    invoke-virtual {p7}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    .line 298
    :cond_49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraAdvancedExtensionSessionImpl"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 299
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 300
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    .line 302
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z

    .line 303
    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    .line 304
    iput p10, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    .line 305
    iput-object p11, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 306
    iget-object v0, p3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 307
    iput p12, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    .line 309
    new-instance v0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    .line 311
    return-void
.end method

.method public static blacklist createCameraAdvancedExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .registers 29
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "config"    # Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .param p4, "sessionId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/params/ExtensionSessionConfiguration;",
            "I",
            "Landroid/os/IBinder;",
            ")",
            "Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    .local p1, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "cameraId":Ljava/lang/String;
    new-instance v1, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct {v1, v4, v0, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .local v1, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    nop

    .line 136
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 137
    .local v7, "characteristicsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v5

    .line 137
    invoke-static {v3, v5, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_266

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-gt v3, v5, :cond_261

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 150
    .local v5, "c":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_b3

    .line 151
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraExtensionsCharacteristicsGet()Z

    move-result v6

    const-string v8, "Unsupported dynamic range profile: "

    if-eqz v6, :cond_98

    .line 152
    nop

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 152
    invoke-virtual {v1, v6, v9}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->get(ILandroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    .line 155
    .local v6, "dynamicProfiles":Landroid/hardware/camera2/params/DynamicRangeProfiles;
    if-eqz v6, :cond_7d

    invoke-virtual {v6}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->getSupportedProfiles()Ljava/util/Set;

    move-result-object v9

    .line 156
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 160
    .end local v6    # "dynamicProfiles":Landroid/hardware/camera2/params/DynamicRangeProfiles;
    goto :goto_b3

    .line 157
    .restart local v6    # "dynamicProfiles":Landroid/hardware/camera2/params/DynamicRangeProfiles;
    :cond_7d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 158
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    .end local v6    # "dynamicProfiles":Landroid/hardware/camera2/params/DynamicRangeProfiles;
    :cond_98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 162
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_b3
    :goto_b3
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_bf

    .line 170
    .end local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    goto/16 :goto_3d

    .line 167
    .restart local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_bf
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported stream use case: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 168
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_dc
    const/4 v3, 0x0

    .line 173
    .local v3, "suitableSurfaceCount":I
    nop

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v5

    const-class v6, Landroid/graphics/SurfaceTexture;

    .line 173
    invoke-virtual {v1, v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 175
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    nop

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v6

    .line 175
    invoke-static {v6, v5}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v6

    .line 177
    .local v6, "repeatingRequestSurface":Landroid/view/Surface;
    const/4 v8, 0x0

    .line 178
    .local v8, "repeatingRequestOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    if-eqz v6, :cond_112

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_fc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_110

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 180
    .local v10, "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v10}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v11

    if-ne v11, v6, :cond_10f

    .line 181
    move-object v8, v10

    .line 183
    .end local v10    # "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_10f
    goto :goto_fc

    .line 184
    :cond_110
    add-int/lit8 v3, v3, 0x1

    .line 187
    :cond_112
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v9, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-object v10, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:Ljava/util/HashSet;

    .line 190
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Integer;

    .line 191
    .local v10, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    sget-object v11, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:Ljava/util/HashSet;

    .line 192
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [Ljava/lang/Integer;

    .line 194
    array-length v11, v10

    const/4 v13, 0x0

    :goto_12a
    if-ge v13, v11, :cond_147

    aget-object v14, v10, v13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 195
    .local v14, "format":I
    nop

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v15

    .line 195
    invoke-virtual {v1, v15, v14}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v15

    .line 197
    .local v15, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v15, :cond_144

    .line 198
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v14    # "format":I
    .end local v15    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_144
    add-int/lit8 v13, v13, 0x1

    goto :goto_12a

    .line 202
    :cond_147
    const/4 v11, 0x0

    .line 203
    .local v11, "captureFormat":I
    nop

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v12

    .line 203
    invoke-static {v12, v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v12

    .line 205
    .local v12, "burstCaptureSurface":Landroid/view/Surface;
    const/4 v13, 0x0

    .line 206
    .local v13, "burstCaptureOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    if-eqz v12, :cond_185

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_15c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_172

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 208
    .local v15, "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v15}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne v2, v12, :cond_16f

    .line 209
    move-object v13, v15

    .line 211
    .end local v15    # "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_16f
    move-object/from16 v2, p1

    goto :goto_15c

    .line 212
    :cond_172
    add-int/lit8 v3, v3, 0x1

    .line 214
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 215
    nop

    .line 216
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v2

    .line 217
    .local v2, "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v11, v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    move v2, v3

    goto :goto_186

    .line 214
    .end local v2    # "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_183
    move v2, v3

    goto :goto_186

    .line 206
    :cond_185
    move v2, v3

    .line 221
    .end local v3    # "suitableSurfaceCount":I
    .local v2, "suitableSurfaceCount":I
    :goto_186
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_257

    .line 225
    const/4 v3, 0x0

    .line 226
    .local v3, "postviewSurface":Landroid/view/Surface;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v14

    .line 227
    .local v14, "postviewOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    if-eqz v12, :cond_1f9

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v15

    if-eqz v15, :cond_1f9

    .line 228
    nop

    .line 229
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v15

    .line 230
    .local v15, "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    move/from16 v17, v2

    .end local v2    # "suitableSurfaceCount":I
    .local v17, "suitableSurfaceCount":I
    new-instance v2, Landroid/util/Size;

    move-object/from16 v18, v3

    .end local v3    # "postviewSurface":Landroid/view/Surface;
    .local v18, "postviewSurface":Landroid/view/Surface;
    iget v3, v15, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v15, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 232
    .local v2, "burstCaptureSurfaceSize":Landroid/util/Size;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v3, "supportedPostviewSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    array-length v4, v10

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v19, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_1b8
    if-ge v5, v4, :cond_1e2

    aget-object v16, v10, v5

    move/from16 v20, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 234
    .local v4, "format":I
    nop

    .line 235
    move/from16 v16, v5

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v5

    .line 234
    invoke-virtual {v1, v5, v2, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;

    move-result-object v5

    .line 236
    .local v5, "supportedSizesPostview":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v5, :cond_1d9

    .line 237
    move-object/from16 v21, v1

    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v21, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1db

    .line 236
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_1d9
    move-object/from16 v21, v1

    .line 233
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v4    # "format":I
    .end local v5    # "supportedSizesPostview":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :goto_1db
    add-int/lit8 v5, v16, 0x1

    move/from16 v4, v20

    move-object/from16 v1, v21

    goto :goto_1b8

    .line 241
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_1e2
    move-object/from16 v21, v1

    .line 242
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    iget v4, v15, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 241
    invoke-static {v1, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getPostviewSurface(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/util/HashMap;I)Landroid/view/Surface;

    move-result-object v1

    .line 244
    .end local v18    # "postviewSurface":Landroid/view/Surface;
    .local v1, "postviewSurface":Landroid/view/Surface;
    if-eqz v1, :cond_1f1

    goto :goto_203

    .line 245
    :cond_1f1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported output surface for postview!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    .end local v15    # "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .end local v17    # "suitableSurfaceCount":I
    .end local v19    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v1, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v2, "suitableSurfaceCount":I
    .local v3, "postviewSurface":Landroid/view/Surface;
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_1f9
    move-object/from16 v21, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    .line 249
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v2    # "suitableSurfaceCount":I
    .end local v3    # "postviewSurface":Landroid/view/Surface;
    .end local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v17    # "suitableSurfaceCount":I
    .restart local v18    # "postviewSurface":Landroid/view/Surface;
    .restart local v19    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    move-object/from16 v1, v18

    .end local v18    # "postviewSurface":Landroid/view/Surface;
    .local v1, "postviewSurface":Landroid/view/Surface;
    :goto_203
    nop

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    .line 249
    invoke-static {v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v5

    .line 251
    .local v5, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-interface {v5, v0, v7}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 255
    move v2, v11

    .end local v11    # "captureFormat":I
    .local v2, "captureFormat":I
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v11

    .line 256
    move-object v4, v12

    .end local v12    # "burstCaptureSurface":Landroid/view/Surface;
    .local v4, "burstCaptureSurface":Landroid/view/Surface;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v15

    move-object/from16 v22, v0

    move v0, v2

    move-object/from16 v20, v4

    move-object v2, v6

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v6, p0

    move-object/from16 v4, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    .end local v4    # "burstCaptureSurface":Landroid/view/Surface;
    .end local v6    # "repeatingRequestSurface":Landroid/view/Surface;
    .end local v13    # "burstCaptureOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v14    # "postviewOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .local v0, "captureFormat":I
    .local v2, "repeatingRequestSurface":Landroid/view/Surface;
    .local v9, "burstCaptureOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .local v10, "postviewOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .local v16, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v18, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .local v20, "burstCaptureSurface":Landroid/view/Surface;
    .local v22, "cameraId":Ljava/lang/String;
    invoke-direct/range {v3 .. v15}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;I)V

    .line 258
    .local v3, "ret":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v4

    if-eqz v4, :cond_241

    .line 259
    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setCaptureFormat(I)V

    .line 261
    :cond_241
    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setClientName(Ljava/lang/String;)V

    .line 262
    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setExtensionType(I)V

    .line 264
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initialize()V

    .line 266
    return-object v3

    .line 222
    .end local v3    # "ret":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local v16    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v17    # "suitableSurfaceCount":I
    .end local v18    # "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .end local v19    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v20    # "burstCaptureSurface":Landroid/view/Surface;
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .local v0, "cameraId":Ljava/lang/String;
    .local v1, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v2, "suitableSurfaceCount":I
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v6    # "repeatingRequestSurface":Landroid/view/Surface;
    .local v9, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v10, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .restart local v11    # "captureFormat":I
    .restart local v12    # "burstCaptureSurface":Landroid/view/Surface;
    .restart local v13    # "burstCaptureOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_257
    move-object/from16 v21, v1

    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v2    # "suitableSurfaceCount":I
    .end local v5    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "repeatingRequestSurface":Landroid/view/Surface;
    .end local v8    # "repeatingRequestOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v9    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v10    # "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .end local v11    # "captureFormat":I
    .end local v12    # "burstCaptureSurface":Landroid/view/Surface;
    .end local v13    # "burstCaptureOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_261
    move-object/from16 v22, v0

    move-object/from16 v21, v1

    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    goto :goto_26a

    .line 143
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_266
    move-object/from16 v22, v0

    move-object/from16 v21, v1

    .line 145
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    :goto_26a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected <= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    .end local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_291
    move-object/from16 v22, v0

    move-object/from16 v21, v1

    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported extension type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .registers 11
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/hardware/camera2/extension/Request;",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1257
    .local p2, "surfaceIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    iget v0, p1, Landroid/hardware/camera2/extension/Request;->templateId:I

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1258
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p1, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    .line 1259
    .local v2, "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    const/4 v3, 0x0

    .line 1260
    .local v3, "found":Z
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1261
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v6, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v6, v6, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    iget v7, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    if-ne v6, v7, :cond_46

    .line 1262
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1263
    const/4 v3, 0x1

    .line 1264
    goto :goto_47

    .line 1266
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    :cond_46
    goto :goto_21

    .line 1268
    :cond_47
    :goto_47
    if-nez v3, :cond_69

    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface with output id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found among registered camera outputs!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraAdvancedExtensionSessionImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v2    # "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    .end local v3    # "found":Z
    :cond_69
    goto :goto_c

    .line 1274
    :cond_6a
    iget v1, p1, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1275
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 1276
    .local v1, "ret":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1277
    return-object v1
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;
    .registers 7
    .param p0, "o"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 445
    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface;-><init>()V

    .line 447
    .local v0, "ret":Landroid/hardware/camera2/extension/OutputSurface;
    const/4 v1, -0x1

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 448
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 449
    .local v2, "s":Landroid/view/Surface;
    iput-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 450
    new-instance v3, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 451
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    .line 452
    .local v3, "surfaceSize":Landroid/util/Size;
    iget-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/Size;->width:I

    .line 453
    iget-object v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/Size;->height:I

    .line 454
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    .line 456
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    .line 457
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 458
    .local v4, "colorSpace":Landroid/graphics/ColorSpace;
    if-eqz v4, :cond_48

    .line 459
    invoke-virtual {v4}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    goto :goto_4a

    .line 461
    :cond_48
    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    .line 463
    .end local v2    # "s":Landroid/view/Surface;
    .end local v3    # "surfaceSize":Landroid/util/Size;
    .end local v4    # "colorSpace":Landroid/graphics/ColorSpace;
    :goto_4a
    goto :goto_66

    .line 464
    :cond_4b
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 465
    new-instance v2, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 466
    iget-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iput v1, v2, Landroid/hardware/camera2/extension/Size;->width:I

    .line 467
    iget-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iput v1, v2, Landroid/hardware/camera2/extension/Size;->height:I

    .line 468
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    .line 469
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    .line 470
    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    .line 473
    :goto_66
    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .registers 4
    .param p0, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 411
    new-instance v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelCaptureResult;-><init>()V

    .line 412
    .local v0, "ret":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 414
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    .line 415
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    .line 416
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    .line 418
    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .registers 9
    .param p0, "totalResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 422
    new-instance v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;-><init>()V

    .line 423
    .local v0, "ret":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 425
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    .line 426
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    .line 427
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    .line 428
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    .line 430
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    .line 431
    .local v2, "partial":Landroid/hardware/camera2/CaptureResult;
    iget-object v3, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v2    # "partial":Landroid/hardware/camera2/CaptureResult;
    goto :goto_40

    .line 433
    :cond_56
    nop

    .line 434
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v1

    .line 435
    .local v1, "physicalResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    .line 436
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    .line 437
    .local v3, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v4, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    new-instance v5, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 437
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v3    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    goto :goto_6e

    .line 441
    :cond_8d
    return-object v0
.end method

.method private blacklist initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;
    .registers 9
    .param p1, "output"    # Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 1281
    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    const/4 v1, 0x0

    const-string v2, ", skipping!"

    const-string v3, "Unsupported client output id: "

    const-string v4, "CameraAdvancedExtensionSessionImpl"

    packed-switch v0, :pswitch_data_9e

    .line 1304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :pswitch_27
    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    if-eqz v0, :cond_5c

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    if-lez v0, :cond_5c

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->height:I

    if-gtz v0, :cond_38

    goto :goto_5c

    .line 1296
    :cond_38
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v2, v0, Landroid/hardware/camera2/extension/Size;->height:I

    iget v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    iget v4, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    iget-wide v5, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->usage:J

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    .line 1299
    .local v0, "reader":Landroid/media/ImageReader;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v2, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    .line 1292
    .end local v0    # "reader":Landroid/media/ImageReader;
    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-object v1

    .line 1283
    :pswitch_79
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    if-nez v0, :cond_9a

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-object v1

    .line 1288
    :cond_9a
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    return-object v0

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_79
        :pswitch_27
    .end packed-switch
.end method

.method private synthetic blacklist lambda$notifyConfigurationFailure$1()V
    .registers 2

    .line 726
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$release$0()V
    .registers 2

    .line 706
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private blacklist notifyConfigurationFailure()V
    .registers 5

    .line 715
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 717
    monitor-exit v0

    return-void

    .line 719
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 725
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw v2

    .line 719
    .end local v0    # "ident":J
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 9
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 578
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v1, "Target output combination requested is not supported!"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    .line 579
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 580
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 581
    .local v0, "containsCaptureTarget":Z
    :goto_1d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 583
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v2

    .line 585
    .local v4, "containsRepeatingTarget":Z
    :goto_2c
    if-nez v0, :cond_37

    if-eqz v4, :cond_31

    goto :goto_37

    .line 586
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 591
    .end local v0    # "containsCaptureTarget":Z
    .end local v4    # "containsRepeatingTarget":Z
    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_61

    .line 592
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    new-array v5, v4, [Landroid/view/Surface;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    aput-object v6, v5, v2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_61

    .line 594
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_61
    :goto_61
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v4, :cond_6c

    .line 602
    return-void

    .line 599
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 16
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 541
    const/4 v7, -0x1

    .line 542
    .local v7, "seqId":I
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 543
    :try_start_4
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_7b

    .line 547
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V

    .line 549
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v9, 0x3

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_83

    if-eqz v0, :cond_45

    .line 551
    :try_start_18
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    move v10, v0

    .line 552
    .local v10, "isPostviewRequested":Z
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 554
    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 555
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    .line 554
    invoke-interface {v11, v0, v10}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I

    move-result v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3a} :catch_3c
    .catchall {:try_start_18 .. :try_end_3a} :catchall_83

    .line 559
    .end local v7    # "seqId":I
    .end local v10    # "isPostviewRequested":Z
    .local v0, "seqId":I
    move v7, v0

    goto :goto_68

    .line 556
    .end local v0    # "seqId":I
    .restart local v7    # "seqId":I
    :catch_3c
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3d
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Failed  to submit capture request, extension service failed to respond!"

    invoke-direct {v3, v9, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v7    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v3

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v7    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_45
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 561
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_83

    if-eqz v0, :cond_73

    .line 563
    :try_start_51
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 564
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    .line 563
    invoke-interface {v10, p1, v0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v0
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_67} :catch_6a
    .catchall {:try_start_51 .. :try_end_67} :catchall_83

    .line 568
    .end local v7    # "seqId":I
    .local v0, "seqId":I
    move v7, v0

    .line 572
    .end local v0    # "seqId":I
    .restart local v7    # "seqId":I
    :goto_68
    :try_start_68
    monitor-exit v8

    .line 574
    return v7

    .line 565
    :catch_6a
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Failed  to submit trigger request, extension service failed to respond!"

    invoke-direct {v1, v9, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v7    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v1

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v7    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid single capture output target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v0

    .line 544
    .restart local v7    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v0

    .line 572
    .restart local v7    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_83
    move-exception v0

    monitor-exit v8
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_83

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_31

    if-eqz v1, :cond_2f

    .line 629
    const/4 v1, 0x1

    :try_start_8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_d} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_31

    .line 632
    goto :goto_11

    .line 636
    :catch_e
    move-exception v2

    goto :goto_1e

    .line 630
    :catch_10
    move-exception v2

    .line 633
    :goto_11
    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V

    .line 634
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionEnd()V

    .line 635
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_e
    .catchall {:try_start_11 .. :try_end_1d} :catchall_31

    .line 639
    goto :goto_25

    .line 637
    .local v2, "e":Landroid/os/RemoteException;
    :goto_1e
    :try_start_1e
    const-string v3, "CameraAdvancedExtensionSessionImpl"

    const-string v4, "Failed to stop the repeating request or end the session, , extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    .line 642
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 644
    :cond_2f
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist commitStats()V
    .registers 4

    .line 652
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_d

    .line 655
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    .line 657
    :cond_d
    monitor-exit v0

    .line 658
    return-void

    .line 657
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    .line 478
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    .line 480
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getRealtimeStillCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34

    if-eqz v1, :cond_2c

    .line 491
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object v1

    .line 492
    .local v1, "latency":Landroid/hardware/camera2/extension/LatencyPair;
    if-eqz v1, :cond_1a

    .line 493
    new-instance v2, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    iget-wide v3, v1, Landroid/hardware/camera2/extension/LatencyPair;->first:J

    iget-wide v5, v1, Landroid/hardware/camera2/extension/LatencyPair;->second:J

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;-><init>(JJ)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1d
    .catchall {:try_start_7 .. :try_end_18} :catchall_34

    :try_start_18
    monitor-exit v0

    return-object v2

    .line 496
    :cond_1a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 497
    .end local v1    # "latency":Landroid/hardware/camera2/extension/LatencyPair;
    :catch_1d
    move-exception v1

    .line 498
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to query realtime latency! Extension service does not respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v2

    .line 487
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v1

    .line 502
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public declared-synchronized blacklist initialize()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 317
    :try_start_3
    iget-boolean v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_10

    .line 318
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Session already initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_195

    .line 319
    monitor-exit p0

    return-void

    .line 322
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :cond_10
    :try_start_10
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v0

    move-object v6, v0

    .line 323
    .local v6, "previewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v7

    .line 324
    .local v7, "captureSurface":Landroid/hardware/camera2/extension/OutputSurface;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientPostviewOutputConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/params/OutputConfiguration;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v8

    .line 326
    .local v8, "postviewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v0

    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 327
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 328
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCharacteristicsMap:Ljava/util/Map;

    .line 327
    invoke-interface/range {v2 .. v8}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v0

    .line 330
    .local v0, "sessionConfig":Landroid/hardware/camera2/extension/CameraSessionConfig;
    iget-object v2, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    .line 331
    .local v2, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v3, "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 333
    .local v5, "output":Landroid/hardware/camera2/extension/CameraOutputConfig;
    invoke-direct {v1, v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v10

    .line 334
    .local v10, "outputSurface":Landroid/view/Surface;
    if-nez v10, :cond_5a

    .line 335
    goto :goto_46

    .line 337
    :cond_5a
    new-instance v11, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    invoke-direct {v11, v12, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 340
    .local v11, "cameraOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-boolean v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    if-eqz v12, :cond_68

    .line 341
    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 343
    :cond_68
    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    if-eqz v12, :cond_9a

    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9a

    .line 344
    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 345
    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 346
    .local v13, "sharedOutputConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    invoke-direct {v1, v13}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurface(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v14

    .line 347
    .local v14, "sharedSurface":Landroid/view/Surface;
    if-nez v14, :cond_90

    .line 348
    goto :goto_7d

    .line 350
    :cond_90
    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 351
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    nop

    .end local v13    # "sharedOutputConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .end local v14    # "sharedSurface":Landroid/view/Surface;
    goto :goto_7d

    .line 357
    :cond_9a
    invoke-virtual {v11, v9}, Landroid/hardware/camera2/params/OutputConfiguration;->setTimestampBase(I)V

    .line 358
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/params/OutputConfiguration;->setReadoutTimestampEnabled(Z)V

    .line 359
    iget-object v12, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 360
    const/4 v12, 0x0

    .line 361
    .local v12, "validDynamicRangeProfile":Z
    const-wide/16 v13, 0x1

    .line 362
    .local v13, "profile":J
    :goto_a9
    const-wide/16 v15, 0x1000

    cmp-long v15, v13, v15

    if-gez v15, :cond_bf

    .line 363
    move v15, v9

    move-object/from16 v16, v10

    .end local v10    # "outputSurface":Landroid/view/Surface;
    .local v16, "outputSurface":Landroid/view/Surface;
    iget-wide v9, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    cmp-long v9, v9, v13

    if-nez v9, :cond_ba

    .line 364
    const/4 v12, 0x1

    .line 365
    goto :goto_c1

    .line 362
    :cond_ba
    shl-long/2addr v13, v15

    move v9, v15

    move-object/from16 v10, v16

    goto :goto_a9

    .end local v16    # "outputSurface":Landroid/view/Surface;
    .restart local v10    # "outputSurface":Landroid/view/Surface;
    :cond_bf
    move-object/from16 v16, v10

    .line 368
    .end local v10    # "outputSurface":Landroid/view/Surface;
    .end local v13    # "profile":J
    .restart local v16    # "outputSurface":Landroid/view/Surface;
    :goto_c1
    if-eqz v12, :cond_c9

    .line 369
    iget-wide v9, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    invoke-virtual {v11, v9, v10}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V

    goto :goto_e9

    .line 371
    :cond_c9
    const-string v9, "CameraAdvancedExtensionSessionImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extension configured dynamic range profile "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v13, v5, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " is not valid, using default DynamicRangeProfile.STANDARD"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_e9
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    nop

    .end local v5    # "output":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .end local v11    # "cameraOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v12    # "validDynamicRangeProfile":Z
    .end local v16    # "outputSurface":Landroid/view/Surface;
    goto/16 :goto_46

    .line 379
    :cond_f8
    move v15, v9

    const/4 v4, 0x0

    .line 380
    .local v4, "sessionType":I
    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_11e

    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    if-eq v5, v15, :cond_11e

    .line 382
    iget v5, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    move v4, v5

    .line 383
    const-string v5, "CameraAdvancedExtensionSessionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using session type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_11e
    new-instance v5, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v9, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v10}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v10, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    invoke-direct {v5, v4, v3, v9, v10}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 389
    .local v5, "sessionConfiguration":Landroid/hardware/camera2/params/SessionConfiguration;
    iget v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    if-ltz v9, :cond_14a

    iget v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    .line 390
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_14a

    .line 391
    nop

    .line 392
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v9

    iget v10, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    aget-object v9, v9, v10

    .line 391
    invoke-virtual {v5, v9}, Landroid/hardware/camera2/params/SessionConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    goto :goto_16a

    .line 394
    :cond_14a
    const-string v9, "CameraAdvancedExtensionSessionImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Extension configured color space "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not valid, using default unspecified color space"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_16a
    iget-object v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v9, :cond_18e

    iget-object v9, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 398
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18e

    .line 399
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v10, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    .line 401
    .local v9, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    .line 402
    .local v10, "sessionRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    iget-object v12, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 404
    invoke-virtual {v5, v10}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 407
    .end local v9    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v10    # "sessionRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_18e
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v9, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_193
    .catchall {:try_start_10 .. :try_end_193} :catchall_195

    .line 408
    monitor-exit p0

    return-void

    .line 316
    .end local v0    # "sessionConfig":Landroid/hardware/camera2/extension/CameraSessionConfig;
    .end local v2    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    .end local v3    # "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v4    # "sessionType":I
    .end local v5    # "sessionConfiguration":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v6    # "previewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v7    # "captureSurface":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v8    # "postviewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    :catchall_195
    move-exception v0

    :try_start_196
    monitor-exit p0
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_195

    throw v0
.end method

.method public blacklist release(Z)V
    .registers 8
    .param p1, "skipCloseNotification"    # Z

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "notifyClose":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 666
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_91

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 668
    :try_start_e
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionClosed:Z

    if-nez v2, :cond_17

    .line 669
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionEnd()V

    .line 671
    :cond_17
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->deInitSession(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1f
    .catchall {:try_start_e .. :try_end_1e} :catchall_91

    .line 675
    goto :goto_27

    .line 672
    :catch_1f
    move-exception v2

    .line 673
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v4, "CameraAdvancedExtensionSessionImpl"

    const-string v5, "Failed to de-initialize session processor, extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_27
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 680
    :cond_29
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_44

    .line 681
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-nez v2, :cond_35

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_3b

    .line 682
    :cond_35
    const/4 v0, 0x1

    .line 683
    iget v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    invoke-static {v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession(I)V

    .line 685
    :cond_3b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionType:I

    invoke-static {v2, v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 687
    :cond_44
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    .line 688
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 690
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    .line 691
    .local v4, "reader":Landroid/media/ImageReader;
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 692
    .end local v4    # "reader":Landroid/media/ImageReader;
    goto :goto_53

    .line 693
    :cond_63
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 695
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 696
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 697
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 698
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    .line 699
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 700
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    .line 701
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_20 .. :try_end_75} :catchall_91

    .line 703
    if-eqz v0, :cond_90

    if-nez p1, :cond_90

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 706
    .local v1, "ident":J
    :try_start_7d
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_8b

    .line 709
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    goto :goto_90

    .line 709
    :catchall_8b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v3

    .line 712
    .end local v1    # "ident":J
    :cond_90
    :goto_90
    return-void

    .line 701
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 14
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 508
    const/4 v1, -0x1

    .line 509
    .local v1, "seqId":I
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 510
    :try_start_4
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_69

    .line 514
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5e

    .line 518
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 519
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_74

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4f

    .line 524
    :try_start_1f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 526
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 527
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v8
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_41
    .catchall {:try_start_1f .. :try_end_2e} :catchall_74

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :try_start_33
    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    .line 526
    invoke-interface {v0, v3}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result p1
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_3e
    .catchall {:try_start_33 .. :try_end_3a} :catchall_7b

    move v1, p1

    .line 531
    nop

    .line 532
    :try_start_3c
    monitor-exit v2

    .line 534
    return v1

    .line 528
    :catch_3e
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catch_41
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object p1, v0

    .line 529
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_46
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Failed to enable repeating request, extension service failed to respond!"

    const/4 v0, 0x3

    invoke-direct {p2, v0, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v1    # "seqId":I
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw p2

    .line 519
    .restart local v1    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .local p1, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_4f
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    goto :goto_56

    .line 518
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_53
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 520
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :goto_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid repeating request output target!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "seqId":I
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw p1

    .line 515
    .restart local v1    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_5e
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No registered preview surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "seqId":I
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw p1

    .line 511
    .restart local v1    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_69
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Uninitialized component"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "seqId":I
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw p1

    .line 532
    .restart local v1    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_74
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object p1, v0

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v7    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :goto_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_3c .. :try_end_7a} :catchall_7b

    throw p1

    :catchall_7b
    move-exception v0

    move-object p1, v0

    goto :goto_79
.end method

.method public whitelist stopRepeating()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_1e

    .line 611
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_26

    .line 614
    :try_start_c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_26

    .line 619
    nop

    .line 620
    :try_start_12
    monitor-exit v0

    .line 621
    return-void

    .line 615
    :catch_14
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Failed to notify about the end of repeating request, extension service failed to respond!"

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v2

    .line 608
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v1

    .line 620
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v1
.end method

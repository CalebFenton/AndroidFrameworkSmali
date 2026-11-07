.class public final Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;
    }
.end annotation


# static fields
.field private static final blacklist PREVIEW_QUEUE_SIZE:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionSessionImpl"


# instance fields
.field private blacklist mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private blacklist mBurstCaptureImageReader:Landroid/media/ImageReader;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private blacklist mCameraBurstSurface:Landroid/view/Surface;

.field private final blacklist mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mCameraRepeatingSurface:Landroid/view/Surface;

.field private blacklist mCaptureResultsSupported:Z

.field private blacklist mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private blacklist mClientCaptureSurface:Landroid/view/Surface;

.field private blacklist mClientPostviewSurface:Landroid/view/Surface;

.field private blacklist mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExtensionType:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

.field private blacklist mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

.field private blacklist mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private final blacklist mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

.field private blacklist mInitialized:Z

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private blacklist mInternalRepeatingRequestEnabled:Z

.field private final blacklist mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

.field private blacklist mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

.field private blacklist mPreviewProcessorType:I

.field private blacklist mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

.field private blacklist mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private blacklist mRepeatingRequestImageReader:Landroid/media/ImageReader;

.field private blacklist mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

.field private blacklist mSessionClosed:Z

.field private final blacklist mSessionId:I

.field private final blacklist mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

.field private blacklist mStubCaptureImageReader:Landroid/media/ImageReader;

.field private final blacklist mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedRequestKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$13Cdv7VAG9ycSaSymCPctEeqzp8(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->lambda$release$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ONqVQMT_8K_k77rh7F_Y_qakRZ0(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->lambda$notifyConfigurationFailure$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vj8TAx6J-78Kq3Nh2S_iIVbGKyI(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->lambda$notifyConfigurationSuccess$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientPostviewSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtensionType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewRequestUpdateProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestImageWriter(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/media/ImageWriter;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsAggregator(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompileInitialRequestList(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->compileInitialRequestList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishPipelineInitialization(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->finishPipelineInitialization()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationSuccess(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationSuccess()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetInitialCaptureRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetSurfaceFormat(Landroid/view/Surface;)I
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;Ljava/util/Set;Ljava/util/Set;I)V
    .registers 34
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "imageExtender"    # Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .param p3, "previewExtender"    # Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .param p5, "cameraDevice"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p6, "repeatingRequestSurface"    # Landroid/view/Surface;
    .param p7, "burstCaptureSurface"    # Landroid/view/Surface;
    .param p8, "postviewSurface"    # Landroid/view/Surface;
    .param p9, "callback"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .param p10, "executor"    # Ljava/util/concurrent/Executor;
    .param p11, "sessionId"    # I
    .param p12, "token"    # Landroid/os/IBinder;
    .param p15, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/os/IBinder;",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;I)V"
        }
    .end annotation

    .line 291
    .local p4, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local p13, "requestKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .local p14, "resultKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureResult$Key;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    .line 97
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 100
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 104
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 105
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 106
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 107
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 108
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 109
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 111
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 112
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 113
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    .line 114
    iput-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    .line 115
    const/4 v3, 0x2

    iput v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 292
    move-object/from16 v4, p1

    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mContext:Landroid/content/Context;

    .line 293
    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 294
    move-object/from16 v6, p3

    iput-object v6, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 295
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 296
    move-object/from16 v7, p9

    iput-object v7, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 297
    move-object/from16 v8, p10

    iput-object v8, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 298
    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 299
    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 300
    move-object/from16 v11, p8

    iput-object v11, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    .line 301
    move-object/from16 v12, p4

    iput-object v12, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    .line 302
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "CameraExtensionSessionImpl"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 303
    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 304
    new-instance v13, Landroid/os/Handler;

    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 305
    const/4 v13, 0x0

    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 306
    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionClosed:Z

    .line 307
    new-instance v14, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v14, v0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    .line 308
    move/from16 v2, p11

    iput v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    .line 309
    move-object/from16 v14, p12

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 310
    move-object/from16 v15, p13

    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    .line 311
    move/from16 v16, v3

    move-object/from16 v3, p14

    iput-object v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    .line 312
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    xor-int/lit8 v13, v17, 0x1

    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    .line 313
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 314
    move/from16 v13, p15

    iput v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionType:I

    .line 316
    new-instance v1, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    .line 318
    return-void
.end method

.method private blacklist compileInitialRequestList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;"
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v0, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    .line 626
    .local v1, "initialPreviewParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v1, :cond_10

    .line 627
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 631
    .local v2, "initialStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v2, :cond_1b

    .line 632
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 637
    .end local v1    # "initialPreviewParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v2    # "initialStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_1b
    goto :goto_24

    .line 634
    :catch_1c
    move-exception v1

    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to initialize session parameters! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-object v0
.end method

.method private blacklist createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;
    .registers 15
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "target"    # Landroid/view/Surface;
    .param p5, "captureTemplate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/view/Surface;",
            "I",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 646
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .local p6, "captureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 649
    .local v2, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :try_start_15
    invoke-virtual {p1, p5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3
    :try_end_19
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_19} :catch_57

    .line 652
    .local v3, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    nop

    .line 656
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 657
    .local v5, "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    .line 658
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_37

    .line 659
    iget-object v7, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 661
    .end local v5    # "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_37
    goto :goto_20

    .line 663
    :cond_38
    invoke-virtual {v3, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 664
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 665
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 666
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    if-eqz p6, :cond_56

    .line 668
    iget v5, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .end local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_56
    goto :goto_9

    .line 650
    .end local v3    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :catch_57
    move-exception v1

    .line 651
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v3, 0x0

    return-object v3

    .line 672
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_5a
    return-object v0
.end method

.method public static blacklist createCameraExtensionSession(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/Map;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;ILandroid/os/IBinder;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
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
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    .local p1, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    move-object/from16 v0, p1

    move-object/from16 v13, p5

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "cameraId":Ljava/lang/String;
    new-instance v2, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v1, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    .local v2, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v5

    .line 153
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 151
    invoke-static {v4, v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_269

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23e

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_239

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 165
    .local v5, "c":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_7c

    .line 169
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5f

    .line 174
    .end local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_3e

    .line 171
    .restart local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_5f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported stream use case: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_7c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported dynamic range profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 167
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    .end local v5    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_99
    nop

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 179
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    const/4 v5, 0x0

    .line 180
    .local v5, "suitableSurfaceCount":I
    nop

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    const-class v7, Landroid/graphics/SurfaceTexture;

    .line 180
    invoke-virtual {v2, v6, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 182
    .local v6, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    nop

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v7

    .line 182
    invoke-static {v7, v6}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v7

    .line 184
    .local v7, "repeatingRequestSurface":Landroid/view/Surface;
    if-eqz v7, :cond_bb

    .line 185
    add-int/lit8 v5, v5, 0x1

    .line 188
    :cond_bb
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v8, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-object v9, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:Ljava/util/HashSet;

    .line 190
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Integer;

    .line 191
    .local v9, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    sget-object v10, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:Ljava/util/HashSet;

    .line 192
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [Ljava/lang/Integer;

    .line 194
    array-length v10, v9

    const/4 v12, 0x0

    :goto_d3
    if-ge v12, v10, :cond_f0

    aget-object v14, v9, v12

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 195
    .local v14, "format":I
    nop

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v15

    .line 195
    invoke-virtual {v2, v15, v14}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v15

    .line 197
    .local v15, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v15, :cond_ed

    .line 198
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v14    # "format":I
    .end local v15    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_ed
    add-int/lit8 v12, v12, 0x1

    goto :goto_d3

    .line 202
    :cond_f0
    const/4 v10, 0x0

    .line 203
    .local v10, "captureFormat":I
    nop

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v11

    .line 203
    invoke-static {v11, v8}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v11

    .line 205
    .local v11, "burstCaptureSurface":Landroid/view/Surface;
    if-eqz v11, :cond_10b

    .line 206
    add-int/lit8 v5, v5, 0x1

    .line 208
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v12

    if-eqz v12, :cond_10b

    .line 209
    nop

    .line 210
    invoke-static {v11}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v12

    .line 211
    .local v12, "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v10, v12, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 215
    .end local v12    # "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_10b
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v5, v12, :cond_22d

    .line 219
    const/4 v12, 0x0

    .line 220
    .local v12, "postviewSurface":Landroid/view/Surface;
    if-eqz v11, :cond_175

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v14

    if-eqz v14, :cond_175

    .line 221
    nop

    .line 222
    invoke-static {v11}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v14

    .line 223
    .local v14, "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    new-instance v15, Landroid/util/Size;

    iget v3, v14, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    move/from16 v17, v5

    .end local v5    # "suitableSurfaceCount":I
    .local v17, "suitableSurfaceCount":I
    iget v5, v14, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v15, v3, v5}, Landroid/util/Size;-><init>(II)V

    .line 225
    .local v15, "burstCaptureSurfaceSize":Landroid/util/Size;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v3, "supportedPostviewSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    array-length v5, v9

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v18, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_137
    if-ge v6, v5, :cond_15f

    aget-object v16, v9, v6

    move/from16 v19, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 227
    .local v5, "format":I
    nop

    .line 228
    move/from16 v16, v6

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    .line 227
    invoke-virtual {v2, v6, v15, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;

    move-result-object v6

    .line 229
    .local v6, "supportedSizesPostview":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v6, :cond_158

    .line 230
    move/from16 v20, v5

    .end local v5    # "format":I
    .local v20, "format":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15a

    .line 229
    .end local v20    # "format":I
    .restart local v5    # "format":I
    :cond_158
    move/from16 v20, v5

    .line 226
    .end local v5    # "format":I
    .end local v6    # "supportedSizesPostview":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_15a
    add-int/lit8 v6, v16, 0x1

    move/from16 v5, v19

    goto :goto_137

    .line 234
    :cond_15f
    nop

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    iget v6, v14, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 234
    invoke-static {v5, v3, v6}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getPostviewSurface(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/util/HashMap;I)Landroid/view/Surface;

    move-result-object v12

    .line 238
    if-eqz v12, :cond_16d

    goto :goto_179

    .line 239
    :cond_16d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported output surface for postview!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    .end local v3    # "supportedPostviewSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v14    # "burstCaptureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .end local v15    # "burstCaptureSurfaceSize":Landroid/util/Size;
    .end local v17    # "suitableSurfaceCount":I
    .end local v18    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v5, "suitableSurfaceCount":I
    .local v6, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_175
    move/from16 v17, v5

    move-object/from16 v18, v6

    .line 243
    .end local v5    # "suitableSurfaceCount":I
    .end local v6    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v17    # "suitableSurfaceCount":I
    .restart local v18    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_179
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 244
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 244
    invoke-interface {v3, v13, v1, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 246
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 247
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 248
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 247
    invoke-interface {v3, v13, v1, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 250
    move-object v3, v1

    .end local v1    # "cameraId":Ljava/lang/String;
    .local v3, "cameraId":Ljava/lang/String;
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 259
    move v14, v10

    .end local v10    # "captureFormat":I
    .local v14, "captureFormat":I
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v10

    .line 260
    move-object v15, v8

    move-object v8, v11

    .end local v11    # "burstCaptureSurface":Landroid/view/Surface;
    .local v8, "burstCaptureSurface":Landroid/view/Surface;
    .local v15, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object v0

    .line 264
    move-object/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object v0

    .line 265
    move/from16 v19, v14

    move-object/from16 v14, v16

    .end local v14    # "captureFormat":I
    .local v19, "captureFormat":I
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v16

    move-object/from16 v20, v15

    move-object v15, v0

    move/from16 v0, v19

    move-object/from16 v19, v20

    move-object/from16 v22, v3

    move-object v3, v5

    move-object/from16 v20, v9

    move-object v9, v12

    move/from16 v21, v17

    move-object/from16 v5, v18

    move/from16 v12, p4

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object v4, v6

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    .end local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v12    # "postviewSurface":Landroid/view/Surface;
    .end local v15    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v0, "captureFormat":I
    .local v5, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v9, "postviewSurface":Landroid/view/Surface;
    .local v17, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v18, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .local v19, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v20, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .local v21, "suitableSurfaceCount":I
    .local v22, "cameraId":Ljava/lang/String;
    invoke-direct/range {v1 .. v16}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/os/IBinder;Ljava/util/Set;Ljava/util/Set;I)V

    .line 267
    .local v1, "session":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    move-result v2

    if-eqz v2, :cond_217

    .line 268
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setCaptureFormat(I)V

    .line 270
    :cond_217
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setClientName(Ljava/lang/String;)V

    .line 271
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->setExtensionType(I)V

    .line 273
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initialize()V

    .line 275
    return-object v1

    .line 216
    .end local v0    # "captureFormat":I
    .end local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v18    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v19    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v20    # "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .end local v21    # "suitableSurfaceCount":I
    .end local v22    # "cameraId":Ljava/lang/String;
    .local v1, "cameraId":Ljava/lang/String;
    .restart local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .local v5, "suitableSurfaceCount":I
    .restart local v6    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v8, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v9, "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .restart local v10    # "captureFormat":I
    .restart local v11    # "burstCaptureSurface":Landroid/view/Surface;
    :cond_22d
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v5    # "suitableSurfaceCount":I
    .end local v6    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v7    # "repeatingRequestSurface":Landroid/view/Surface;
    .end local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v9    # "supportedCaptureOutputFormats":[Ljava/lang/Integer;
    .end local v10    # "captureFormat":I
    .end local v11    # "burstCaptureSurface":Landroid/view/Surface;
    .end local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraId":Ljava/lang/String;
    .restart local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_239
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    goto :goto_242

    .line 158
    .end local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraId":Ljava/lang/String;
    .restart local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_23e
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .line 160
    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    :goto_242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
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

    .line 154
    .end local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraId":Ljava/lang/String;
    .restart local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_269
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .end local v1    # "cameraId":Ljava/lang/String;
    .end local v2    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v17    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported extension type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;
    .registers 11
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "captureTemplate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 710
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    .end local p2    # "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .end local p3    # "target":Landroid/view/Surface;
    .end local p4    # "captureTemplate":I
    .local v1, "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    .local v2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .local v3, "target":Landroid/view/Surface;
    .local v4, "captureTemplate":I
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .registers 12
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "captureTemplate"    # I
    .param p5, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 679
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {p1, p4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 680
    .local v0, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    if-eqz p3, :cond_9

    .line 681
    invoke-virtual {v0, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 684
    :cond_9
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 685
    .local v1, "ret":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 686
    .local v2, "nativeMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 687
    .local v4, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v4, :cond_28

    .line 688
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 690
    .end local v4    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_28
    goto :goto_15

    .line 692
    :cond_29
    if-eqz p5, :cond_47

    .line 695
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 696
    .local v4, "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {p5, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 697
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_46

    .line 698
    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 700
    .end local v4    # "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_46
    goto :goto_31

    .line 703
    :cond_47
    return-object v1
.end method

.method private static blacklist findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;
    .registers 11
    .param p1, "arSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 2102
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const v0, 0x3c23d70a    # 0.01f

    .line 2104
    .local v0, "TOLL":F
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 2108
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2109
    .local v1, "targetAR":F
    const/4 v2, 0x0

    .line 2110
    .local v2, "ret":Landroid/util/Size;
    const/4 v3, 0x0

    .line 2111
    .local v3, "fallbackSize":Landroid/util/Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2112
    .local v5, "sz":Landroid/util/Size;
    if-nez v3, :cond_29

    .line 2113
    move-object v3, v5

    .line 2115
    :cond_29
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-lez v6, :cond_5e

    if-eqz v2, :cond_45

    .line 2117
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    .line 2118
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-ge v6, v7, :cond_5e

    .line 2119
    :cond_45
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 2120
    .local v6, "currentAR":F
    sub-float v7, v6, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5e

    .line 2121
    move-object v2, v5

    .line 2124
    .end local v5    # "sz":Landroid/util/Size;
    .end local v6    # "currentAR":F
    :cond_5e
    goto :goto_1a

    .line 2125
    :cond_5f
    if-nez v2, :cond_69

    .line 2126
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "AR matched size not found returning first size in list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    move-object v2, v3

    .line 2130
    :cond_69
    return-object v2

    .line 2105
    .end local v1    # "targetAR":F
    .end local v2    # "ret":Landroid/util/Size;
    .end local v3    # "fallbackSize":Landroid/util/Size;
    :cond_6a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input aspect ratio"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist finishPipelineInitialization()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2f

    .line 476
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/16 v1, 0x22

    const/16 v2, 0xa

    if-nez v0, :cond_22

    .line 477
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 478
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    .line 477
    invoke-interface {v0, v3, v4}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 479
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v0, v2, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    goto :goto_2f

    .line 483
    :cond_22
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    .line 484
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v0, v2, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 490
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_51

    .line 491
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_42

    .line 492
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onPostviewOutputSurface(Landroid/view/Surface;)V

    .line 495
    :cond_42
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 497
    .local v0, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iget v3, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 499
    .end local v0    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_51
    return-void
.end method

.method private blacklist initializeBurstCapturePipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 390
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_1e

    .line 391
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multiple stages expected without a valid capture processor!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/16 v2, 0x100

    if-eqz v0, :cond_fc

    .line 396
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/16 v3, 0x23

    if-eqz v0, :cond_6e

    .line 397
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 399
    .local v0, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    if-ne v1, v2, :cond_42

    .line 400
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;-><init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 401
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    goto :goto_5d

    .line 402
    :cond_42
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_5d

    .line 404
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    .line 405
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v1

    .line 406
    .local v1, "postviewSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    if-ne v4, v2, :cond_5d

    .line 407
    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;-><init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 408
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 412
    .end local v1    # "postviewSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_5d
    :goto_5d
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 414
    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v4

    .line 412
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 415
    .end local v0    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    goto :goto_9d

    .line 419
    :cond_6e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 420
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 421
    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    .line 419
    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 425
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 426
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 427
    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    .line 425
    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 429
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 433
    :goto_9d
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;Z)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 435
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 438
    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 440
    .local v0, "sz":Landroid/hardware/camera2/extension/Size;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 441
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 443
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_ea

    .line 444
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    .line 445
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v1

    .line 446
    .restart local v1    # "postviewSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    new-instance v2, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 448
    .local v2, "postviewSize":Landroid/hardware/camera2/extension/Size;
    iget v3, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->width:I

    .line 449
    iget v3, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->height:I

    .line 450
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v3, v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 451
    .end local v1    # "postviewSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .end local v2    # "postviewSize":Landroid/hardware/camera2/extension/Size;
    goto :goto_f0

    .line 452
    :cond_ea
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V

    .line 455
    :goto_f0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 456
    .end local v0    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_11f

    .line 457
    :cond_fc
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_105

    .line 459
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    goto :goto_11f

    .line 464
    :cond_105
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 465
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 466
    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    .line 464
    invoke-static {v0, v3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 469
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 472
    :goto_11f
    return-void
.end method

.method private blacklist initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 6
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 2090
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 2091
    .local v0, "captureResults":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 2092
    .local v2, "key":Landroid/hardware/camera2/CaptureResult$Key;
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 2093
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_20

    .line 2094
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 2096
    .end local v2    # "key":Landroid/hardware/camera2/CaptureResult$Key;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_20
    goto :goto_b

    .line 2097
    :cond_21
    return-object v0
.end method

.method private static blacklist initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .registers 5
    .param p0, "img"    # Landroid/media/Image;

    .line 2134
    new-instance v0, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    .line 2135
    .local v0, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    .line 2137
    :try_start_b
    invoke-virtual {p0}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v1

    .line 2138
    .local v1, "fd":Landroid/hardware/SyncFence;
    invoke-virtual {v1}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2139
    invoke-virtual {v1}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_1c

    .line 2143
    .end local v1    # "fd":Landroid/hardware/SyncFence;
    :cond_1b
    goto :goto_24

    .line 2141
    :catch_1c
    move-exception v1

    .line 2142
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to parcel buffer fence!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    .end local v1    # "e":Ljava/io/IOException;
    :goto_24
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    .line 2145
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    .line 2146
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    .line 2147
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    .line 2148
    invoke-virtual {p0}, Landroid/media/Image;->getTransform()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    .line 2149
    invoke-virtual {p0}, Landroid/media/Image;->getScalingMode()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    .line 2150
    invoke-virtual {p0}, Landroid/media/Image;->getPlaneCount()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    .line 2151
    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    .line 2153
    return-object v0
.end method

.method private static blacklist initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .registers 10
    .param p1, "jpegOrientation"    # Ljava/lang/Integer;
    .param p2, "jpegQuality"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;"
        }
    .end annotation

    .line 2159
    .local p0, "captureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2160
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2161
    .local v2, "stageId":Ljava/lang/Integer;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2162
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    new-instance v4, Landroid/hardware/camera2/extension/CaptureBundle;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/CaptureBundle;-><init>()V

    .line 2163
    .local v4, "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->stage:I

    .line 2164
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/Image;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureImage:Landroid/hardware/camera2/extension/ParcelImage;

    .line 2165
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->sequenceId:I

    .line 2166
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 2167
    if-eqz p1, :cond_51

    .line 2168
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 2170
    :cond_51
    if-eqz p2, :cond_5a

    .line 2171
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 2173
    :cond_5a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    .end local v2    # "stageId":Ljava/lang/Integer;
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v4    # "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    goto :goto_d

    .line 2176
    :cond_5e
    return-object v0
.end method

.method private blacklist initializeRepeatingRequestPipeline()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;-><init>()V

    .line 323
    .local v0, "repeatingSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getProcessorType()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    .line 324
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v1, :cond_19

    .line 325
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    move-object v1, v0

    goto :goto_3f

    .line 329
    :cond_19
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v1

    .line 331
    .local v1, "captureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 332
    .local v2, "captureSize":Landroid/util/Size;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 333
    .local v3, "previewSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    .line 334
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    .line 335
    const-wide/16 v4, 0x100

    iput-wide v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    move-object v1, v0

    .line 338
    .end local v0    # "repeatingSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .end local v2    # "captureSize":Landroid/util/Size;
    .end local v3    # "previewSize":Landroid/util/Size;
    .local v1, "repeatingSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :goto_3f
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const-string v2, "Failed casting preview processor!"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_96

    .line 340
    :try_start_46
    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 341
    invoke-interface {v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v5

    iget v6, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iget-wide v7, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;-><init>(Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;IJLandroid/os/Handler;)V

    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    :try_end_59
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_59} :catch_8f

    .line 345
    nop

    .line 346
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onImageFormatUpdate(I)V

    .line 348
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    new-instance v2, Landroid/util/Size;

    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    .line 350
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    .line 351
    iget v5, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v6, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v8, 0xa

    iget-wide v9, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    const/16 v7, 0x23

    invoke-static/range {v5 .. v10}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 355
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    goto :goto_f4

    .line 343
    :catch_8f
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_96
    iget v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    if-nez v0, :cond_dc

    .line 359
    :try_start_9a
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    :try_end_a2
    .catch Ljava/lang/ClassCastException; {:try_start_9a .. :try_end_a2} :catch_d5

    .line 362
    nop

    .line 363
    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v7, 0xa

    iget-wide v8, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    const/16 v6, 0x22

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 367
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 368
    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 370
    .local v0, "sz":Landroid/hardware/camera2/extension/Size;
    iget v2, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iput v2, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 371
    iget v2, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iput v2, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 372
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    invoke-interface {v2, v0}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 373
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    const/16 v4, 0x22

    invoke-interface {v2, v4}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onImageFormatUpdate(I)V

    .line 375
    .end local v0    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_f4

    .line 360
    :catch_d5
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_dc
    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v7, 0xa

    iget-wide v8, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    const/16 v6, 0x22

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 380
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 382
    :goto_f4
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-direct {v0, p0, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;Z)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 384
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 385
    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 386
    return-void
.end method

.method private synthetic blacklist lambda$notifyConfigurationFailure$1()V
    .registers 2

    .line 992
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyConfigurationSuccess$2()V
    .registers 2

    .line 1009
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$release$0()V
    .registers 2

    .line 973
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method private static blacklist nativeGetSurfaceFormat(Landroid/view/Surface;)I
    .registers 2
    .param p0, "surface"    # Landroid/view/Surface;

    .line 132
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method private blacklist notifyConfigurationFailure()V
    .registers 5

    .line 981
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 983
    monitor-exit v0

    return-void

    .line 985
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 991
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 994
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    nop

    .line 996
    return-void

    .line 994
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    throw v2

    .line 985
    .end local v0    # "ident":J
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist notifyConfigurationSuccess()V
    .registers 5

    .line 999
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 1001
    monitor-exit v0

    return-void

    .line 1003
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 1005
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_25

    .line 1007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1009
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    .line 1011
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    nop

    .line 1013
    return-void

    .line 1011
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    throw v2

    .line 1005
    .end local v0    # "ident":J
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private blacklist setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .registers 6
    .param p2, "requestHandler"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 871
    .local p1, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 873
    .local v0, "initialRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 874
    return-void
.end method

.method private blacklist setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .param p1, "captureStage"    # Landroid/hardware/camera2/extension/CaptureStageImpl;
    .param p2, "requestHandler"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    return v0
.end method

.method private blacklist setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .registers 11
    .param p1, "captureStage"    # Landroid/hardware/camera2/extension/CaptureStageImpl;
    .param p2, "requestHandler"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 885
    .local v3, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, p3

    .end local p3    # "clientRequest":Landroid/hardware/camera2/CaptureRequest;
    .local v6, "clientRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    .line 888
    .local p3, "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p3, v2, p2}, Landroid/hardware/camera2/CameraCaptureSession;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method private blacklist validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 9
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 773
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v1, "Target output combination requested is not supported!"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    .line 774
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 775
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 776
    .local v0, "containsCaptureTarget":Z
    :goto_1d
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 778
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v2

    .line 780
    .local v4, "containsRepeatingTarget":Z
    :goto_2c
    if-nez v0, :cond_37

    if-eqz v4, :cond_31

    goto :goto_37

    .line 781
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
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

    .line 787
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    new-array v5, v4, [Landroid/view/Surface;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    aput-object v6, v5, v2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_61

    .line 789
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_61
    :goto_61
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v4, :cond_6c

    .line 797
    return-void

    .line 794
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 15
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 718
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_c7

    .line 722
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->validateCaptureRequestTargets(Landroid/hardware/camera2/CaptureRequest;)V

    .line 724
    const/4 v1, -0x1

    .line 725
    .local v1, "seqId":I
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v2, 0x3

    const-string v3, "CameraExtensionSessionImpl"

    if-eqz v0, :cond_6d

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 729
    .local v9, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    :try_start_1d
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 730
    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureStages()Ljava/util/List;

    move-result-object v6

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_5d

    .line 729
    move-object v10, v9

    .end local v9    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local v10, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    move-object v4, p0

    move-object v7, p1

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v7, "request":Landroid/hardware/camera2/CaptureRequest;
    :try_start_2b
    invoke-direct/range {v4 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2f} :catch_59

    move-object v6, v7

    .line 736
    .end local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    .local p1, "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    nop

    .line 737
    if-eqz p1, :cond_51

    .line 742
    iget-object v0, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v3, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v3, v4

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    move-object v9, v10

    .end local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local v9    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    iget-object v10, v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v7, p2

    move-object v8, p3

    move-object v5, v3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    invoke-direct/range {v4 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/util/HashMap;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    move-object v3, v4

    move-object v4, v5

    move-object v10, v9

    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local v9    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    .line 746
    .end local v1    # "seqId":I
    .end local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local p1, "seqId":I
    goto/16 :goto_af

    .line 738
    .restart local v1    # "seqId":I
    .restart local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local p1, "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :cond_51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create still capture burst request"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p1    # "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .local v7, "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_59
    move-exception v0

    move-object v6, v7

    move-object p1, v0

    .end local v7    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_62

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local v9    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local p1, "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_5d
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    move-object v10, v9

    move-object p1, v0

    .line 733
    .end local v9    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local p1, "e":Landroid/os/RemoteException;
    :goto_62
    const-string v0, "Failed to initialize internal burst request! Extension service does not respond!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 725
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v10    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .local p1, "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_6d
    move-object v4, p0

    move-object v6, p1

    .line 746
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object p1, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz p1, :cond_bf

    iget-object p1, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 747
    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 749
    const/4 p1, 0x0

    .line 751
    .local p1, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    :try_start_7c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v0, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    iget-object v5, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v5, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v7, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8e} :catch_b3

    const/4 v8, 0x1

    move-object v9, v6

    move-object v6, v0

    .end local v0    # "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .local v6, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    :try_start_91
    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_95} :catch_b0

    move-object v2, v6

    move-object v6, v9

    .line 760
    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p1    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .local v0, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    nop

    .line 762
    iget-object p1, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v7, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v8, 0x1

    move-object v5, p2

    move-object v3, v4

    move-object v4, v6

    move-object v6, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V

    move-object v6, v4

    move-object v4, v3

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    iget-object v3, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    .line 765
    .end local v0    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v1    # "seqId":I
    .local p1, "seqId":I
    nop

    .line 769
    :goto_af
    return p1

    .line 756
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v1    # "seqId":I
    .restart local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local p1, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    :catch_b0
    move-exception v0

    move-object v6, v9

    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_b4

    :catch_b3
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    :goto_b4
    const-string v5, "Failed to initialize capture request! Extension service does not respond!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v3

    .line 766
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_bf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capture request to unknown output surface!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 719
    .end local v1    # "seqId":I
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local p1, "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_c7
    move-object v6, p1

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Uninitialized component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_64

    .line 815
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_66

    .line 817
    const/4 v1, 0x1

    :try_start_b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_66

    .line 821
    goto :goto_14

    .line 818
    :catch_11
    move-exception v2

    .line 820
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_12
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionClosed:Z

    .line 823
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_66

    .line 825
    .local v2, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :try_start_19
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    .line 826
    .local v3, "disableParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v3, :cond_24

    .line 827
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_24
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 831
    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v4

    .line 832
    .local v4, "disableStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v4, :cond_2f

    .line 833
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2f} :catch_30
    .catchall {:try_start_19 .. :try_end_2f} :catchall_66

    .line 838
    .end local v3    # "disableParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v4    # "disableStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_2f
    goto :goto_38

    .line 835
    :catch_30
    move-exception v3

    .line 836
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_31
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Failed to disable extension! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_58

    iget-boolean v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionClosed:Z

    if-nez v3, :cond_58

    .line 840
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    invoke-direct {p0, v3, v2, v4, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 842
    .local v3, "disableRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v5, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-direct {v5, p0, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 846
    .end local v3    # "disableRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_58
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionClosed:Z

    .line 847
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    .line 848
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 850
    .end local v2    # "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :cond_64
    monitor-exit v0

    .line 851
    return-void

    .line 850
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_31 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public blacklist commitStats()V
    .registers 4

    .line 860
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_d

    .line 863
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStatsAggregator:Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V

    .line 865
    :cond_d
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    .line 563
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    .line 565
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

    .line 570
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34

    if-eqz v1, :cond_2c

    .line 576
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;

    move-result-object v1

    .line 577
    .local v1, "latency":Landroid/hardware/camera2/extension/LatencyPair;
    if-eqz v1, :cond_1a

    .line 578
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

    .line 581
    :cond_1a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 582
    .end local v1    # "latency":Landroid/hardware/camera2/extension/LatencyPair;
    :catch_1d
    move-exception v1

    .line 583
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to query realtime latency! Extension service does not respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw v2

    .line 572
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw v1

    .line 587
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public declared-synchronized blacklist initialize()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 505
    :try_start_1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_e

    .line 506
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Session already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d4

    .line 508
    monitor-exit p0

    return-void

    .line 510
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getSessionType()I

    move-result v0

    .line 511
    .local v0, "previewSessionType":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSessionType()I

    move-result v1

    .line 512
    .local v1, "imageSessionType":I
    if-ne v0, v1, :cond_ab

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, "sessionType":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3c

    if-eq v0, v4, :cond_3c

    .line 519
    move v2, v0

    .line 520
    const-string v3, "CameraExtensionSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using session type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_3c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v3, "sessionParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v5, "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeRepeatingRequestPipeline()V

    .line 526
    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    invoke-direct {v6, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 529
    .local v6, "previewOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v6, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setTimestampBase(I)V

    .line 530
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/OutputConfiguration;->setReadoutTimestampEnabled(Z)V

    .line 531
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v8}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v8

    .line 533
    .local v8, "previewSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v8, :cond_65

    .line 534
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_65
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeBurstCapturePipeline()V

    .line 537
    new-instance v9, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    invoke-direct {v9, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 538
    .local v9, "captureOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v9, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->setTimestampBase(I)V

    .line 539
    invoke-virtual {v9, v7}, Landroid/hardware/camera2/params/OutputConfiguration;->setReadoutTimestampEnabled(Z)V

    .line 540
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v7

    .line 542
    .local v7, "stillCaptureSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v7, :cond_83

    .line 543
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_83
    new-instance v10, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v11, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v11, v12}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v12, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V

    invoke-direct {v10, v2, v5, v11, v12}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 552
    .local v10, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a4

    .line 553
    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0, v11, v3, v13, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 555
    .local v4, "sessionParamRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v10, v4}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 558
    .end local v4    # "sessionParamRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_a4
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_a9
    .catchall {:try_start_e .. :try_end_a9} :catchall_d4

    .line 559
    monitor-exit p0

    return-void

    .line 513
    .end local v2    # "sessionType":I
    .end local v3    # "sessionParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .end local v5    # "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v6    # "previewOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v7    # "stillCaptureSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v8    # "previewSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v9    # "captureOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v10    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_ab
    :try_start_ab
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview extender session type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "and image extender session type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mismatch!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    .end local v0    # "previewSessionType":I
    .end local v1    # "imageSessionType":I
    :catchall_d4
    move-exception v0

    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_ab .. :try_end_d6} :catchall_d4

    throw v0
.end method

.method public blacklist release(Z)V
    .registers 8
    .param p1, "skipCloseNotification"    # Z

    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, "notifyClose":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 898
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d4

    .line 901
    :try_start_c
    iget-boolean v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionClosed:Z

    if-nez v3, :cond_1a

    .line 903
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 904
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 906
    :cond_1a
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDeInit(Landroid/os/IBinder;)V

    .line 907
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit(Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_d4

    .line 911
    goto :goto_31

    .line 908
    :catch_29
    move-exception v3

    .line 909
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Failed to release extensions! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_31
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_4c

    .line 914
    iget-boolean v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-nez v3, :cond_3d

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_43

    .line 915
    :cond_3d
    const/4 v0, 0x1

    .line 916
    iget v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionType:I

    invoke-static {v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession(I)V

    .line 918
    :cond_43
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionType:I

    invoke-static {v3, v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 920
    :cond_4c
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 921
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mToken:Landroid/os/IBinder;

    .line 923
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v3, :cond_5c

    .line 924
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    .line 925
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 928
    :cond_5c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_67

    .line 929
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 930
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 933
    :cond_67
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v3, :cond_72

    .line 934
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    .line 935
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 938
    :cond_72
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_7d

    .line 939
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 940
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 943
    :cond_7d
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_88

    .line 944
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 945
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 948
    :cond_88
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_93

    .line 949
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 950
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 953
    :cond_93
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    if-eqz v3, :cond_9e

    .line 954
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->close()V

    .line 955
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    .line 958
    :cond_9e
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    if-eqz v3, :cond_a9

    .line 959
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->close()V

    .line 960
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 963
    :cond_a9
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 964
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 965
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 966
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 967
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientPostviewSurface:Landroid/view/Surface;

    .line 968
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_2a .. :try_end_b8} :catchall_d4

    .line 970
    if-eqz v0, :cond_d3

    if-nez p1, :cond_d3

    .line 971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 973
    .local v1, "ident":J
    :try_start_c0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ca
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_ce

    .line 975
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    goto :goto_d3

    .line 975
    :catchall_ce
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 976
    throw v3

    .line 978
    .end local v1    # "ident":J
    :cond_d3
    :goto_d3
    return-void

    .line 968
    :catchall_d4
    move-exception v2

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v2
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 12
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 595
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_3
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_6c

    .line 600
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_60

    .line 604
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 605
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_78

    .line 611
    :try_start_21
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v0

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_3b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_78

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :try_start_2f
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-direct {p0, v0, v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_38
    .catchall {:try_start_2f .. :try_end_36} :catchall_80

    :try_start_36
    monitor-exit v1

    return p1

    .line 614
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catch_3b
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 615
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_41
    const-string p2, "CameraExtensionSessionImpl"

    const-string p3, "Failed to set repeating request! Extension service does not respond"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw p2

    .line 605
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .local p1, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_4f
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    goto :goto_58

    .line 604
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_54
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 606
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :goto_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid repeating request output target!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw p1

    .line 601
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_60
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No registered preview surface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw p1

    .line 597
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_6c
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Uninitialized component"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw p1

    .line 619
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_78
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_36 .. :try_end_7f} :catchall_80

    throw p1

    :catchall_80
    move-exception v0

    move-object p1, v0

    goto :goto_7e
.end method

.method public whitelist stopRepeating()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_11

    .line 806
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 807
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 808
    monitor-exit v0

    .line 809
    return-void

    .line 803
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw v1

    .line 808
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

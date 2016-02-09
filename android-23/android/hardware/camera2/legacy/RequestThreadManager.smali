.class public Landroid/hardware/camera2/legacy/RequestThreadManager;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$1;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$2;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$3;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$4;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$5;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final DEBUG:Z = false

.field private static final JPEG_FRAME_TIMEOUT:I = 0xfa0

.field private static final MAX_IN_FLIGHT_REQUESTS:I = 0x2

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_CONFIGURE_OUTPUTS:I = 0x1

.field private static final MSG_SUBMIT_CAPTURE_REQUEST:I = 0x2

.field private static final PREVIEW_FRAME_TIMEOUT:I = 0x3e8

.field private static final REQUEST_COMPLETE_TIMEOUT:I = 0xfa0

.field private static final USE_BLOB_FORMAT_OVERRIDE:Z = true

.field private static final VERBOSE:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mDummySurface:Landroid/view/Surface;

.field private mDummyTexture:Landroid/graphics/SurfaceTexture;

.field private final mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

.field private final mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field private mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

.field private final mIdleLock:Ljava/lang/Object;

.field private mIntermediateBufferSize:Landroid/util/Size;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final mPreviewOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewRunning:Z

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private final mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mReceivedJpeg:Landroid/os/ConditionVariable;

.field private final mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mRequestHandlerCb:Landroid/os/Handler$Callback;

.field private final mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

.field private final mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p1, "outputs"    # Ljava/util/Collection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configureOutputs(Ljava/util/Collection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V
    .locals 0
    .param p1, "surfaces"    # Ljava/util/Collection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    #@3
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 5
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "deviceState"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@6
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@d
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@14
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    #@16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@1b
    .line 99
    new-instance v1, Landroid/hardware/camera2/legacy/RequestQueue;

    #@1d
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@1f
    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestQueue;-><init>(Ljava/util/List;)V

    #@22
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@24
    .line 100
    const/4 v1, 0x0

    #@25
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    #@27
    .line 104
    new-instance v1, Ljava/lang/Object;

    #@29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@2c
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    #@2e
    .line 105
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@30
    const-string/jumbo v2, "Incoming Preview"

    #@33
    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    #@36
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@38
    .line 106
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@3a
    const-string/jumbo v2, "Incoming Requests"

    #@3d
    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    #@40
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    #@42
    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@44
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@47
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@49
    .line 187
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$1;

    #@4b
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@4e
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    #@50
    .line 205
    new-instance v1, Landroid/os/ConditionVariable;

    #@52
    invoke-direct {v1, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@55
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;

    #@57
    .line 207
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$2;

    #@59
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$2;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@5c
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@5e
    .line 252
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$3;

    #@60
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$3;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@63
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@65
    .line 260
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$4;

    #@67
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$4;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@6a
    .line 259
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@6c
    .line 655
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;

    #@6e
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$5;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@71
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    #@73
    .line 955
    const-string/jumbo v1, "camera must not be null"

    #@76
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Landroid/hardware/Camera;

    #@7c
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@7e
    .line 956
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    #@80
    .line 957
    const-string/jumbo v1, "characteristics must not be null"

    #@83
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    #@89
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@8b
    .line 958
    const-string/jumbo v1, "RequestThread-%d"

    #@8e
    const/4 v2, 0x1

    #@8f
    new-array v2, v2, [Ljava/lang/Object;

    #@91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v3

    #@95
    aput-object v3, v2, v4

    #@97
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    .line 959
    .local v0, "name":Ljava/lang/String;
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@9d
    .line 960
    const-string/jumbo v1, "deviceState must not be null"

    #@a0
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    move-result-object v1

    #@a4
    check-cast v1, Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@a6
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@a8
    .line 961
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@aa
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@ac
    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;-><init>(Landroid/hardware/Camera;)V

    #@af
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@b1
    .line 962
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@b3
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@b5
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@b7
    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V

    #@ba
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@bc
    .line 963
    new-instance v1, Landroid/hardware/camera2/legacy/CaptureCollector;

    #@be
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@c0
    const/4 v3, 0x2

    #@c1
    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/legacy/CaptureCollector;-><init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@c4
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@c6
    .line 964
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@c8
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    #@ca
    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    #@cd
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@cf
    .line 965
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@d1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    #@d3
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    #@d6
    .line 954
    return-void
.end method

.method private calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 19
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    .local p1, "callbackOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p2, "callbackSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@3
    move-result v15

    #@4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@7
    move-result v16

    #@8
    move/from16 v0, v16

    #@a
    if-eq v15, v0, :cond_0

    #@c
    .line 555
    new-instance v15, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v16, "Input collections must be same length"

    #@11
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v15

    #@15
    .line 557
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 558
    .local v4, "configuredJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v9

    #@1e
    .line 559
    .local v9, "sizeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "callbackSurface$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v15

    #@26
    if-eqz v15, :cond_2

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/view/Surface;

    #@2e
    .line 560
    .local v1, "callbackSurface":Landroid/view/Surface;
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/util/Size;

    #@34
    .line 561
    .local v5, "jpegSize":Landroid/util/Size;
    move-object/from16 v0, p0

    #@36
    iget-object v15, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@38
    invoke-static {v1, v15}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@3b
    move-result v15

    #@3c
    if-eqz v15, :cond_1

    #@3e
    .line 565
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 567
    .end local v1    # "callbackSurface":Landroid/view/Surface;
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@45
    move-result v15

    #@46
    if-nez v15, :cond_a

    #@48
    .line 575
    const/4 v8, -0x1

    #@49
    .line 576
    .local v8, "maxConfiguredJpegWidth":I
    const/4 v7, -0x1

    #@4a
    .line 577
    .local v7, "maxConfiguredJpegHeight":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v6

    #@4e
    .local v6, "jpegSize$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v15

    #@52
    if-eqz v15, :cond_5

    #@54
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v5

    #@58
    check-cast v5, Landroid/util/Size;

    #@5a
    .line 578
    .restart local v5    # "jpegSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    #@5d
    move-result v15

    #@5e
    if-le v15, v8, :cond_4

    #@60
    .line 579
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    #@63
    move-result v8

    #@64
    .line 580
    :cond_4
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    #@67
    move-result v15

    #@68
    if-le v15, v7, :cond_3

    #@6a
    .line 581
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    #@6d
    move-result v7

    #@6e
    goto :goto_1

    #@6f
    .line 583
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_5
    new-instance v10, Landroid/util/Size;

    #@71
    invoke-direct {v10, v8, v7}, Landroid/util/Size;-><init>(II)V

    #@74
    .line 586
    .local v10, "smallestBoundJpegSize":Landroid/util/Size;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    #@77
    move-result-object v15

    #@78
    .line 585
    invoke-static {v15}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    #@7b
    move-result-object v14

    #@7c
    .line 592
    .local v14, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@81
    .line 593
    .local v3, "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v13

    #@85
    .local v13, "supportedJpegSize$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v15

    #@89
    if-eqz v15, :cond_7

    #@8b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v12

    #@8f
    check-cast v12, Landroid/util/Size;

    #@91
    .line 594
    .local v12, "supportedJpegSize":Landroid/util/Size;
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@94
    move-result v15

    #@95
    if-lt v15, v8, :cond_6

    #@97
    .line 595
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@9a
    move-result v15

    #@9b
    if-lt v15, v7, :cond_6

    #@9d
    .line 596
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    goto :goto_2

    #@a1
    .line 600
    .end local v12    # "supportedJpegSize":Landroid/util/Size;
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@a4
    move-result v15

    #@a5
    if-eqz v15, :cond_8

    #@a7
    .line 601
    new-instance v15, Ljava/lang/AssertionError;

    #@a9
    .line 602
    new-instance v16, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v17, "Could not find any supported JPEG sizes large enough to fit "

    #@b1
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v16

    #@b5
    move-object/from16 v0, v16

    #@b7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v16

    #@bb
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v16

    #@bf
    .line 601
    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c2
    throw v15

    #@c3
    .line 607
    :cond_8
    new-instance v15, Landroid/hardware/camera2/utils/SizeAreaComparator;

    #@c5
    invoke-direct {v15}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    #@c8
    .line 606
    invoke-static {v3, v15}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@cb
    move-result-object v11

    #@cc
    check-cast v11, Landroid/util/Size;

    #@ce
    .line 609
    .local v11, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-virtual {v11, v10}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v15

    #@d2
    if-nez v15, :cond_9

    #@d4
    .line 610
    move-object/from16 v0, p0

    #@d6
    iget-object v15, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@d8
    .line 612
    const-string/jumbo v16, "configureOutputs - Will need to crop picture %s into smallest bound size %s"

    #@db
    .line 611
    const/16 v17, 0x2

    #@dd
    move/from16 v0, v17

    #@df
    new-array v0, v0, [Ljava/lang/Object;

    #@e1
    move-object/from16 v17, v0

    #@e3
    .line 614
    const/16 v18, 0x0

    #@e5
    aput-object v11, v17, v18

    #@e7
    const/16 v18, 0x1

    #@e9
    aput-object v10, v17, v18

    #@eb
    .line 611
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ee
    move-result-object v16

    #@ef
    .line 610
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 617
    :cond_9
    return-object v11

    #@f3
    .line 620
    .end local v3    # "candidateSupportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v6    # "jpegSize$iterator":Ljava/util/Iterator;
    .end local v7    # "maxConfiguredJpegHeight":I
    .end local v8    # "maxConfiguredJpegWidth":I
    .end local v10    # "smallestBoundJpegSize":Landroid/util/Size;
    .end local v11    # "smallestSupportedJpegSize":Landroid/util/Size;
    .end local v13    # "supportedJpegSize$iterator":Ljava/util/Iterator;
    .end local v14    # "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_a
    const/4 v15, 0x0

    #@f4
    return-object v15
.end method

.method private static checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 4
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    #@0
    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    #@3
    move-result v2

    #@4
    int-to-float v2, v2

    #@5
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    #@8
    move-result v3

    #@9
    int-to-float v3, v3

    #@a
    div-float v0, v2, v3

    #@c
    .line 625
    .local v0, "aAspect":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@f
    move-result v2

    #@10
    int-to-float v2, v2

    #@11
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@14
    move-result v3

    #@15
    int-to-float v3, v3

    #@16
    div-float v1, v2, v3

    #@18
    .line 627
    .local v1, "bAspect":F
    sub-float v2, v0, v1

    #@1a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@1d
    move-result v2

    #@1e
    const v3, 0x3c23d70a    # 0.01f

    #@21
    cmpg-float v2, v2, v3

    #@23
    if-gez v2, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    :goto_0
    return v2

    #@27
    :cond_0
    const/4 v2, 0x0

    #@28
    goto :goto_0
.end method

.method private configureOutputs(Ljava/util/Collection;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@3
    .line 352
    :try_start_1
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@7
    move-object/from16 v36, v0

    #@9
    const/16 v37, 0x0

    #@b
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    #@e
    .line 362
    :goto_0
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@12
    move-object/from16 v36, v0

    #@14
    if-eqz v36, :cond_0

    #@16
    .line 363
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@1a
    move-object/from16 v36, v0

    #@1c
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    #@1f
    .line 364
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@23
    move-object/from16 v36, v0

    #@25
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->ignoreNewFrames()V

    #@28
    .line 365
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2c
    move-object/from16 v36, v0

    #@2e
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilIdle()V

    #@31
    .line 367
    :cond_0
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@35
    move-object/from16 v36, v0

    #@37
    move-object/from16 v0, p0

    #@39
    move-object/from16 v1, v36

    #@3b
    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V

    #@3e
    .line 368
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@42
    move-object/from16 v36, v0

    #@44
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@47
    .line 369
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@4b
    move-object/from16 v36, v0

    #@4d
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@50
    .line 370
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@54
    move-object/from16 v36, v0

    #@56
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@59
    .line 371
    const/16 v36, 0x0

    #@5b
    move-object/from16 v0, v36

    #@5d
    move-object/from16 v1, p0

    #@5f
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@61
    .line 373
    new-instance v27, Ljava/util/ArrayList;

    #@63
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    #@66
    .line 374
    .local v27, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@68
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@6b
    .line 376
    .local v8, "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@6f
    move-object/from16 v36, v0

    #@71
    sget-object v37, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@73
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@76
    move-result-object v36

    #@77
    check-cast v36, Ljava/lang/Integer;

    #@79
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    #@7c
    move-result v15

    #@7d
    .line 377
    .local v15, "facing":I
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@81
    move-object/from16 v36, v0

    #@83
    sget-object v37, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@85
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@88
    move-result-object v36

    #@89
    check-cast v36, Ljava/lang/Integer;

    #@8b
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    #@8e
    move-result v19

    #@8f
    .line 378
    .local v19, "orientation":I
    if-eqz p1, :cond_1

    #@91
    .line 379
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@94
    move-result-object v23

    #@95
    .local v23, "outPair$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@98
    move-result v36

    #@99
    if-eqz v36, :cond_1

    #@9b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9e
    move-result-object v22

    #@9f
    check-cast v22, Landroid/util/Pair;

    #@a1
    .line 380
    .local v22, "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    move-object/from16 v0, v22

    #@a3
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a5
    move-object/from16 v31, v0

    #@a7
    check-cast v31, Landroid/view/Surface;

    #@a9
    .line 381
    .local v31, "s":Landroid/view/Surface;
    move-object/from16 v0, v22

    #@ab
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@ad
    move-object/from16 v24, v0

    #@af
    check-cast v24, Landroid/util/Size;

    #@b1
    .line 383
    .local v24, "outSize":Landroid/util/Size;
    :try_start_2
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@b4
    move-result v16

    #@b5
    .line 384
    .local v16, "format":I
    move-object/from16 v0, v31

    #@b7
    move/from16 v1, v19

    #@b9
    invoke-static {v0, v15, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceOrientation(Landroid/view/Surface;II)V

    #@bc
    .line 385
    packed-switch v16, :pswitch_data_0

    #@bf
    .line 397
    const/16 v36, 0x1

    #@c1
    move-object/from16 v0, v31

    #@c3
    move/from16 v1, v36

    #@c5
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setScalingMode(Landroid/view/Surface;I)V

    #@c8
    .line 399
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@cc
    move-object/from16 v36, v0

    #@ce
    move-object/from16 v0, v36

    #@d0
    move-object/from16 v1, v31

    #@d2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d5
    .line 400
    move-object/from16 v0, v27

    #@d7
    move-object/from16 v1, v24

    #@d9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_0

    #@dc
    goto :goto_1

    #@dd
    .line 403
    .end local v16    # "format":I
    :catch_0
    move-exception v12

    #@de
    .line 404
    .local v12, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@e2
    move-object/from16 v36, v0

    #@e4
    const-string/jumbo v37, "Surface abandoned, skipping..."

    #@e7
    move-object/from16 v0, v36

    #@e9
    move-object/from16 v1, v37

    #@eb
    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ee
    goto :goto_1

    #@ef
    .line 339
    .end local v8    # "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v12    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v15    # "facing":I
    .end local v19    # "orientation":I
    .end local v22    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v23    # "outPair$iterator":Ljava/util/Iterator;
    .end local v24    # "outSize":Landroid/util/Size;
    .end local v27    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v31    # "s":Landroid/view/Surface;
    :catch_1
    move-exception v14

    #@f0
    .line 340
    .local v14, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@f4
    move-object/from16 v36, v0

    #@f6
    const-string/jumbo v37, "Received device exception in configure call: "

    #@f9
    move-object/from16 v0, v36

    #@fb
    move-object/from16 v1, v37

    #@fd
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@100
    .line 341
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@104
    move-object/from16 v36, v0

    #@106
    .line 342
    const/16 v37, 0x1

    #@108
    .line 341
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@10b
    .line 343
    return-void

    #@10c
    .line 355
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v14

    #@10d
    .line 356
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@111
    move-object/from16 v36, v0

    #@113
    const-string/jumbo v37, "Received device exception in configure call: "

    #@116
    move-object/from16 v0, v36

    #@118
    move-object/from16 v1, v37

    #@11a
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11d
    .line 357
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@121
    move-object/from16 v36, v0

    #@123
    .line 358
    const/16 v37, 0x1

    #@125
    .line 357
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@128
    .line 359
    return-void

    #@129
    .line 353
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v13

    #@12a
    .line 354
    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@12e
    move-object/from16 v36, v0

    #@130
    const-string/jumbo v37, "Failed to clear prior SurfaceTexture, may cause GL deadlock: "

    #@133
    move-object/from16 v0, v36

    #@135
    move-object/from16 v1, v37

    #@137
    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13a
    goto/16 :goto_0

    #@13c
    .line 390
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v8    # "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v15    # "facing":I
    .restart local v16    # "format":I
    .restart local v19    # "orientation":I
    .restart local v22    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .restart local v23    # "outPair$iterator":Ljava/util/Iterator;
    .restart local v24    # "outSize":Landroid/util/Size;
    .restart local v27    # "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v31    # "s":Landroid/view/Surface;
    :pswitch_0
    const/16 v36, 0x1

    #@13e
    .line 389
    :try_start_3
    move-object/from16 v0, v31

    #@140
    move/from16 v1, v36

    #@142
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    #@145
    .line 392
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@149
    move-object/from16 v36, v0

    #@14b
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@14e
    move-result-wide v38

    #@14f
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@152
    move-result-object v37

    #@153
    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@156
    .line 393
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@15a
    move-object/from16 v36, v0

    #@15c
    move-object/from16 v0, v36

    #@15e
    move-object/from16 v1, v31

    #@160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@163
    .line 394
    move-object/from16 v0, v24

    #@165
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_0

    #@168
    goto/16 :goto_1

    #@16a
    .line 409
    .end local v16    # "format":I
    .end local v22    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v23    # "outPair$iterator":Ljava/util/Iterator;
    .end local v24    # "outSize":Landroid/util/Size;
    .end local v31    # "s":Landroid/view/Surface;
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@16e
    move-object/from16 v36, v0

    #@170
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@173
    move-result-object v36

    #@174
    move-object/from16 v0, v36

    #@176
    move-object/from16 v1, p0

    #@178
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    #@17a
    .line 417
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@17e
    move-object/from16 v36, v0

    #@180
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@183
    move-result-object v34

    #@184
    .line 418
    .local v34, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, v34

    #@188
    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    #@18b
    move-result-object v7

    #@18c
    .line 424
    .local v7, "bestRange":[I
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@190
    move-object/from16 v36, v0

    #@192
    const/16 v37, 0x0

    #@194
    aget v37, v7, v37

    #@196
    .line 425
    const/16 v38, 0x1

    #@198
    aget v38, v7, v38

    #@19a
    .line 424
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@19d
    .line 427
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@1a1
    move-object/from16 v36, v0

    #@1a3
    .line 428
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1a7
    move-object/from16 v37, v0

    #@1a9
    .line 427
    move-object/from16 v0, p0

    #@1ab
    move-object/from16 v1, v36

    #@1ad
    move-object/from16 v2, v37

    #@1af
    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    #@1b2
    move-result-object v33

    #@1b3
    .line 430
    .local v33, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@1b6
    move-result v36

    #@1b7
    if-lez v36, :cond_7

    #@1b9
    .line 432
    invoke-static/range {v27 .. v27}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    #@1bc
    move-result-object v18

    #@1bd
    .line 435
    .local v18, "largestOutput":Landroid/util/Size;
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1c1
    move-object/from16 v36, v0

    #@1c3
    invoke-static/range {v36 .. v36}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    #@1c6
    move-result-object v17

    #@1c7
    .line 437
    .local v17, "largestJpegDimen":Landroid/util/Size;
    if-eqz v33, :cond_3

    #@1c9
    move-object/from16 v9, v33

    #@1cb
    .line 441
    .local v9, "chosenJpegDimen":Landroid/util/Size;
    :goto_2
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1cf
    move-object/from16 v36, v0

    #@1d1
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    #@1d4
    move-result-object v36

    #@1d5
    .line 440
    invoke-static/range {v36 .. v36}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    #@1d8
    move-result-object v35

    #@1d9
    .line 446
    .local v35, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    #@1dc
    move-result v36

    #@1dd
    move/from16 v0, v36

    #@1df
    int-to-long v0, v0

    #@1e0
    move-wide/from16 v36, v0

    #@1e2
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    #@1e5
    move-result v38

    #@1e6
    move/from16 v0, v38

    #@1e8
    int-to-long v0, v0

    #@1e9
    move-wide/from16 v38, v0

    #@1eb
    mul-long v20, v36, v38

    #@1ed
    .line 447
    .local v20, "largestOutputArea":J
    invoke-static/range {v35 .. v35}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    #@1f0
    move-result-object v6

    #@1f1
    .line 448
    .local v6, "bestPreviewDimen":Landroid/util/Size;
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f4
    move-result-object v32

    #@1f5
    .local v32, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@1f8
    move-result v36

    #@1f9
    if-eqz v36, :cond_4

    #@1fb
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1fe
    move-result-object v30

    #@1ff
    check-cast v30, Landroid/util/Size;

    #@201
    .line 449
    .local v30, "s":Landroid/util/Size;
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getWidth()I

    #@204
    move-result v36

    #@205
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getHeight()I

    #@208
    move-result v37

    #@209
    mul-int v36, v36, v37

    #@20b
    move/from16 v0, v36

    #@20d
    int-to-long v10, v0

    #@20e
    .line 450
    .local v10, "currArea":J
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@211
    move-result v36

    #@212
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@215
    move-result v37

    #@216
    mul-int v36, v36, v37

    #@218
    move/from16 v0, v36

    #@21a
    int-to-long v4, v0

    #@21b
    .line 451
    .local v4, "bestArea":J
    move-object/from16 v0, v30

    #@21d
    invoke-static {v9, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z

    #@220
    move-result v36

    #@221
    if-eqz v36, :cond_2

    #@223
    cmp-long v36, v10, v4

    #@225
    if-gez v36, :cond_2

    #@227
    .line 452
    cmp-long v36, v10, v20

    #@229
    if-ltz v36, :cond_2

    #@22b
    .line 453
    move-object/from16 v6, v30

    #@22d
    goto :goto_3

    #@22e
    .line 410
    .end local v4    # "bestArea":J
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v7    # "bestRange":[I
    .end local v9    # "chosenJpegDimen":Landroid/util/Size;
    .end local v10    # "currArea":J
    .end local v17    # "largestJpegDimen":Landroid/util/Size;
    .end local v18    # "largestOutput":Landroid/util/Size;
    .end local v20    # "largestOutputArea":J
    .end local v30    # "s":Landroid/util/Size;
    .end local v32    # "s$iterator":Ljava/util/Iterator;
    .end local v33    # "smallestSupportedJpegSize":Landroid/util/Size;
    .end local v34    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_4
    move-exception v14

    #@22f
    .line 411
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@233
    move-object/from16 v36, v0

    #@235
    const-string/jumbo v37, "Received device exception: "

    #@238
    move-object/from16 v0, v36

    #@23a
    move-object/from16 v1, v37

    #@23c
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23f
    .line 412
    move-object/from16 v0, p0

    #@241
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@243
    move-object/from16 v36, v0

    #@245
    .line 413
    const/16 v37, 0x1

    #@247
    .line 412
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@24a
    .line 414
    return-void

    #@24b
    .line 438
    .end local v14    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "bestRange":[I
    .restart local v17    # "largestJpegDimen":Landroid/util/Size;
    .restart local v18    # "largestOutput":Landroid/util/Size;
    .restart local v33    # "smallestSupportedJpegSize":Landroid/util/Size;
    .restart local v34    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_3
    move-object/from16 v9, v17

    #@24d
    .restart local v9    # "chosenJpegDimen":Landroid/util/Size;
    goto/16 :goto_2

    #@24f
    .line 457
    .restart local v6    # "bestPreviewDimen":Landroid/util/Size;
    .restart local v20    # "largestOutputArea":J
    .restart local v32    # "s$iterator":Ljava/util/Iterator;
    .restart local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_4
    move-object/from16 v0, p0

    #@251
    iput-object v6, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@253
    .line 458
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@257
    move-object/from16 v36, v0

    #@259
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@25d
    move-object/from16 v37, v0

    #@25f
    invoke-virtual/range {v37 .. v37}, Landroid/util/Size;->getWidth()I

    #@262
    move-result v37

    #@263
    .line 459
    move-object/from16 v0, p0

    #@265
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@267
    move-object/from16 v38, v0

    #@269
    invoke-virtual/range {v38 .. v38}, Landroid/util/Size;->getHeight()I

    #@26c
    move-result v38

    #@26d
    .line 458
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    #@270
    .line 472
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v9    # "chosenJpegDimen":Landroid/util/Size;
    .end local v17    # "largestJpegDimen":Landroid/util/Size;
    .end local v18    # "largestOutput":Landroid/util/Size;
    .end local v20    # "largestOutputArea":J
    .end local v32    # "s$iterator":Ljava/util/Iterator;
    .end local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_4
    if-eqz v33, :cond_5

    #@272
    .line 478
    move-object/from16 v0, p0

    #@274
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@276
    move-object/from16 v36, v0

    #@278
    new-instance v37, Ljava/lang/StringBuilder;

    #@27a
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@27d
    const-string/jumbo v38, "configureOutputs - set take picture size to "

    #@280
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v37

    #@284
    move-object/from16 v0, v37

    #@286
    move-object/from16 v1, v33

    #@288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v37

    #@28c
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28f
    move-result-object v37

    #@290
    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@293
    .line 479
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@297
    move-object/from16 v36, v0

    #@299
    .line 480
    invoke-virtual/range {v33 .. v33}, Landroid/util/Size;->getWidth()I

    #@29c
    move-result v37

    #@29d
    invoke-virtual/range {v33 .. v33}, Landroid/util/Size;->getHeight()I

    #@2a0
    move-result v38

    #@2a1
    .line 479
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    #@2a4
    .line 484
    :cond_5
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2a8
    move-object/from16 v36, v0

    #@2aa
    if-nez v36, :cond_6

    #@2ac
    .line 485
    new-instance v36, Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    #@2b2
    move/from16 v37, v0

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2b8
    move-object/from16 v38, v0

    #@2ba
    move-object/from16 v0, v36

    #@2bc
    move/from16 v1, v37

    #@2be
    move-object/from16 v2, v38

    #@2c0
    invoke-direct {v0, v1, v15, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;-><init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@2c3
    move-object/from16 v0, v36

    #@2c5
    move-object/from16 v1, p0

    #@2c7
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2c9
    .line 486
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2cd
    move-object/from16 v36, v0

    #@2cf
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->start()V

    #@2d2
    .line 488
    :cond_6
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2d6
    move-object/from16 v36, v0

    #@2d8
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    #@2db
    .line 489
    new-instance v29, Ljava/util/ArrayList;

    #@2dd
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    #@2e0
    .line 490
    .local v29, "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2e3
    move-result-object v28

    #@2e4
    .line 491
    .local v28, "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@2e8
    move-object/from16 v36, v0

    #@2ea
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ed
    move-result-object v26

    #@2ee
    .local v26, "p$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@2f1
    move-result v36

    #@2f2
    if-eqz v36, :cond_8

    #@2f4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f7
    move-result-object v25

    #@2f8
    check-cast v25, Landroid/view/Surface;

    #@2fa
    .line 492
    .local v25, "p":Landroid/view/Surface;
    new-instance v37, Landroid/util/Pair;

    #@2fc
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2ff
    move-result-object v36

    #@300
    check-cast v36, Landroid/util/Size;

    #@302
    move-object/from16 v0, v37

    #@304
    move-object/from16 v1, v25

    #@306
    move-object/from16 v2, v36

    #@308
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@30b
    move-object/from16 v0, v29

    #@30d
    move-object/from16 v1, v37

    #@30f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@312
    goto :goto_5

    #@313
    .line 466
    .end local v25    # "p":Landroid/view/Surface;
    .end local v26    # "p$iterator":Ljava/util/Iterator;
    .end local v28    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .end local v29    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    :cond_7
    const/16 v36, 0x0

    #@315
    move-object/from16 v0, v36

    #@317
    move-object/from16 v1, p0

    #@319
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@31b
    goto/16 :goto_4

    #@31d
    .line 494
    .restart local v26    # "p$iterator":Ljava/util/Iterator;
    .restart local v28    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .restart local v29    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    :cond_8
    move-object/from16 v0, p0

    #@31f
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@321
    move-object/from16 v36, v0

    #@323
    move-object/from16 v0, p0

    #@325
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@327
    move-object/from16 v37, v0

    #@329
    move-object/from16 v0, v36

    #@32b
    move-object/from16 v1, v29

    #@32d
    move-object/from16 v2, v37

    #@32f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@332
    .line 495
    move-object/from16 v0, p0

    #@334
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@336
    move-object/from16 v36, v0

    #@338
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->allowNewFrames()V

    #@33b
    .line 496
    move-object/from16 v0, p0

    #@33d
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@33f
    move-object/from16 v36, v0

    #@341
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;

    #@344
    move-result-object v36

    #@345
    move-object/from16 v0, v36

    #@347
    move-object/from16 v1, p0

    #@349
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@34b
    .line 497
    move-object/from16 v0, p0

    #@34d
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@34f
    move-object/from16 v36, v0

    #@351
    if-eqz v36, :cond_9

    #@353
    .line 498
    move-object/from16 v0, p0

    #@355
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@357
    move-object/from16 v36, v0

    #@359
    move-object/from16 v0, p0

    #@35b
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@35d
    move-object/from16 v37, v0

    #@35f
    invoke-virtual/range {v36 .. v37}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@362
    .line 502
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    #@364
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@366
    move-object/from16 v36, v0

    #@368
    move-object/from16 v0, p0

    #@36a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@36c
    move-object/from16 v37, v0

    #@36e
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    #@371
    .line 331
    :goto_6
    return-void

    #@372
    .line 503
    :catch_5
    move-exception v14

    #@373
    .line 504
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@377
    move-object/from16 v36, v0

    #@379
    const-string/jumbo v37, "Received device exception while configuring: "

    #@37c
    move-object/from16 v0, v36

    #@37e
    move-object/from16 v1, v37

    #@380
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@383
    .line 505
    move-object/from16 v0, p0

    #@385
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@387
    move-object/from16 v36, v0

    #@389
    .line 506
    const/16 v37, 0x1

    #@38b
    .line 505
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@38e
    goto :goto_6

    #@38f
    .line 385
    nop

    #@390
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private createDummySurface()V
    .locals 3

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 180
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    #@10
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    #@12
    const/16 v1, 0x280

    #@14
    const/16 v2, 0x1e0

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@19
    .line 183
    new-instance v0, Landroid/view/Surface;

    #@1b
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    #@1d
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@20
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummySurface:Landroid/view/Surface;

    #@22
    .line 178
    :cond_1
    return-void
.end method

.method private doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@4
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    #@a
    .line 307
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@d
    .line 303
    return-void
.end method

.method private doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 297
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->createDummySurface()V

    #@7
    .line 298
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@9
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDummyTexture:Landroid/graphics/SurfaceTexture;

    #@b
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    #@e
    .line 299
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    #@11
    .line 291
    :cond_0
    return-void
.end method

.method private doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 316
    return-void

    #@5
    .line 319
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    .line 321
    const-string/jumbo v1, "Preview capture called with no preview surfaces configured."

    #@e
    .line 320
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 324
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@14
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    #@19
    move-result v1

    #@1a
    .line 325
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@1c
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@1f
    move-result v2

    #@20
    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@23
    .line 326
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@25
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@27
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    #@2a
    .line 328
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->startPreview()V

    #@2d
    .line 310
    return-void
.end method

.method private getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v9, 0x0

    #@1
    .line 632
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v8

    #@5
    if-nez v8, :cond_0

    #@7
    .line 633
    iget-object v8, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v9, "No supported frame rates returned!"

    #@c
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 634
    const/4 v8, 0x0

    #@10
    return-object v8

    #@11
    .line 637
    :cond_0
    const/4 v2, 0x0

    #@12
    .line 638
    .local v2, "bestMin":I
    const/4 v1, 0x0

    #@13
    .line 639
    .local v1, "bestMax":I
    const/4 v0, 0x0

    #@14
    .line 640
    .local v0, "bestIndex":I
    const/4 v3, 0x0

    #@15
    .line 641
    .local v3, "index":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v7

    #@19
    .local v7, "rate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_3

    #@1f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, [I

    #@25
    .line 642
    .local v6, "rate":[I
    aget v5, v6, v9

    #@27
    .line 643
    .local v5, "minFps":I
    const/4 v8, 0x1

    #@28
    aget v4, v6, v8

    #@2a
    .line 644
    .local v4, "maxFps":I
    if-gt v4, v1, :cond_1

    #@2c
    if-ne v4, v1, :cond_2

    #@2e
    if-le v5, v2, :cond_2

    #@30
    .line 645
    :cond_1
    move v2, v5

    #@31
    .line 646
    move v1, v4

    #@32
    .line 647
    move v0, v3

    #@33
    .line 649
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 652
    .end local v4    # "maxFps":I
    .end local v5    # "minFps":I
    .end local v6    # "rate":[I
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v8

    #@3a
    check-cast v8, [I

    #@3c
    return-object v8
.end method

.method private resetJpegSurfaceFormats(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    #@2
    .line 513
    return-void

    #@3
    .line 515
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/view/Surface;

    #@13
    .line 516
    .local v1, "s":Landroid/view/Surface;
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 521
    const/16 v3, 0x21

    #@1d
    :try_start_0
    invoke-static {v1, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 522
    :catch_0
    move-exception v0

    #@22
    .line 523
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v4, "Surface abandoned, skipping..."

    #@27
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0

    #@2b
    .line 517
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@2d
    const-string/jumbo v4, "Jpeg surface is invalid, skipping..."

    #@30
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_0

    #@34
    .line 511
    .end local v1    # "s":Landroid/view/Surface;
    :cond_2
    return-void
.end method

.method private startPreview()V
    .locals 1

    #@0
    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 286
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@6
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    #@9
    .line 287
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@c
    .line 280
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 275
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@6
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    #@9
    .line 276
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewRunning:Z

    #@c
    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRepeating(I)J
    .locals 2
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public configure(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "outputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    const/4 v4, 0x0

    #@1
    .line 1051
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@3
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@6
    move-result-object v1

    #@7
    .line 1052
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    #@9
    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@c
    .line 1053
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    #@e
    invoke-direct {v2, v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;)V

    #@11
    .line 1054
    .local v2, "holder":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    const/4 v3, 0x1

    #@12
    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 1055
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@1c
    .line 1050
    return-void
.end method

.method public flush()J
    .locals 4

    #@0
    .prologue
    .line 981
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@2
    const-string/jumbo v3, "Flushing all pending requests."

    #@5
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 982
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@a
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating()J

    #@d
    move-result-wide v0

    #@e
    .line 983
    .local v0, "lastFrame":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@10
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V

    #@13
    .line 984
    return-wide v0
.end method

.method public quit()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 991
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 992
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@b
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    .line 993
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@17
    .line 994
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@19
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    #@1c
    .line 996
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@1e
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 990
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    #@22
    .line 997
    .restart local v1    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    #@23
    .line 998
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@25
    const-string/jumbo v3, "Thread %s (%d) interrupted while quitting."

    #@28
    const/4 v4, 0x2

    #@29
    new-array v4, v4, [Ljava/lang/Object;

    #@2b
    .line 999
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2d
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    const/4 v6, 0x0

    #@32
    aput-object v5, v4, v6

    #@34
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@36
    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    #@39
    move-result-wide v6

    #@3a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3d
    move-result-object v5

    #@3e
    aput-object v5, v4, v8

    #@40
    .line 998
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    #@5
    .line 971
    return-void
.end method

.method public submitCaptureRequests(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 4
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 1019
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 1021
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1022
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@b
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/camera2/legacy/RequestQueue;->submit(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@e
    move-result v1

    #@f
    .line 1023
    .local v1, "ret":I
    const/4 v2, 0x2

    #@10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v3

    #@14
    .line 1025
    return v1

    #@15
    .line 1021
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method

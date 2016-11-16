.class public Landroid/hardware/camera2/legacy/RequestThreadManager;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestThreadManager$1;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$2;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$3;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$4;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$5;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;,
        Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
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
    .line 980
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
    .line 667
    new-instance v1, Landroid/hardware/camera2/legacy/RequestThreadManager$5;

    #@6e
    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$5;-><init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V

    #@71
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    #@73
    .line 982
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
    .line 983
    iput p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    #@80
    .line 984
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
    .line 985
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
    .line 986
    .local v0, "name":Ljava/lang/String;
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@9d
    .line 987
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
    .line 988
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@aa
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@ac
    invoke-direct {v1, v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;-><init>(Landroid/hardware/Camera;)V

    #@af
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@b1
    .line 989
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
    .line 990
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
    .line 991
    new-instance v1, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@c8
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestHandlerCb:Landroid/os/Handler$Callback;

    #@ca
    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    #@cd
    iput-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@cf
    .line 992
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@d1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    #@d3
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    #@d6
    .line 981
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
    .line 566
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
    .line 567
    new-instance v15, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v16, "Input collections must be same length"

    #@11
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v15

    #@15
    .line 569
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 570
    .local v4, "configuredJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v9

    #@1e
    .line 571
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
    .line 572
    .local v1, "callbackSurface":Landroid/view/Surface;
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/util/Size;

    #@34
    .line 573
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
    .line 577
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 579
    .end local v1    # "callbackSurface":Landroid/view/Surface;
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@45
    move-result v15

    #@46
    if-nez v15, :cond_a

    #@48
    .line 587
    const/4 v8, -0x1

    #@49
    .line 588
    .local v8, "maxConfiguredJpegWidth":I
    const/4 v7, -0x1

    #@4a
    .line 589
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
    .line 590
    .restart local v5    # "jpegSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    #@5d
    move-result v15

    #@5e
    if-le v15, v8, :cond_4

    #@60
    .line 591
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    #@63
    move-result v8

    #@64
    .line 592
    :cond_4
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    #@67
    move-result v15

    #@68
    if-le v15, v7, :cond_3

    #@6a
    .line 593
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    #@6d
    move-result v7

    #@6e
    goto :goto_1

    #@6f
    .line 595
    .end local v5    # "jpegSize":Landroid/util/Size;
    :cond_5
    new-instance v10, Landroid/util/Size;

    #@71
    invoke-direct {v10, v8, v7}, Landroid/util/Size;-><init>(II)V

    #@74
    .line 598
    .local v10, "smallestBoundJpegSize":Landroid/util/Size;
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    #@77
    move-result-object v15

    #@78
    .line 597
    invoke-static {v15}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    #@7b
    move-result-object v14

    #@7c
    .line 604
    .local v14, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@81
    .line 605
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
    .line 606
    .local v12, "supportedJpegSize":Landroid/util/Size;
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@94
    move-result v15

    #@95
    if-lt v15, v8, :cond_6

    #@97
    .line 607
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@9a
    move-result v15

    #@9b
    if-lt v15, v7, :cond_6

    #@9d
    .line 608
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    goto :goto_2

    #@a1
    .line 612
    .end local v12    # "supportedJpegSize":Landroid/util/Size;
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@a4
    move-result v15

    #@a5
    if-eqz v15, :cond_8

    #@a7
    .line 613
    new-instance v15, Ljava/lang/AssertionError;

    #@a9
    .line 614
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
    .line 613
    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c2
    throw v15

    #@c3
    .line 619
    :cond_8
    new-instance v15, Landroid/hardware/camera2/utils/SizeAreaComparator;

    #@c5
    invoke-direct {v15}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    #@c8
    .line 618
    invoke-static {v3, v15}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    #@cb
    move-result-object v11

    #@cc
    check-cast v11, Landroid/util/Size;

    #@ce
    .line 621
    .local v11, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-virtual {v11, v10}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v15

    #@d2
    if-nez v15, :cond_9

    #@d4
    .line 622
    move-object/from16 v0, p0

    #@d6
    iget-object v15, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@d8
    .line 624
    const-string/jumbo v16, "configureOutputs - Will need to crop picture %s into smallest bound size %s"

    #@db
    .line 623
    const/16 v17, 0x2

    #@dd
    move/from16 v0, v17

    #@df
    new-array v0, v0, [Ljava/lang/Object;

    #@e1
    move-object/from16 v17, v0

    #@e3
    .line 626
    const/16 v18, 0x0

    #@e5
    aput-object v11, v17, v18

    #@e7
    const/16 v18, 0x1

    #@e9
    aput-object v10, v17, v18

    #@eb
    .line 623
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ee
    move-result-object v16

    #@ef
    .line 622
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 629
    :cond_9
    return-object v11

    #@f3
    .line 632
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
    .line 636
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
    .line 637
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
    .line 639
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
    .line 369
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@42
    move-object/from16 v36, v0

    #@44
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v32

    #@48
    .local v32, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v36

    #@4c
    if-eqz v36, :cond_1

    #@4e
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v31

    #@52
    check-cast v31, Landroid/view/Surface;

    #@54
    .line 371
    .local v31, "s":Landroid/view/Surface;
    :try_start_2
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->disconnectSurface(Landroid/view/Surface;)V
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_0

    #@57
    goto :goto_1

    #@58
    .line 372
    :catch_0
    move-exception v12

    #@59
    .line 373
    .local v12, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@5d
    move-object/from16 v36, v0

    #@5f
    const-string/jumbo v37, "Surface abandoned, skipping..."

    #@62
    move-object/from16 v0, v36

    #@64
    move-object/from16 v1, v37

    #@66
    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    goto :goto_1

    #@6a
    .line 339
    .end local v12    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v31    # "s":Landroid/view/Surface;
    .end local v32    # "s$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v14

    #@6b
    .line 340
    .local v14, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@6f
    move-object/from16 v36, v0

    #@71
    const-string/jumbo v37, "Received device exception in configure call: "

    #@74
    move-object/from16 v0, v36

    #@76
    move-object/from16 v1, v37

    #@78
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 341
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7f
    move-object/from16 v36, v0

    #@81
    .line 342
    const/16 v37, 0x1

    #@83
    .line 341
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@86
    .line 343
    return-void

    #@87
    .line 355
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v14

    #@88
    .line 356
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@8c
    move-object/from16 v36, v0

    #@8e
    const-string/jumbo v37, "Received device exception in configure call: "

    #@91
    move-object/from16 v0, v36

    #@93
    move-object/from16 v1, v37

    #@95
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@98
    .line 357
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@9c
    move-object/from16 v36, v0

    #@9e
    .line 358
    const/16 v37, 0x1

    #@a0
    .line 357
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@a3
    .line 359
    return-void

    #@a4
    .line 353
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v13

    #@a5
    .line 354
    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@a9
    move-object/from16 v36, v0

    #@ab
    const-string/jumbo v37, "Failed to clear prior SurfaceTexture, may cause GL deadlock: "

    #@ae
    move-object/from16 v0, v36

    #@b0
    move-object/from16 v1, v37

    #@b2
    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b5
    goto/16 :goto_0

    #@b7
    .line 376
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v32    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@bb
    move-object/from16 v36, v0

    #@bd
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@c0
    .line 377
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@c4
    move-object/from16 v36, v0

    #@c6
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@c9
    .line 378
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@cd
    move-object/from16 v36, v0

    #@cf
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->clear()V

    #@d2
    .line 379
    const/16 v36, 0x0

    #@d4
    move-object/from16 v0, v36

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@da
    .line 381
    new-instance v27, Ljava/util/ArrayList;

    #@dc
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    #@df
    .line 382
    .local v27, "previewOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@e1
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@e4
    .line 384
    .local v8, "callbackOutputSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@e8
    move-object/from16 v36, v0

    #@ea
    sget-object v37, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@ec
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@ef
    move-result-object v36

    #@f0
    check-cast v36, Ljava/lang/Integer;

    #@f2
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    #@f5
    move-result v15

    #@f6
    .line 385
    .local v15, "facing":I
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@fa
    move-object/from16 v36, v0

    #@fc
    sget-object v37, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@fe
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@101
    move-result-object v36

    #@102
    check-cast v36, Ljava/lang/Integer;

    #@104
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    #@107
    move-result v19

    #@108
    .line 386
    .local v19, "orientation":I
    if-eqz p1, :cond_2

    #@10a
    .line 387
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v23

    #@10e
    .local v23, "outPair$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v36

    #@112
    if-eqz v36, :cond_2

    #@114
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v22

    #@118
    check-cast v22, Landroid/util/Pair;

    #@11a
    .line 388
    .local v22, "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    move-object/from16 v0, v22

    #@11c
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@11e
    move-object/from16 v31, v0

    #@120
    check-cast v31, Landroid/view/Surface;

    #@122
    .line 389
    .restart local v31    # "s":Landroid/view/Surface;
    move-object/from16 v0, v22

    #@124
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@126
    move-object/from16 v24, v0

    #@128
    check-cast v24, Landroid/util/Size;

    #@12a
    .line 391
    .local v24, "outSize":Landroid/util/Size;
    :try_start_3
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@12d
    move-result v16

    #@12e
    .line 392
    .local v16, "format":I
    move-object/from16 v0, v31

    #@130
    move/from16 v1, v19

    #@132
    invoke-static {v0, v15, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceOrientation(Landroid/view/Surface;II)V

    #@135
    .line 393
    packed-switch v16, :pswitch_data_0

    #@138
    .line 409
    const/16 v36, 0x1

    #@13a
    move-object/from16 v0, v31

    #@13c
    move/from16 v1, v36

    #@13e
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setScalingMode(Landroid/view/Surface;I)V

    #@141
    .line 411
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@145
    move-object/from16 v36, v0

    #@147
    move-object/from16 v0, v36

    #@149
    move-object/from16 v1, v31

    #@14b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14e
    .line 412
    move-object/from16 v0, v27

    #@150
    move-object/from16 v1, v24

    #@152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_4

    #@155
    goto :goto_2

    #@156
    .line 415
    .end local v16    # "format":I
    :catch_4
    move-exception v12

    #@157
    .line 416
    .restart local v12    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@15b
    move-object/from16 v36, v0

    #@15d
    const-string/jumbo v37, "Surface abandoned, skipping..."

    #@160
    move-object/from16 v0, v36

    #@162
    move-object/from16 v1, v37

    #@164
    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@167
    goto :goto_2

    #@168
    .line 398
    .end local v12    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v16    # "format":I
    :pswitch_0
    const/16 v36, 0x1

    #@16a
    .line 397
    :try_start_4
    move-object/from16 v0, v31

    #@16c
    move/from16 v1, v36

    #@16e
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    #@171
    .line 400
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mJpegSurfaceIds:Ljava/util/List;

    #@175
    move-object/from16 v36, v0

    #@177
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@17a
    move-result-wide v38

    #@17b
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17e
    move-result-object v37

    #@17f
    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@182
    .line 401
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@186
    move-object/from16 v36, v0

    #@188
    move-object/from16 v0, v36

    #@18a
    move-object/from16 v1, v31

    #@18c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18f
    .line 402
    move-object/from16 v0, v24

    #@191
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@194
    .line 406
    invoke-static/range {v31 .. v31}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->connectSurface(Landroid/view/Surface;)V
    :try_end_4
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_4 .. :try_end_4} :catch_4

    #@197
    goto/16 :goto_2

    #@199
    .line 421
    .end local v16    # "format":I
    .end local v22    # "outPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v23    # "outPair$iterator":Ljava/util/Iterator;
    .end local v24    # "outSize":Landroid/util/Size;
    .end local v31    # "s":Landroid/view/Surface;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@19d
    move-object/from16 v36, v0

    #@19f
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@1a2
    move-result-object v36

    #@1a3
    move-object/from16 v0, v36

    #@1a5
    move-object/from16 v1, p0

    #@1a7
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    #@1a9
    .line 429
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1ad
    move-object/from16 v36, v0

    #@1af
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@1b2
    move-result-object v34

    #@1b3
    .line 430
    .local v34, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    #@1b5
    move-object/from16 v1, v34

    #@1b7
    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    #@1ba
    move-result-object v7

    #@1bb
    .line 436
    .local v7, "bestRange":[I
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1bf
    move-object/from16 v36, v0

    #@1c1
    const/16 v37, 0x0

    #@1c3
    aget v37, v7, v37

    #@1c5
    .line 437
    const/16 v38, 0x1

    #@1c7
    aget v38, v7, v38

    #@1c9
    .line 436
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    #@1cc
    .line 439
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;

    #@1d0
    move-object/from16 v36, v0

    #@1d2
    .line 440
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1d6
    move-object/from16 v37, v0

    #@1d8
    .line 439
    move-object/from16 v0, p0

    #@1da
    move-object/from16 v1, v36

    #@1dc
    move-object/from16 v2, v37

    #@1de
    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->calculatePictureSize(Ljava/util/List;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    #@1e1
    move-result-object v33

    #@1e2
    .line 442
    .local v33, "smallestSupportedJpegSize":Landroid/util/Size;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    #@1e5
    move-result v36

    #@1e6
    if-lez v36, :cond_8

    #@1e8
    .line 444
    invoke-static/range {v27 .. v27}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    #@1eb
    move-result-object v18

    #@1ec
    .line 447
    .local v18, "largestOutput":Landroid/util/Size;
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1f0
    move-object/from16 v36, v0

    #@1f2
    invoke-static/range {v36 .. v36}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    #@1f5
    move-result-object v17

    #@1f6
    .line 449
    .local v17, "largestJpegDimen":Landroid/util/Size;
    if-eqz v33, :cond_4

    #@1f8
    move-object/from16 v9, v33

    #@1fa
    .line 453
    .local v9, "chosenJpegDimen":Landroid/util/Size;
    :goto_3
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@1fe
    move-object/from16 v36, v0

    #@200
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    #@203
    move-result-object v36

    #@204
    .line 452
    invoke-static/range {v36 .. v36}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    #@207
    move-result-object v35

    #@208
    .line 458
    .local v35, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    #@20b
    move-result v36

    #@20c
    move/from16 v0, v36

    #@20e
    int-to-long v0, v0

    #@20f
    move-wide/from16 v36, v0

    #@211
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    #@214
    move-result v38

    #@215
    move/from16 v0, v38

    #@217
    int-to-long v0, v0

    #@218
    move-wide/from16 v38, v0

    #@21a
    mul-long v20, v36, v38

    #@21c
    .line 459
    .local v20, "largestOutputArea":J
    invoke-static/range {v35 .. v35}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    #@21f
    move-result-object v6

    #@220
    .line 460
    .local v6, "bestPreviewDimen":Landroid/util/Size;
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@223
    move-result-object v32

    #@224
    :cond_3
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@227
    move-result v36

    #@228
    if-eqz v36, :cond_5

    #@22a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22d
    move-result-object v30

    #@22e
    check-cast v30, Landroid/util/Size;

    #@230
    .line 461
    .local v30, "s":Landroid/util/Size;
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getWidth()I

    #@233
    move-result v36

    #@234
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getHeight()I

    #@237
    move-result v37

    #@238
    mul-int v36, v36, v37

    #@23a
    move/from16 v0, v36

    #@23c
    int-to-long v10, v0

    #@23d
    .line 462
    .local v10, "currArea":J
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@240
    move-result v36

    #@241
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@244
    move-result v37

    #@245
    mul-int v36, v36, v37

    #@247
    move/from16 v0, v36

    #@249
    int-to-long v4, v0

    #@24a
    .line 463
    .local v4, "bestArea":J
    move-object/from16 v0, v30

    #@24c
    invoke-static {v9, v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->checkAspectRatiosMatch(Landroid/util/Size;Landroid/util/Size;)Z

    #@24f
    move-result v36

    #@250
    if-eqz v36, :cond_3

    #@252
    cmp-long v36, v10, v4

    #@254
    if-gez v36, :cond_3

    #@256
    .line 464
    cmp-long v36, v10, v20

    #@258
    if-ltz v36, :cond_3

    #@25a
    .line 465
    move-object/from16 v6, v30

    #@25c
    goto :goto_4

    #@25d
    .line 422
    .end local v4    # "bestArea":J
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v7    # "bestRange":[I
    .end local v9    # "chosenJpegDimen":Landroid/util/Size;
    .end local v10    # "currArea":J
    .end local v17    # "largestJpegDimen":Landroid/util/Size;
    .end local v18    # "largestOutput":Landroid/util/Size;
    .end local v20    # "largestOutputArea":J
    .end local v30    # "s":Landroid/util/Size;
    .end local v33    # "smallestSupportedJpegSize":Landroid/util/Size;
    .end local v34    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_5
    move-exception v14

    #@25e
    .line 423
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@262
    move-object/from16 v36, v0

    #@264
    const-string/jumbo v37, "Received device exception: "

    #@267
    move-object/from16 v0, v36

    #@269
    move-object/from16 v1, v37

    #@26b
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26e
    .line 424
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@272
    move-object/from16 v36, v0

    #@274
    .line 425
    const/16 v37, 0x1

    #@276
    .line 424
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@279
    .line 426
    return-void

    #@27a
    .line 450
    .end local v14    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "bestRange":[I
    .restart local v17    # "largestJpegDimen":Landroid/util/Size;
    .restart local v18    # "largestOutput":Landroid/util/Size;
    .restart local v33    # "smallestSupportedJpegSize":Landroid/util/Size;
    .restart local v34    # "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_4
    move-object/from16 v9, v17

    #@27c
    .restart local v9    # "chosenJpegDimen":Landroid/util/Size;
    goto/16 :goto_3

    #@27e
    .line 469
    .restart local v6    # "bestPreviewDimen":Landroid/util/Size;
    .restart local v20    # "largestOutputArea":J
    .restart local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_5
    move-object/from16 v0, p0

    #@280
    iput-object v6, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@282
    .line 470
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@286
    move-object/from16 v36, v0

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@28c
    move-object/from16 v37, v0

    #@28e
    invoke-virtual/range {v37 .. v37}, Landroid/util/Size;->getWidth()I

    #@291
    move-result v37

    #@292
    .line 471
    move-object/from16 v0, p0

    #@294
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@296
    move-object/from16 v38, v0

    #@298
    invoke-virtual/range {v38 .. v38}, Landroid/util/Size;->getHeight()I

    #@29b
    move-result v38

    #@29c
    .line 470
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    #@29f
    .line 484
    .end local v6    # "bestPreviewDimen":Landroid/util/Size;
    .end local v9    # "chosenJpegDimen":Landroid/util/Size;
    .end local v17    # "largestJpegDimen":Landroid/util/Size;
    .end local v18    # "largestOutput":Landroid/util/Size;
    .end local v20    # "largestOutputArea":J
    .end local v35    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_5
    if-eqz v33, :cond_6

    #@2a1
    .line 490
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@2a5
    move-object/from16 v36, v0

    #@2a7
    new-instance v37, Ljava/lang/StringBuilder;

    #@2a9
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@2ac
    const-string/jumbo v38, "configureOutputs - set take picture size to "

    #@2af
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v37

    #@2b3
    move-object/from16 v0, v37

    #@2b5
    move-object/from16 v1, v33

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v37

    #@2bb
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2be
    move-result-object v37

    #@2bf
    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c2
    .line 491
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@2c6
    move-object/from16 v36, v0

    #@2c8
    .line 492
    invoke-virtual/range {v33 .. v33}, Landroid/util/Size;->getWidth()I

    #@2cb
    move-result v37

    #@2cc
    invoke-virtual/range {v33 .. v33}, Landroid/util/Size;->getHeight()I

    #@2cf
    move-result v38

    #@2d0
    .line 491
    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    #@2d3
    .line 496
    :cond_6
    move-object/from16 v0, p0

    #@2d5
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2d7
    move-object/from16 v36, v0

    #@2d9
    if-nez v36, :cond_7

    #@2db
    .line 497
    new-instance v36, Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2dd
    move-object/from16 v0, p0

    #@2df
    iget v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCameraId:I

    #@2e1
    move/from16 v37, v0

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2e7
    move-object/from16 v38, v0

    #@2e9
    move-object/from16 v0, v36

    #@2eb
    move/from16 v1, v37

    #@2ed
    move-object/from16 v2, v38

    #@2ef
    invoke-direct {v0, v1, v15, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;-><init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@2f2
    move-object/from16 v0, v36

    #@2f4
    move-object/from16 v1, p0

    #@2f6
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2f8
    .line 498
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@2fc
    move-object/from16 v36, v0

    #@2fe
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->start()V

    #@301
    .line 500
    :cond_7
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@305
    move-object/from16 v36, v0

    #@307
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->waitUntilStarted()V

    #@30a
    .line 501
    new-instance v29, Ljava/util/ArrayList;

    #@30c
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    #@30f
    .line 502
    .local v29, "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@312
    move-result-object v28

    #@313
    .line 503
    .local v28, "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewOutputs:Ljava/util/List;

    #@317
    move-object/from16 v36, v0

    #@319
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31c
    move-result-object v26

    #@31d
    .local v26, "p$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@320
    move-result v36

    #@321
    if-eqz v36, :cond_9

    #@323
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@326
    move-result-object v25

    #@327
    check-cast v25, Landroid/view/Surface;

    #@329
    .line 504
    .local v25, "p":Landroid/view/Surface;
    new-instance v37, Landroid/util/Pair;

    #@32b
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32e
    move-result-object v36

    #@32f
    check-cast v36, Landroid/util/Size;

    #@331
    move-object/from16 v0, v37

    #@333
    move-object/from16 v1, v25

    #@335
    move-object/from16 v2, v36

    #@337
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@33a
    move-object/from16 v0, v29

    #@33c
    move-object/from16 v1, v37

    #@33e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@341
    goto :goto_6

    #@342
    .line 478
    .end local v25    # "p":Landroid/view/Surface;
    .end local v26    # "p$iterator":Ljava/util/Iterator;
    .end local v28    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .end local v29    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    :cond_8
    const/16 v36, 0x0

    #@344
    move-object/from16 v0, v36

    #@346
    move-object/from16 v1, p0

    #@348
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIntermediateBufferSize:Landroid/util/Size;

    #@34a
    goto/16 :goto_5

    #@34c
    .line 506
    .restart local v26    # "p$iterator":Ljava/util/Iterator;
    .restart local v28    # "previewSizeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Size;>;"
    .restart local v29    # "previews":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    :cond_9
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@350
    move-object/from16 v36, v0

    #@352
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@356
    move-object/from16 v37, v0

    #@358
    move-object/from16 v0, v36

    #@35a
    move-object/from16 v1, v29

    #@35c
    move-object/from16 v2, v37

    #@35e
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/GLThreadManager;->setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    #@361
    .line 507
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@365
    move-object/from16 v36, v0

    #@367
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->allowNewFrames()V

    #@36a
    .line 508
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;

    #@36e
    move-object/from16 v36, v0

    #@370
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/camera2/legacy/GLThreadManager;->getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;

    #@373
    move-result-object v36

    #@374
    move-object/from16 v0, v36

    #@376
    move-object/from16 v1, p0

    #@378
    iput-object v0, v1, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@37a
    .line 509
    move-object/from16 v0, p0

    #@37c
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@37e
    move-object/from16 v36, v0

    #@380
    if-eqz v36, :cond_a

    #@382
    .line 510
    move-object/from16 v0, p0

    #@384
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    #@386
    move-object/from16 v36, v0

    #@388
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mPreviewCallback:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@38c
    move-object/from16 v37, v0

    #@38e
    invoke-virtual/range {v36 .. v37}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@391
    .line 514
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    #@393
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;

    #@395
    move-object/from16 v36, v0

    #@397
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;

    #@39b
    move-object/from16 v37, v0

    #@39d
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    #@3a0
    .line 331
    :goto_7
    return-void

    #@3a1
    .line 515
    :catch_6
    move-exception v14

    #@3a2
    .line 516
    .restart local v14    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@3a6
    move-object/from16 v36, v0

    #@3a8
    const-string/jumbo v37, "Received device exception while configuring: "

    #@3ab
    move-object/from16 v0, v36

    #@3ad
    move-object/from16 v1, v37

    #@3af
    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b2
    .line 517
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3b6
    move-object/from16 v36, v0

    #@3b8
    .line 518
    const/16 v37, 0x1

    #@3ba
    .line 517
    invoke-virtual/range {v36 .. v37}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@3bd
    goto :goto_7

    #@3be
    .line 393
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
    .line 644
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v8

    #@5
    if-nez v8, :cond_0

    #@7
    .line 645
    iget-object v8, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v9, "No supported frame rates returned!"

    #@c
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 646
    const/4 v8, 0x0

    #@10
    return-object v8

    #@11
    .line 649
    :cond_0
    const/4 v2, 0x0

    #@12
    .line 650
    .local v2, "bestMin":I
    const/4 v1, 0x0

    #@13
    .line 651
    .local v1, "bestMax":I
    const/4 v0, 0x0

    #@14
    .line 652
    .local v0, "bestIndex":I
    const/4 v3, 0x0

    #@15
    .line 653
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
    .line 654
    .local v6, "rate":[I
    aget v5, v6, v9

    #@27
    .line 655
    .local v5, "minFps":I
    const/4 v8, 0x1

    #@28
    aget v4, v6, v8

    #@2a
    .line 656
    .local v4, "maxFps":I
    if-gt v4, v1, :cond_1

    #@2c
    if-ne v4, v1, :cond_2

    #@2e
    if-le v5, v2, :cond_2

    #@30
    .line 657
    :cond_1
    move v2, v5

    #@31
    .line 658
    move v1, v4

    #@32
    .line 659
    move v0, v3

    #@33
    .line 661
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 664
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
    .line 524
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    #@2
    .line 525
    return-void

    #@3
    .line 527
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
    .line 528
    .local v1, "s":Landroid/view/Surface;
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 533
    const/16 v3, 0x21

    #@1d
    :try_start_0
    invoke-static {v1, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 534
    :catch_0
    move-exception v0

    #@22
    .line 535
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v4, "Surface abandoned, skipping..."

    #@27
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0

    #@2b
    .line 529
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
    .line 523
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
    .line 1061
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
    .line 1076
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@3
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@6
    move-result-object v1

    #@7
    .line 1077
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    #@9
    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@c
    .line 1078
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    #@e
    invoke-direct {v2, v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;)V

    #@11
    .line 1079
    .local v2, "holder":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    const/4 v3, 0x1

    #@12
    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 1080
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@1c
    .line 1075
    return-void
.end method

.method public flush()J
    .locals 4

    #@0
    .prologue
    .line 1008
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@2
    const-string/jumbo v3, "Flushing all pending requests."

    #@5
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 1009
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@a
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating()J

    #@d
    move-result-wide v0

    #@e
    .line 1010
    .local v0, "lastFrame":J
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    #@10
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V

    #@13
    .line 1011
    return-wide v0
.end method

.method public quit()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1018
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1019
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@b
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@e
    move-result-object v1

    #@f
    .line 1020
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@17
    .line 1021
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@19
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    #@1c
    .line 1023
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@1e
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1017
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    #@22
    .line 1024
    .restart local v1    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    #@23
    .line 1025
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;

    #@25
    const-string/jumbo v3, "Thread %s (%d) interrupted while quitting."

    #@28
    const/4 v4, 0x2

    #@29
    new-array v4, v4, [Ljava/lang/Object;

    #@2b
    .line 1026
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2d
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    const/4 v6, 0x0

    #@32
    aput-object v5, v4, v6

    #@34
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@36
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    #@39
    move-result-wide v6

    #@3a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3d
    move-result-object v5

    #@3e
    aput-object v5, v4, v8

    #@40
    .line 1025
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
    .line 999
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@5
    .line 998
    return-void
.end method

.method public submitCaptureRequests([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    #@0
    .prologue
    .line 1044
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 1046
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 1047
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;

    #@b
    invoke-virtual {v2, p1, p2}, Landroid/hardware/camera2/legacy/RequestQueue;->submit([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@e
    move-result-object v1

    #@f
    .line 1048
    .local v1, "info":Landroid/hardware/camera2/utils/SubmitInfo;
    const/4 v2, 0x2

    #@10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v3

    #@14
    .line 1050
    return-object v1

    #@15
    .line 1046
    .end local v1    # "info":Landroid/hardware/camera2/utils/SubmitInfo;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method

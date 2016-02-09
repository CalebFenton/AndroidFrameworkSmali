.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$CameraInfo;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Parameters;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mNativeContext:J

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static synthetic -get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/Camera;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/Camera;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p1, "installed"    # Z
    .param p2, "manualBuffer"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@6
    .line 173
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@d
    .line 523
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@6
    .line 173
    new-instance v1, Ljava/lang/Object;

    #@8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@d
    .line 491
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    #@10
    move-result v0

    #@11
    .line 492
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 493
    sparse-switch v0, :sswitch_data_0

    #@1a
    .line 500
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v2, "Unknown camera error"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 495
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "Fail to connect to camera service"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 497
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v2, "Camera initialization failed"

    #@31
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 490
    :cond_0
    return-void

    #@36
    .line 493
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@6
    .line 173
    new-instance v1, Ljava/lang/Object;

    #@8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@d
    .line 416
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    #@10
    move-result v0

    #@11
    .line 417
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 418
    sparse-switch v0, :sswitch_data_0

    #@1a
    .line 440
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v2, "Unknown camera error"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 420
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "Fail to connect to camera service"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 422
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v2, "Camera initialization failed"

    #@31
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 424
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@37
    const-string/jumbo v2, "Camera initialization failed because some methods are not implemented"

    #@3a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 427
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@40
    const-string/jumbo v2, "Camera initialization failed because the hal version is not supported by this device"

    #@43
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 430
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    #@49
    const-string/jumbo v2, "Camera initialization failed because the input arugments are invalid"

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 433
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    #@52
    const-string/jumbo v2, "Camera initialization failed because the camera device was already opened"

    #@55
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 436
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    #@5b
    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    #@5e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 415
    :cond_0
    return-void

    #@63
    .line 418
    nop

    #@64
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    #@0
    .prologue
    .line 926
    const/16 v0, 0x10

    #@2
    if-eq p2, v0, :cond_0

    #@4
    .line 927
    const/16 v0, 0x80

    #@6
    if-eq p2, v0, :cond_0

    #@8
    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unsupported message type: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 928
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 932
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    #@25
    .line 923
    return-void
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 468
    const/4 v0, -0x2

    #@1
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 446
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@3
    .line 447
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    #@5
    .line 448
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@7
    .line 449
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@9
    .line 450
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    #@b
    .line 451
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@e
    .line 452
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    #@10
    .line 455
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@13
    move-result-object v0

    #@14
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@16
    .line 456
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    #@18
    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    #@1b
    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@1d
    .line 463
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1f
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@22
    .line 464
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 463
    invoke-direct {p0, v1, p1, p2, v2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 457
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 458
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    #@33
    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    #@36
    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@38
    goto :goto_0

    #@39
    .line 460
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@3b
    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 510
    if-eqz p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    #@0
    .prologue
    .line 236
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@3
    .line 237
    const-string/jumbo v3, "audio"

    #@6
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v1

    #@a
    .line 238
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@d
    move-result-object v0

    #@e
    .line 240
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 243
    const/4 v3, 0x0

    #@15
    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 235
    :cond_0
    :goto_0
    return-void

    #@18
    .line 245
    :catch_0
    move-exception v2

    #@19
    .line 246
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Camera"

    #@1c
    const-string/jumbo v4, "Audio service is unavailable for queries"

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    #@0
    .prologue
    .line 1903
    new-instance v0, Landroid/hardware/Camera;

    #@2
    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    #@5
    .line 1904
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    #@e
    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1917
    if-nez p0, :cond_0

    #@3
    .line 1918
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "parameters must not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1921
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-wrap0(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    #@f
    move-result-object v0

    #@10
    .line 1922
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    #@18
    .line 1923
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    #@1b
    .line 1925
    return-object v1
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    #@0
    .prologue
    .line 351
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    #@3
    move-result v2

    #@4
    .line 352
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    #@6
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@9
    .line 353
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@c
    .line 354
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@f
    .line 355
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@11
    if-nez v3, :cond_0

    #@13
    .line 356
    new-instance v3, Landroid/hardware/Camera;

    #@15
    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    #@18
    return-object v3

    #@19
    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 359
    :cond_1
    const/4 v3, 0x0

    #@1d
    return-object v3
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    #@0
    .prologue
    .line 341
    new-instance v0, Landroid/hardware/Camera;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    #@5
    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    #@0
    .prologue
    .line 401
    const/16 v0, 0x100

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid HAL version "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 405
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    #@20
    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    #@23
    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    #@0
    .prologue
    .line 517
    new-instance v0, Landroid/hardware/Camera;

    #@2
    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    #@5
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1166
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/hardware/Camera;

    #@8
    .line 1167
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    #@a
    .line 1168
    return-void

    #@b
    .line 1170
    :cond_0
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1171
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    .line 1172
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@17
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 1164
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    #@0
    .prologue
    .line 877
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    #@5
    .line 875
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    #@0
    .prologue
    .line 920
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    #@5
    .line 918
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1256
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1258
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    #@9
    .line 1253
    return-void

    #@a
    .line 1255
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 486
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    #@0
    .prologue
    .line 1272
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1273
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1275
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    #@a
    .line 1291
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    #@c
    const/4 v1, 0x4

    #@d
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    #@10
    .line 1270
    return-void

    #@11
    .line 1272
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@3
    move-result-object v1

    #@4
    .line 966
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@7
    move-result-object v2

    #@8
    .line 967
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    #@a
    .line 969
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@c
    .line 970
    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@e
    .line 968
    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    #@11
    move-result-object v4

    #@12
    .line 967
    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@15
    .line 973
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    #@18
    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    #@1b
    .line 974
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    #@1d
    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@20
    .line 975
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    #@22
    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@25
    .line 977
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@28
    move-result-object v4

    #@29
    .line 978
    or-int/lit8 v5, p2, 0x20

    #@2b
    .line 977
    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    #@2e
    move-result-object v0

    #@2f
    .line 980
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    #@0
    .prologue
    .line 1576
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1547
    if-nez p1, :cond_0

    #@2
    .line 1548
    const-string/jumbo v3, "audio"

    #@5
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 1549
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@c
    move-result-object v0

    #@d
    .line 1551
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    const/4 v3, 0x0

    #@14
    return v3

    #@15
    .line 1552
    :catch_0
    move-exception v2

    #@16
    .line 1553
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Camera"

    #@19
    const-string/jumbo v4, "Audio service is unavailable for queries"

    #@1c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1556
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    #@22
    move-result v3

    #@23
    return v3
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    #@3
    .line 527
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    #@0
    .prologue
    .line 1889
    new-instance v0, Landroid/hardware/Camera$Parameters;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    #@6
    .line 1890
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1891
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    #@d
    .line 1892
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    #@0
    .prologue
    .line 543
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    #@3
    .line 544
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@6
    .line 542
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@0
    .prologue
    .line 1324
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@2
    .line 1325
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    #@a
    .line 1323
    return-void

    #@b
    .line 1325
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    #@0
    .prologue
    .line 1853
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    #@2
    .line 1851
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    #@0
    .prologue
    .line 1644
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    #@2
    .line 1642
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 795
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@4
    .line 796
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    #@6
    .line 797
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    #@8
    .line 798
    if-eqz p1, :cond_0

    #@a
    .line 799
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@c
    .line 801
    :cond_0
    if-eqz p1, :cond_1

    #@e
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    #@11
    .line 794
    return-void

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 801
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 1868
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 1869
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@7
    move-result-object v1

    #@8
    .line 1870
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@f
    move-result-object v0

    #@10
    .line 1871
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    #@12
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 1872
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    #@18
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    #@1a
    if-eq v2, v3, :cond_1

    #@1c
    .line 1873
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v3, "Cannot change preview size while a preview allocation is configured."

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 1878
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    #@2c
    .line 1866
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 769
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@3
    .line 770
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    #@5
    .line 771
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    #@7
    .line 772
    if-eqz p1, :cond_0

    #@9
    .line 773
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@b
    .line 777
    :cond_0
    if-eqz p1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    #@11
    .line 768
    return-void

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 777
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1031
    const/4 v2, 0x0

    #@2
    .line 1032
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    #@4
    .line 1033
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@7
    move-result-object v0

    #@8
    .line 1034
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@b
    move-result-object v1

    #@c
    .line 1035
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    #@e
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@15
    move-result v4

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 1036
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    #@1a
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@21
    move-result v4

    #@22
    if-eq v3, v4, :cond_1

    #@24
    .line 1037
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@26
    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 1040
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@39
    move-result v5

    #@3a
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 1041
    const-string/jumbo v5, ", "

    #@41
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 1042
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    #@4c
    move-result v5

    #@4d
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 1043
    const-string/jumbo v5, ". Preview is "

    #@54
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 1043
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    #@5a
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 1043
    const-string/jumbo v5, ", "

    #@61
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    .line 1044
    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    #@67
    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    .line 1037
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3

    #@73
    .line 1046
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    #@76
    move-result v3

    #@77
    and-int/lit8 v3, v3, 0x20

    #@79
    if-nez v3, :cond_2

    #@7b
    .line 1048
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7d
    .line 1049
    const-string/jumbo v4, "Allocation usage does not include USAGE_IO_INPUT"

    #@80
    .line 1048
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v3

    #@84
    .line 1051
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    #@8f
    move-result-object v3

    #@90
    .line 1052
    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    #@92
    .line 1051
    if-eq v3, v4, :cond_3

    #@94
    .line 1053
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@96
    .line 1054
    const-string/jumbo v4, "Allocation is not of a YUV type"

    #@99
    .line 1053
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v3

    #@9d
    .line 1056
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    #@a0
    move-result-object v2

    #@a1
    .line 1057
    .local v2, "previewSurface":Landroid/view/Surface;
    const/4 v3, 0x1

    #@a2
    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@a4
    .line 1061
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    .end local v2    # "previewSurface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    #@a7
    .line 1030
    return-void

    #@a8
    .line 1059
    .local v2, "previewSurface":Landroid/view/Surface;
    :cond_4
    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@aa
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 833
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    #@4
    .line 834
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    #@6
    .line 835
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    #@8
    .line 836
    if-eqz p1, :cond_0

    #@a
    .line 837
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    #@c
    .line 839
    :cond_0
    if-eqz p1, :cond_1

    #@e
    move v0, v1

    #@f
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    #@12
    .line 832
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 628
    if-eqz p1, :cond_0

    #@3
    .line 629
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    #@a
    .line 627
    :goto_0
    return-void

    #@b
    .line 631
    :cond_0
    check-cast v0, Landroid/view/Surface;

    #@d
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    #@10
    goto :goto_0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    #@0
    .prologue
    .line 1614
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    #@2
    .line 1612
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    #@0
    .prologue
    .line 1680
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1681
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Face detection is already running"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1683
    :cond_0
    const/4 v0, 0x0

    #@e
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    #@11
    .line 1684
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@14
    .line 1679
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    #@0
    .prologue
    .line 1693
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    #@3
    .line 1694
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@6
    .line 1692
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 730
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    #@4
    .line 731
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@7
    .line 733
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@9
    .line 734
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    #@b
    .line 735
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    #@d
    .line 736
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@f
    .line 737
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    #@11
    monitor-enter v0

    #@12
    .line 738
    const/4 v1, 0x0

    #@13
    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v0

    #@16
    .line 740
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@18
    .line 729
    return-void

    #@19
    .line 737
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v0

    #@1b
    throw v1
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    #@0
    .prologue
    .line 1379
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    #@4
    .line 1378
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    #@0
    .prologue
    .line 1414
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@2
    .line 1415
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    #@4
    .line 1416
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    #@6
    .line 1417
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@8
    .line 1420
    const/4 v0, 0x0

    #@9
    .line 1421
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1422
    const/4 v0, 0x2

    #@e
    .line 1424
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1425
    or-int/lit16 v0, v0, 0x80

    #@14
    .line 1427
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 1428
    or-int/lit8 v0, v0, 0x40

    #@1a
    .line 1430
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 1431
    or-int/lit16 v0, v0, 0x100

    #@20
    .line 1434
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    #@23
    .line 1435
    const/4 v1, 0x0

    #@24
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    #@26
    .line 1413
    return-void
.end method

.method public final native unlock()V
.end method

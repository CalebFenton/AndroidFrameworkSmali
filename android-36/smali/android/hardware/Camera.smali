.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$CameraInfo;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Face;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final whitelist ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final greylist-max-o CAMERA_ERROR_DISABLED:I = 0x3

.field public static final whitelist CAMERA_ERROR_EVICTED:I = 0x2

.field public static final whitelist CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final greylist-max-o CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final greylist-max-o CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final greylist-max-r CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field public static final blacklist CAMERA_HAL_API_VERSION_3_0:I = 0x300

.field private static final greylist-max-o CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final greylist-max-o CAMERA_MSG_ERROR:I = 0x1

.field private static final greylist-max-o CAMERA_MSG_FOCUS:I = 0x4

.field private static final greylist-max-o CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final greylist-max-o CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final greylist-max-o CAMERA_MSG_SHUTTER:I = 0x2

.field private static final greylist-max-o CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final greylist-max-o CAMERA_MSG_ZOOM:I = 0x8

.field private static final greylist-max-o NO_ERROR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private greylist-max-o mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final greylist-max-o mAutoFocusCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private greylist-max-o mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private greylist-max-o mFaceDetectionRunning:Z

.field private greylist-max-o mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private greylist-max-o mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-p mNativeContext:J

.field private greylist-max-o mOneShot:Z

.field private greylist-max-o mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private greylist-max-o mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private greylist-max-o mShutterSoundEnabledFromApp:Z

.field private final greylist-max-o mShutterSoundLock:Ljava/lang/Object;

.field private greylist-max-o mUsingPreviewAllocation:Z

.field private greylist-max-o mWithBuffer:Z

.field private greylist-max-o mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallbackLock(Landroid/hardware/Camera;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneShot(Landroid/hardware/Camera;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWithBuffer(Landroid/hardware/Camera;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviewCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHasPreviewCallback(Landroid/hardware/Camera;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAppOpsPlayAudio(Landroid/hardware/Camera;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 203
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 624
    return-void
.end method

.method constructor blacklist <init>(ILandroid/content/Context;I)V
    .registers 7
    .param p1, "cameraId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rotationOverride"    # I

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 203
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 593
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/Camera;->cameraInit(ILandroid/content/Context;I)I

    move-result v0

    .line 595
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 596
    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-eq v0, v1, :cond_40

    .line 598
    sget v1, Landroid/system/OsConstants;->ENODEV:I

    neg-int v1, v1

    if-ne v0, v1, :cond_38

    .line 599
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_38
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 604
    :cond_48
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    .line 605
    return-void
.end method

.method private final native greylist-max-o _addCallbackBuffer([BI)V
.end method

.method private final native greylist-max-o _enableShutterSound(Z)Z
.end method

.method private static native blacklist _getCameraInfo(IILandroid/os/Parcel;ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private static native blacklist _getNumberOfCameras(Landroid/os/Parcel;I)I
.end method

.method private final native greylist-max-o _startFaceDetection(I)V
.end method

.method private final native greylist-max-o _stopFaceDetection()V
.end method

.method private final native greylist-max-o _stopPreview()V
.end method

.method private final greylist addCallbackBuffer([BI)V
    .registers 6
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .line 1087
    const/16 v0, 0x10

    if-eq p2, v0, :cond_22

    const/16 v0, 0x80

    if-ne p2, v0, :cond_9

    goto :goto_22

    .line 1089
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_22
    :goto_22
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1094
    return-void
.end method

.method private blacklist cameraInit(ILandroid/content/Context;I)I
    .registers 14
    .param p1, "cameraId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rotationOverride"    # I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 548
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 549
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 550
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 551
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 552
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 553
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 556
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1f

    .line 557
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_30

    .line 558
    :cond_1f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2e

    .line 559
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_30

    .line 561
    :cond_2e
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 564
    :goto_30
    invoke-direct {p0}, Landroid/hardware/Camera;->shouldForceSlowJpegMode()Z

    move-result v7

    .line 566
    .local v7, "forceSlowJpegMode":Z
    nop

    .line 567
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 568
    .local v1, "clientAttribution":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_3d
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v8

    .line 574
    invoke-static {p2}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v9
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_5a

    .line 568
    move-object v3, p0

    move v5, p1

    move v6, p3

    .end local p1    # "cameraId":I
    .end local p3    # "rotationOverride":I
    .local v5, "cameraId":I
    .local v6, "rotationOverride":I
    :try_start_4d
    invoke-direct/range {v3 .. v9}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IIZLandroid/os/Parcel;I)I

    move-result p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_57

    .line 575
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 568
    :cond_56
    return p1

    .line 566
    :catchall_57
    move-exception v0

    move-object p1, v0

    goto :goto_5e

    .end local v5    # "cameraId":I
    .end local v6    # "rotationOverride":I
    .restart local p1    # "cameraId":I
    .restart local p3    # "rotationOverride":I
    :catchall_5a
    move-exception v0

    move v5, p1

    move v6, p3

    move-object p1, v0

    .end local p1    # "cameraId":I
    .end local p3    # "rotationOverride":I
    .restart local v5    # "cameraId":I
    .restart local v6    # "rotationOverride":I
    :goto_5e
    if-eqz v1, :cond_69

    :try_start_60
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_69

    :catchall_64
    move-exception v0

    move-object p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw p1
.end method

.method public static greylist-max-o checkInitErrors(I)Z
    .registers 2
    .param p0, "err"    # I

    .line 611
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private native greylist-max-o enableFocusMoveCallback(I)V
.end method

.method public static blacklist getCameraInfo(ILandroid/content/Context;ILandroid/hardware/Camera$CameraInfo;)V
    .registers 9
    .param p0, "cameraId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rotationOverride"    # I
    .param p3, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .line 330
    nop

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 332
    .local v0, "clientAttribution":Landroid/content/AttributionSource$ScopedParcelState;
    nop

    .line 335
    :try_start_a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    invoke-static {p1}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 332
    invoke-static {p0, p2, v1, v2, p3}, Landroid/hardware/Camera;->_getCameraInfo(IILandroid/os/Parcel;ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    .line 338
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 340
    .end local v0    # "clientAttribution":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_1a
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 341
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 343
    .local v1, "audioService":Landroid/media/IAudioService;
    :try_start_24
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 346
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 350
    :cond_2d
    goto :goto_36

    .line 348
    :catch_2e
    move-exception v2

    .line 349
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 330
    .end local v1    # "audioService":Landroid/media/IAudioService;
    .local v0, "clientAttribution":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_37
    move-exception v1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v1
.end method

.method public static whitelist getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .registers 4
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .line 316
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v1

    .line 318
    .local v1, "rotationOverride":I
    invoke-static {p0, v0, v1, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/content/Context;ILandroid/hardware/Camera$CameraInfo;)V

    .line 319
    return-void
.end method

.method private static blacklist getDevicePolicyFromContext(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 362
    return v1

    .line 365
    :cond_8
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 367
    .local v0, "virtualDeviceManager":Landroid/companion/virtual/VirtualDeviceManager;
    if-nez v0, :cond_13

    .line 368
    goto :goto_1c

    .line 369
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v1

    .line 367
    :goto_1c
    return v1
.end method

.method public static greylist getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 2071
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2072
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    return-object v1
.end method

.method public static whitelist getNumberOfCameras()I
    .registers 1

    .line 285
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/Camera;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static blacklist getNumberOfCameras(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 298
    nop

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 300
    .local v0, "clientAttribution":Landroid/content/AttributionSource$ScopedParcelState;
    nop

    .line 301
    :try_start_a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {p0}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 300
    invoke-static {v1, v2}, Landroid/hardware/Camera;->_getNumberOfCameras(Landroid/os/Parcel;I)I

    move-result v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 302
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 300
    :cond_1b
    return v1

    .line 298
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw v1
.end method

.method public static greylist-max-o getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 2085
    if-eqz p0, :cond_13

    .line 2089
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2090
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    .line 2091
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2093
    return-object v1

    .line 2086
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initAppOps()V
    .registers 6

    .line 627
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 628
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 630
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    .line 632
    new-instance v1, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v1, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 634
    :try_start_16
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 635
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 634
    const/16 v4, 0x1c

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 639
    goto :goto_2f

    .line 636
    :catch_24
    move-exception v1

    .line 637
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Camera"

    const-string v3, "Error registering appOps callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 640
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private final native greylist-max-o native_autoFocus()V
.end method

.method private final native greylist-max-o native_cancelAutoFocus()V
.end method

.method private final native greylist native_getParameters()Ljava/lang/String;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist native_setParameters(Ljava/lang/String;)V
.end method

.method private native greylist native_setup(Ljava/lang/Object;IIZLandroid/os/Parcel;I)I
.end method

.method private final native greylist-max-o native_takePicture(I)V
.end method

.method public static whitelist open()Landroid/hardware/Camera;
    .registers 4

    .line 488
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 489
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 490
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 491
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 492
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 493
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    return-object v3

    .line 490
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 496
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist open(I)Landroid/hardware/Camera;
    .registers 4
    .param p0, "cameraId"    # I

    .line 462
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v1

    .line 464
    .local v1, "rotationOverride":I
    invoke-static {p0, v0, v1}, Landroid/hardware/Camera;->open(ILandroid/content/Context;I)Landroid/hardware/Camera;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist open(ILandroid/content/Context;I)Landroid/hardware/Camera;
    .registers 4
    .param p0, "cameraId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rotationOverride"    # I

    .line 475
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/Camera;-><init>(ILandroid/content/Context;I)V

    return-object v0
.end method

.method public static greylist openLegacy(II)Landroid/hardware/Camera;
    .registers 5
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .line 539
    const/16 v0, 0x300

    if-lt p1, v0, :cond_9

    .line 543
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0

    .line 540
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o openUninitialized()Landroid/hardware/Camera;
    .registers 1

    .line 618
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1209
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1210
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_c

    .line 1211
    return-void

    .line 1213
    :cond_c
    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v1, :cond_1b

    .line 1214
    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1215
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1217
    .end local v1    # "m":Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method private greylist-max-o releaseAppOps()V
    .registers 3

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_b

    .line 645
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 649
    :cond_b
    goto :goto_d

    .line 647
    :catch_c
    move-exception v0

    .line 650
    :goto_d
    return-void
.end method

.method private final native greylist-max-o setHasPreviewCallback(ZZ)V
.end method

.method private final native greylist-max-o setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private blacklist shouldForceSlowJpegMode()Z
    .registers 9

    .line 579
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "slowJpegPackageNames":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "callingPackageName":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1a
    if-ge v5, v3, :cond_29

    aget-object v6, v1, v5

    .line 584
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 585
    const/4 v3, 0x1

    return v3

    .line 583
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 588
    :cond_29
    return v4
.end method

.method private greylist-max-o updateAppOpsPlayAudio()V
    .registers 10

    .line 1683
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1684
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5f

    .line 1686
    .local v1, "oldHasAppOpsPlayAudio":Z
    const/4 v2, 0x1

    .line 1687
    .local v2, "mode":I
    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_1e

    .line 1688
    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 1690
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1688
    const/16 v7, 0x1c

    const/16 v8, 0xd

    invoke-interface {v4, v7, v8, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1692
    :cond_1e
    if-nez v2, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    move v4, v3

    :goto_23
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_25} :catch_26
    .catchall {:try_start_7 .. :try_end_25} :catchall_5f

    .line 1696
    .end local v2    # "mode":I
    goto :goto_30

    .line 1693
    :catch_26
    move-exception v2

    .line 1694
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v4, "Camera"

    const-string v5, "AppOpsService check audio operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iput-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 1697
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_30
    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v2, :cond_5d

    .line 1698
    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v2, :cond_58

    .line 1699
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1700
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_5f

    .line 1702
    .local v4, "audioService":Landroid/media/IAudioService;
    :try_start_42
    invoke-interface {v4}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v5
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_46} :catch_4b
    .catchall {:try_start_42 .. :try_end_46} :catchall_5f

    if-eqz v5, :cond_4a

    .line 1703
    :try_start_48
    monitor-exit v0

    return-void

    .line 1707
    :cond_4a
    goto :goto_53

    .line 1705
    :catch_4b
    move-exception v5

    .line 1706
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Camera"

    const-string v7, "Audio service is unavailable for queries"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_53
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1709
    nop

    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "audioService":Landroid/media/IAudioService;
    goto :goto_5d

    .line 1710
    :cond_58
    iget-boolean v2, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 1713
    .end local v1    # "oldHasAppOpsPlayAudio":Z
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 1714
    return-void

    .line 1713
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_5f

    throw v1
.end method


# virtual methods
.method public final whitelist addCallbackBuffer([B)V
    .registers 3
    .param p1, "callbackBuffer"    # [B

    .line 1036
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1037
    return-void
.end method

.method public final greylist addRawImageCallbackBuffer([B)V
    .registers 3
    .param p1, "callbackBuffer"    # [B

    .line 1080
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1081
    return-void
.end method

.method public final whitelist autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .line 1301
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_3
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1303
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 1304
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1305
    return-void

    .line 1303
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist cancelAutoFocus()V
    .registers 3

    .line 1321
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1323
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_11

    .line 1324
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1340
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1341
    return-void

    .line 1323
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final greylist-max-o disableShutterSound()Z
    .registers 2

    .line 1659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist enableShutterSound(Z)Z
    .registers 10
    .param p1, "enabled"    # Z

    .line 1614
    const/4 v0, 0x1

    .line 1615
    .local v0, "canDisableShutterSound":Z
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1616
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1618
    .local v2, "audioService":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_13

    if-eqz v3, :cond_12

    .line 1619
    const/4 v0, 0x0

    .line 1623
    :cond_12
    goto :goto_1b

    .line 1621
    :catch_13
    move-exception v3

    .line 1622
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Camera"

    const-string v5, "Audio service is unavailable for queries"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v3, 0x0

    if-nez p1, :cond_21

    if-nez v0, :cond_21

    .line 1625
    return v3

    .line 1627
    :cond_21
    iget-object v4, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1628
    :try_start_24
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 1631
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v5

    .line 1632
    .local v5, "ret":Z
    if-eqz p1, :cond_3c

    iget-boolean v6, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v6, :cond_3c

    .line 1633
    const-string v6, "Camera"

    const-string v7, "Shutter sound is not allowed by AppOpsManager"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    if-eqz v0, :cond_3c

    .line 1635
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1638
    :cond_3c
    monitor-exit v4

    return v5

    .line 1639
    .end local v5    # "ret":Z
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 654
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 655
    return-void
.end method

.method public final native blacklist getAudioRestriction()I
.end method

.method public whitelist getParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 2056
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    .line 2057
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2058
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2059
    return-object v0
.end method

.method public final native whitelist lock()V
.end method

.method public final native greylist previewEnabled()Z
.end method

.method public final native whitelist reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist release()V
    .registers 2

    .line 674
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 676
    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    .line 677
    return-void
.end method

.method public final native blacklist setAudioRestriction(I)V
.end method

.method public whitelist setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1376
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1377
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1378
    return-void
.end method

.method public final greylist-max-o setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 2015
    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2016
    return-void
.end method

.method public final native whitelist setDisplayOrientation(I)V
.end method

.method public final whitelist setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 1997
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1998
    return-void
.end method

.method public final whitelist setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .line 1779
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1780
    return-void
.end method

.method public final whitelist setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 952
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 954
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 955
    if-eqz p1, :cond_c

    .line 956
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 958
    :cond_c
    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 959
    return-void
.end method

.method public whitelist setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 2032
    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_25

    .line 2033
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2034
    .local v0, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2035
    .local v1, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1d

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_1d

    goto :goto_25

    .line 2037
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2042
    .end local v0    # "newPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2043
    return-void
.end method

.method public final whitelist setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 924
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 926
    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 927
    if-eqz p1, :cond_b

    .line 928
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 932
    :cond_b
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    invoke-direct {p0, v1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 933
    return-void
.end method

.method public final whitelist setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 992
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 994
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 995
    if-eqz p1, :cond_c

    .line 996
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 998
    :cond_c
    if-eqz p1, :cond_f

    move v0, v1

    :cond_f
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 999
    return-void
.end method

.method public final whitelist setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    if-eqz p1, :cond_a

    .line 765
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_e

    .line 767
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 769
    :goto_e
    return-void
.end method

.method public final native greylist-max-p setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native whitelist setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1749
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1750
    return-void
.end method

.method public final whitelist startFaceDetection()V
    .registers 3

    .line 1815
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_c

    .line 1818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1820
    return-void

    .line 1816
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native whitelist startPreview()V
.end method

.method public final native whitelist startSmoothZoom(I)V
.end method

.method public final whitelist stopFaceDetection()V
    .registers 2

    .line 1828
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1830
    return-void
.end method

.method public final whitelist stopPreview()V
    .registers 3

    .line 882
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 886
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 887
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 888
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 889
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 890
    :try_start_12
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 891
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    .line 892
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 893
    return-void

    .line 891
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final native whitelist stopSmoothZoom()V
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1432
    return-void
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 7
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1469
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1470
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1471
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1472
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_f

    .line 1477
    or-int/lit8 v0, v0, 0x2

    .line 1479
    :cond_f
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_15

    .line 1480
    or-int/lit16 v0, v0, 0x80

    .line 1482
    :cond_15
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1b

    .line 1483
    or-int/lit8 v0, v0, 0x40

    .line 1485
    :cond_1b
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_21

    .line 1486
    or-int/lit16 v0, v0, 0x100

    .line 1489
    :cond_21
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1490
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1491
    return-void
.end method

.method public final native whitelist unlock()V
.end method

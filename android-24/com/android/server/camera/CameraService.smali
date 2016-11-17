.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraService$1;,
        Lcom/android/server/camera/CameraService$2;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private mActiveCameraCount:I

.field private final mActiveCameraIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/camera/CameraService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/camera/CameraService;->cameraStateToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "retries"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/camera/CameraService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/camera/CameraService;->updateActivityCount(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/os/Binder;

    #@2
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/camera/CameraService;->nfcInterfaceToken:Landroid/os/IBinder;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 79
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@b
    .line 85
    new-instance v1, Landroid/util/ArraySet;

    #@d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@12
    .line 92
    iput v0, p0, Lcom/android/server/camera/CameraService;->mActiveCameraCount:I

    #@14
    .line 94
    new-instance v1, Lcom/android/server/camera/CameraService$1;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    #@19
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1b
    .line 119
    new-instance v1, Lcom/android/server/camera/CameraService$2;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    #@20
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    #@22
    .line 136
    iput-object p1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@24
    .line 137
    new-instance v1, Lcom/android/server/ServiceThread;

    #@26
    const-string/jumbo v2, "CameraService_proxy"

    #@29
    const/4 v3, -0x4

    #@2a
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@2d
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@2f
    .line 138
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@31
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    #@34
    .line 139
    new-instance v1, Landroid/os/Handler;

    #@36
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@38
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@3f
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    #@41
    .line 141
    const-string/jumbo v1, "ro.camera.notify_nfc"

    #@44
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@47
    move-result v1

    #@48
    if-lez v1, :cond_0

    #@4a
    const/4 v0, 0x1

    #@4b
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z

    #@4d
    .line 134
    return-void
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    #@0
    .prologue
    .line 329
    packed-switch p0, :pswitch_data_0

    #@3
    .line 336
    const-string/jumbo v0, "CAMERA_STATE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 330
    :pswitch_0
    const-string/jumbo v0, "CAMERA_STATE_OPEN"

    #@a
    return-object v0

    #@b
    .line 331
    :pswitch_1
    const-string/jumbo v0, "CAMERA_STATE_ACTIVE"

    #@e
    return-object v0

    #@f
    .line 332
    :pswitch_2
    const-string/jumbo v0, "CAMERA_STATE_IDLE"

    #@12
    return-object v0

    #@13
    .line 333
    :pswitch_3
    const-string/jumbo v0, "CAMERA_STATE_CLOSED"

    #@16
    return-object v0

    #@17
    .line 329
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 6
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    #@5
    move-result-object v2

    #@6
    .line 225
    .local v2, "userProfiles":[I
    new-instance v0, Landroid/util/ArraySet;

    #@8
    array-length v3, v2

    #@9
    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    #@c
    .line 227
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@d
    array-length v4, v2

    #@e
    :goto_0
    if-ge v3, v4, :cond_0

    #@10
    aget v1, v2, v3

    #@12
    .line 228
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v5

    #@16
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 227
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 231
    .end local v1    # "id":I
    :cond_0
    return-object v0
.end method

.method private notifyMediaserverLocked(ILjava/util/Set;)Z
    .locals 6
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    #@1
    .line 254
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 255
    const-string/jumbo v2, "media.camera"

    #@8
    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 256
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@e
    .line 257
    const-string/jumbo v2, "CameraService_proxy"

    #@11
    const-string/jumbo v3, "Could not notify mediaserver, camera service not available."

    #@14
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 258
    return v5

    #@18
    .line 261
    :cond_0
    const/4 v2, 0x0

    #@19
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 267
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    #@22
    .line 271
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    #@24
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->toArray(Ljava/util/Collection;)[I

    #@27
    move-result-object v3

    #@28
    invoke-interface {v2, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 277
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 262
    .restart local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@2e
    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CameraService_proxy"

    #@31
    const-string/jumbo v3, "Could not link to death of native camera service"

    #@34
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 264
    return v5

    #@38
    .line 272
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@39
    .line 273
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CameraService_proxy"

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "Could not notify mediaserver, remote exception: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 275
    return v5
.end method

.method private notifyNfcService(Z)V
    .locals 7
    .param p1, "enablePolling"    # Z

    #@0
    .prologue
    .line 303
    const-string/jumbo v4, "nfc"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 304
    .local v3, "nfcServiceBinder":Landroid/os/IBinder;
    if-nez v3, :cond_0

    #@9
    .line 305
    const-string/jumbo v4, "CameraService_proxy"

    #@c
    const-string/jumbo v5, "Could not connect to NFC service to notify it of camera state"

    #@f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 306
    return-void

    #@13
    .line 308
    :cond_0
    invoke-static {v3}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    #@16
    move-result-object v2

    #@17
    .line 309
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_1

    #@19
    const/4 v1, 0x0

    #@1a
    .line 312
    .local v1, "flags":I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/server/camera/CameraService;->nfcInterfaceToken:Landroid/os/IBinder;

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-interface {v2, v4, v5, v1, v6}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 301
    :goto_1
    return-void

    #@22
    .line 309
    .end local v1    # "flags":I
    :cond_1
    const/16 v1, 0x1000

    #@24
    .restart local v1    # "flags":I
    goto :goto_0

    #@25
    .line 313
    :catch_0
    move-exception v0

    #@26
    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CameraService_proxy"

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Could not notify NFC service, remote exception: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_1
.end method

.method private notifySwitchWithRetries(I)V
    .locals 6
    .param p1, "retries"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 235
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 237
    return-void

    #@c
    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {p0, v2, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserverLocked(ILjava/util/Set;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 240
    const/4 p1, 0x0

    #@16
    :cond_1
    monitor-exit v1

    #@17
    .line 243
    if-gtz p1, :cond_2

    #@19
    .line 244
    return-void

    #@1a
    .line 235
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0

    #@1d
    .line 246
    :cond_2
    const-string/jumbo v0, "CameraService_proxy"

    #@20
    const-string/jumbo v1, "Could not notify camera service of user switch, retrying..."

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 247
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    #@28
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    #@2a
    add-int/lit8 v2, p1, -0x1

    #@2c
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v1

    #@30
    .line 248
    const-wide/16 v2, 0x14

    #@32
    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@35
    .line 234
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->getEnabledUserHandles(I)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 215
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    #@6
    .line 216
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@c
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 213
    :goto_0
    return-void

    #@13
    .line 218
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@15
    .line 219
    const/4 v1, 0x1

    #@16
    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserverLocked(ILjava/util/Set;)Z

    #@19
    goto :goto_0
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@3
    move-result v4

    #@4
    .line 320
    .local v4, "len":I
    new-array v5, v4, [I

    #@6
    .line 321
    .local v5, "ret":[I
    const/4 v2, 0x0

    #@7
    .line 322
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 323
    .local v0, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    #@19
    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v6

    #@1d
    aput v6, v5, v2

    #@1f
    move v2, v3

    #@20
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    #@21
    .line 325
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-object v5
.end method

.method private updateActivityCount(Ljava/lang/String;I)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    #@0
    .prologue
    .line 281
    iget-object v3, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@8
    move-result v1

    #@9
    .line 283
    .local v1, "wasEmpty":Z
    packed-switch p2, :pswitch_data_0

    #@c
    .line 294
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@11
    move-result v0

    #@12
    .line 295
    .local v0, "isEmpty":Z
    iget-boolean v2, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    if-eq v1, v0, :cond_0

    #@18
    .line 296
    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifyNfcService(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v3

    #@1c
    .line 280
    return-void

    #@1d
    .line 287
    .end local v0    # "isEmpty":Z
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@1f
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 281
    .end local v1    # "wasEmpty":Z
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2

    #@26
    .line 291
    .restart local v1    # "wasEmpty":Z
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@28
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 201
    const/4 v1, 0x0

    #@4
    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    #@6
    .line 204
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    #@b
    move-result v0

    #@c
    .line 205
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    #@e
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    #@11
    .line 207
    iget-boolean v1, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eqz v1, :cond_0

    #@15
    if-eqz v0, :cond_1

    #@17
    :cond_0
    :goto_0
    monitor-exit v2

    #@18
    .line 198
    return-void

    #@19
    .line 208
    :cond_1
    const/4 v1, 0x1

    #@1a
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraService;->notifyNfcService(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 200
    .end local v0    # "wasEmpty":Z
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 152
    const-string/jumbo v0, "CameraService_proxy"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "CameraService error, invalid message: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 155
    :goto_0
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 149
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    #@28
    goto :goto_0

    #@29
    .line 147
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@8
    .line 161
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v2, "UserManagerService must start before CameraService!"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 166
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    #@17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1a
    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20
    .line 168
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26
    .line 169
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    #@29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2c
    .line 170
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@2f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@32
    .line 171
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@38
    .line 172
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@3a
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@3c
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3f
    .line 174
    const-string/jumbo v1, "media.camera.proxy"

    #@42
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    #@44
    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@47
    .line 159
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 178
    return-void

    #@c
    .line 179
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 188
    return-void

    #@8
    .line 189
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

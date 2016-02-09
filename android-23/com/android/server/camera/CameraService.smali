.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

.field private static final MSG_SWITCH_USER:I = 0x1

.field public static final NO_EVENT:I = 0x0

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field public static final USER_SWITCHED:I = 0x1


# instance fields
.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

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

.method static synthetic -wrap0(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "retries"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@a
    .line 75
    new-instance v0, Lcom/android/server/camera/CameraService$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    #@f
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 100
    new-instance v0, Lcom/android/server/camera/CameraService$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    #@18
    .line 109
    iput-object p1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@1a
    .line 110
    new-instance v0, Lcom/android/server/ServiceThread;

    #@1c
    const-string/jumbo v1, "CameraService_proxy"

    #@1f
    const/4 v2, -0x4

    #@20
    const/4 v3, 0x0

    #@21
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@24
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@26
    .line 111
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@28
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    #@2b
    .line 112
    new-instance v0, Landroid/os/Handler;

    #@2d
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@2f
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@36
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    #@38
    .line 107
    return-void
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 5
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
    .line 175
    iget-object v4, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 176
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    #@f
    .line 178
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/content/pm/UserInfo;

    #@1f
    .line 179
    .local v1, "i":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 182
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v0
.end method

.method private notifyMediaserver(ILjava/util/Set;)Z
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 205
    const-string/jumbo v3, "media.camera"

    #@4
    invoke-virtual {p0, v3}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 206
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@a
    .line 207
    const-string/jumbo v3, "CameraService_proxy"

    #@d
    const-string/jumbo v4, "Could not notify mediaserver, camera service not available."

    #@10
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 208
    return v6

    #@14
    .line 211
    :cond_0
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    #@17
    move-result-object v1

    #@18
    .line 214
    .local v1, "cameraServiceRaw":Landroid/hardware/ICameraService;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->toArray(Ljava/util/Collection;)[I

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {v1, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 220
    const/4 v3, 0x1

    #@20
    return v3

    #@21
    .line 215
    :catch_0
    move-exception v2

    #@22
    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CameraService_proxy"

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Could not notify mediaserver, remote exception: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 218
    return v6
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
    .line 186
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 188
    return-void

    #@c
    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {p0, v2, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 191
    const/4 p1, 0x0

    #@16
    :cond_1
    monitor-exit v1

    #@17
    .line 194
    if-gtz p1, :cond_2

    #@19
    .line 195
    return-void

    #@1a
    .line 186
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0

    #@1d
    .line 197
    :cond_2
    const-string/jumbo v0, "CameraService_proxy"

    #@20
    const-string/jumbo v1, "Could not notify camera service of user switch, retrying..."

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 198
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
    .line 199
    const-wide/16 v2, 0x14

    #@32
    .line 198
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@35
    .line 185
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->getEnabledUserHandles(I)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    #@6
    .line 167
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
    .line 164
    :goto_0
    return-void

    #@13
    .line 169
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@15
    .line 170
    const/4 v1, 0x1

    #@16
    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z

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
    .line 224
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@3
    move-result v4

    #@4
    .line 225
    .local v4, "len":I
    new-array v5, v4, [I

    #@6
    .line 226
    .local v5, "ret":[I
    const/4 v2, 0x0

    #@7
    .line 227
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
    .line 228
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
    .line 230
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 122
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
    .line 125
    :goto_0
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 119
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    #@28
    goto :goto_0

    #@29
    .line 117
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
    .line 130
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@8
    .line 131
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v2, "UserManagerService must start before CameraService!"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 136
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    #@17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1a
    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20
    .line 138
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26
    .line 139
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    #@29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2c
    .line 140
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@2f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@32
    .line 141
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@38
    .line 142
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    #@3a
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@3c
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3f
    .line 144
    const-string/jumbo v1, "media.camera.proxy"

    #@42
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    #@44
    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@47
    .line 129
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 148
    return-void

    #@c
    .line 149
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
    .line 159
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 158
    return-void

    #@8
    .line 159
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

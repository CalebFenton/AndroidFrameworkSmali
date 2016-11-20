.class public Landroid/hardware/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubService$1;
    }
.end annotation


# static fields
.field public static final ANY_HUB:I = -0x1

.field private static final APP_ID_ACTIVITY_RECOGNITION:J = 0x476f6f676c001000L

.field public static final CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub_service"

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final HEADER_FIELD_APP_INSTANCE:I = 0x3

.field private static final HEADER_FIELD_HUB_HANDLE:I = 0x2

.field private static final HEADER_FIELD_LOAD_APP_ID_HI:I = 0x5

.field private static final HEADER_FIELD_LOAD_APP_ID_LO:I = 0x4

.field private static final HEADER_FIELD_MSG_TYPE:I = 0x0

.field private static final HEADER_FIELD_MSG_VERSION:I = 0x1

.field private static final MSG_HEADER_SIZE:I = 0x4

.field private static final MSG_LOAD_APP_HEADER_SIZE:I = 0x6

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PRE_LOADED_APP_MEM_REQ:I = 0x0

.field private static final PRE_LOADED_APP_NAME:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_APP_PUBLISHER:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_GENERIC_UNKNOWN:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

.field private final mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 0
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubService;->sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    #@3
    .line 78
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 77
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 81
    new-instance v3, Landroid/os/RemoteCallbackList;

    #@c
    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    #@f
    .line 80
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    #@11
    .line 86
    new-instance v3, Landroid/hardware/location/ContextHubService$1;

    #@13
    invoke-direct {v3, p0}, Landroid/hardware/location/ContextHubService$1;-><init>(Landroid/hardware/location/ContextHubService;)V

    #@16
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@18
    .line 99
    iput-object p1, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    #@1a
    .line 100
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->nativeInitialize()[Landroid/hardware/location/ContextHubInfo;

    #@1d
    move-result-object v3

    #@1e
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@20
    .line 102
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@23
    array-length v3, v3

    #@24
    if-ge v1, v3, :cond_0

    #@26
    .line 103
    const-string/jumbo v3, "ContextHubService"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "ContextHub["

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    const-string/jumbo v5, "] id: "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@42
    aget-object v5, v5, v1

    #@44
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    #@47
    move-result v5

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 104
    const-string/jumbo v5, ", name:  "

    #@4f
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 104
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@55
    aget-object v5, v5, v1

    #@57
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 102
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6c
    move-result-object v3

    #@6d
    const-string/jumbo v4, "android.software.vr.mode"

    #@70
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@73
    move-result v3

    #@74
    if-eqz v3, :cond_1

    #@76
    .line 109
    const-string/jumbo v3, "vrmanager"

    #@79
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    #@80
    move-result-object v2

    #@81
    .line 110
    .local v2, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_1

    #@83
    .line 112
    :try_start_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@85
    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    .line 98
    .end local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_1
    :goto_1
    return-void

    #@89
    .line 113
    .restart local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    #@8a
    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ContextHubService"

    #@8d
    const-string/jumbo v4, "VR state listener registration failed"

    #@90
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@93
    goto :goto_1
.end method

.method private addAppInstance(IIJI)I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "appInstanceHandle"    # I
    .param p3, "appId"    # J
    .param p5, "appVersion"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 354
    new-instance v1, Landroid/hardware/location/NanoAppInstanceInfo;

    #@3
    invoke-direct {v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>()V

    #@6
    .line 356
    .local v1, "appInfo":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v1, p3, p4}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppId(J)V

    #@9
    .line 357
    invoke-virtual {v1, p5}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppVersion(I)V

    #@c
    .line 358
    const-string/jumbo v2, "Preloaded app, unknown"

    #@f
    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setName(Ljava/lang/String;)V

    #@12
    .line 359
    invoke-virtual {v1, p1}, Landroid/hardware/location/NanoAppInstanceInfo;->setContexthubId(I)V

    #@15
    .line 360
    invoke-virtual {v1, p2}, Landroid/hardware/location/NanoAppInstanceInfo;->setHandle(I)V

    #@18
    .line 361
    const-string/jumbo v2, "Preloaded app, unknown"

    #@1b
    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setPublisher(Ljava/lang/String;)V

    #@1e
    .line 362
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededExecMemBytes(I)V

    #@21
    .line 363
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededReadMemBytes(I)V

    #@24
    .line 364
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededWriteMemBytes(I)V

    #@27
    .line 367
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 368
    const-string/jumbo v0, "Updated"

    #@36
    .line 373
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 374
    const-string/jumbo v2, "ContextHubService"

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, " app instance "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    const-string/jumbo v4, " with id "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 375
    const-string/jumbo v4, " version "

    #@64
    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 377
    return v5

    #@74
    .line 370
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Added"

    #@77
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkPermissions()V
    .locals 3

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 319
    return-void
.end method

.method private deleteAppInstance(I)I
    .locals 2
    .param p1, "appInstanceHandle"    # I

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 382
    const/4 v0, -0x1

    #@d
    return v0

    #@e
    .line 385
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method private native nativeInitialize()[Landroid/hardware/location/ContextHubInfo;
.end method

.method private native nativeSendMessage([I[B)I
.end method

.method private onMessageReceipt([I[B)I
    .locals 9
    .param p1, "header"    # [I
    .param p2, "data"    # [B

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 324
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 325
    :cond_0
    const/4 v5, -0x1

    #@7
    return v5

    #@8
    .line 324
    :cond_1
    array-length v5, p1

    #@9
    const/4 v6, 0x4

    #@a
    if-lt v5, v6, :cond_0

    #@c
    .line 327
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    #@e
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@11
    move-result v1

    #@12
    .line 328
    .local v1, "callbacksCount":I
    if-ge v1, v7, :cond_2

    #@14
    .line 329
    const-string/jumbo v5, "ContextHubService"

    #@17
    const-string/jumbo v6, "No message callbacks registered."

    #@1a
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 330
    return v8

    #@1e
    .line 333
    :cond_2
    new-instance v4, Landroid/hardware/location/ContextHubMessage;

    #@20
    aget v5, p1, v8

    #@22
    .line 334
    aget v6, p1, v7

    #@24
    .line 333
    invoke-direct {v4, v5, v6, p2}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    #@27
    .line 336
    .local v4, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@2a
    .line 337
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    #@2c
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/hardware/location/IContextHubCallback;

    #@32
    .line 340
    .local v0, "callback":Landroid/hardware/location/IContextHubCallback;
    const/4 v5, 0x2

    #@33
    :try_start_0
    aget v5, p1, v5

    #@35
    .line 341
    const/4 v6, 0x3

    #@36
    aget v6, p1, v6

    #@38
    .line 339
    invoke-interface {v0, v5, v6, v4}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 336
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 343
    :catch_0
    move-exception v2

    #@3f
    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ContextHubService"

    #@42
    new-instance v6, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v7, "Exception ("

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    const-string/jumbo v7, ") calling remote callback ("

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    const-string/jumbo v7, ")."

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_1

    #@6c
    .line 348
    .end local v0    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    #@6e
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@71
    .line 349
    return v8
.end method

.method private static parseAppId(Landroid/hardware/location/NanoApp;)J
    .locals 8
    .param p0, "app"    # Landroid/hardware/location/NanoApp;

    #@0
    .prologue
    .line 157
    const v1, 0x4f4e414e

    #@3
    .line 161
    .local v1, "HEADER_MAGIC":I
    const/4 v2, 0x4

    #@4
    .line 162
    .local v2, "HEADER_MAGIC_OFFSET":I
    const/16 v0, 0x8

    #@6
    .line 164
    .local v0, "HEADER_APP_ID_OFFSET":I
    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    #@9
    move-result-object v5

    #@a
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v5

    #@e
    .line 165
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    .line 164
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    move-result-object v4

    #@14
    .line 168
    .local v4, "header":Ljava/nio/ByteBuffer;
    const/4 v5, 0x4

    #@15
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@18
    move-result v5

    #@19
    const v6, 0x4f4e414e

    #@1c
    if-ne v5, v6, :cond_0

    #@1e
    .line 170
    const/16 v5, 0x8

    #@20
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-wide v6

    #@24
    return-wide v6

    #@25
    .line 172
    :catch_0
    move-exception v3

    #@26
    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppId()I

    #@29
    move-result v5

    #@2a
    int-to-long v6, v5

    #@2b
    return-wide v6
.end method

.method private sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 389
    const/4 v5, 0x4

    #@3
    new-array v1, v5, [I

    #@5
    .line 390
    .local v1, "msgHeader":[I
    aput v4, v1, v4

    #@7
    .line 391
    aput v4, v1, v3

    #@9
    .line 392
    const/4 v5, -0x1

    #@a
    const/4 v6, 0x2

    #@b
    aput v5, v1, v6

    #@d
    .line 393
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    #@10
    move-result v5

    #@11
    const/4 v6, 0x3

    #@12
    aput v5, v1, v6

    #@14
    .line 395
    new-array v0, v3, [B

    #@16
    .line 396
    .local v0, "data":[B
    if-eqz p2, :cond_1

    #@18
    :goto_0
    int-to-byte v3, v3

    #@19
    aput-byte v3, v0, v4

    #@1b
    .line 397
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    #@1e
    move-result v2

    #@1f
    .line 398
    .local v2, "ret":I
    if-eqz v2, :cond_0

    #@21
    .line 399
    const-string/jumbo v3, "ContextHubService"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Couldn\'t send VR state change notification ("

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    const-string/jumbo v5, ")!"

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 388
    :cond_0
    return-void

    #@43
    .end local v2    # "ret":I
    :cond_1
    move v3, v4

    #@44
    .line 396
    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 295
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 297
    const-string/jumbo v3, "Permission Denial: can\'t dump contexthub_service"

    #@e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 298
    return-void

    #@12
    .line 301
    :cond_0
    const-string/jumbo v3, "Dumping ContextHub Service"

    #@15
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 303
    const-string/jumbo v3, ""

    #@1b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 305
    const-string/jumbo v3, "=================== CONTEXT HUBS ===================="

    #@21
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 306
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@27
    array-length v3, v3

    #@28
    if-ge v0, v3, :cond_1

    #@2a
    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Handle "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, " : "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@43
    aget-object v4, v4, v0

    #@45
    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 306
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_0

    #@57
    .line 309
    :cond_1
    const-string/jumbo v3, ""

    #@5a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 310
    const-string/jumbo v3, "=================== NANOAPPS ===================="

    #@60
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 312
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@65
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    #@68
    move-result-object v3

    #@69
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v2

    #@6d
    .local v2, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_2

    #@73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Ljava/lang/Integer;

    #@79
    .line 313
    .local v1, "nanoAppInstance":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    const-string/jumbo v4, " : "

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@8b
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v3

    #@8f
    check-cast v3, Landroid/hardware/location/NanoAppInstanceInfo;

    #@91
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->toString()Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    goto :goto_1

    #@a1
    .line 294
    .end local v1    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 263
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    .local v4, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/Integer;

    #@1e
    .line 264
    .local v3, "nanoAppInstance":Ljava/lang/Integer;
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    #@26
    .line 266
    .local v2, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    .line 267
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 271
    .end local v2    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    .end local v3    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v6

    #@34
    new-array v5, v6, [I

    #@36
    .line 272
    .local v5, "retArray":[I
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v6

    #@3b
    if-ge v1, v6, :cond_2

    #@3d
    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Ljava/lang/Integer;

    #@43
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v6

    #@47
    aput v6, v5, v1

    #@49
    .line 272
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 276
    :cond_2
    return-object v5
.end method

.method public getContextHubHandles()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 130
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@5
    array-length v2, v2

    #@6
    new-array v1, v2, [I

    #@8
    .line 132
    .local v1, "returnArray":[I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 133
    aput v0, v1, v0

    #@e
    .line 134
    const-string/jumbo v2, "ContextHubService"

    #@11
    const-string/jumbo v3, "Hub %s is mapped to %d"

    #@14
    const/4 v4, 0x2

    #@15
    new-array v4, v4, [Ljava/lang/Object;

    #@17
    .line 135
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@19
    aget-object v5, v5, v0

    #@1b
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v5, v4, v6

    #@22
    aget v5, v1, v0

    #@24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x1

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 134
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 132
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 138
    :cond_0
    return-object v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 1
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 144
    if-ltz p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@7
    array-length v0, v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 145
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 148
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@e
    aget-object v0, v0, p1

    #@10
    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 251
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 252
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    #@1b
    return-object v0

    #@1c
    .line 254
    :cond_0
    const/4 v0, 0x0

    #@1d
    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 8
    .param p1, "contextHubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 185
    if-ltz p1, :cond_0

    #@5
    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    #@7
    array-length v4, v4

    #@8
    if-lt p1, v4, :cond_1

    #@a
    .line 186
    :cond_0
    const-string/jumbo v4, "ContextHubService"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Invalid contextHubhandle "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 187
    const/4 v4, -0x1

    #@25
    return v4

    #@26
    .line 190
    :cond_1
    const/4 v4, 0x6

    #@27
    new-array v3, v4, [I

    #@29
    .line 191
    .local v3, "msgHeader":[I
    const/4 v4, 0x2

    #@2a
    aput p1, v3, v4

    #@2c
    .line 192
    const/4 v4, -0x1

    #@2d
    const/4 v5, 0x3

    #@2e
    aput v4, v3, v5

    #@30
    .line 193
    const/4 v4, 0x0

    #@31
    const/4 v5, 0x1

    #@32
    aput v4, v3, v5

    #@34
    .line 194
    const/4 v4, 0x3

    #@35
    const/4 v5, 0x0

    #@36
    aput v4, v3, v5

    #@38
    .line 196
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppId()I

    #@3b
    move-result v4

    #@3c
    int-to-long v0, v4

    #@3d
    .line 199
    .local v0, "appId":J
    const/16 v4, 0x20

    #@3f
    shr-long v4, v0, v4

    #@41
    const-wide/16 v6, 0x0

    #@43
    cmp-long v4, v4, v6

    #@45
    if-eqz v4, :cond_2

    #@47
    .line 202
    const-string/jumbo v4, "ContextHubService"

    #@4a
    const-string/jumbo v5, "Code has not been updated since API fix."

    #@4d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 207
    :goto_0
    const-wide/16 v4, -0x1

    #@52
    and-long/2addr v4, v0

    #@53
    long-to-int v4, v4

    #@54
    const/4 v5, 0x4

    #@55
    aput v4, v3, v5

    #@57
    .line 208
    const/16 v4, 0x20

    #@59
    shr-long v4, v0, v4

    #@5b
    const-wide/16 v6, -0x1

    #@5d
    and-long/2addr v4, v6

    #@5e
    long-to-int v4, v4

    #@5f
    const/4 v5, 0x5

    #@60
    aput v4, v3, v5

    #@62
    .line 210
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    #@65
    move-result-object v4

    #@66
    invoke-direct {p0, v3, v4}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    #@69
    move-result v2

    #@6a
    .line 211
    .local v2, "errVal":I
    if-eqz v2, :cond_3

    #@6c
    .line 212
    const-string/jumbo v4, "ContextHubService"

    #@6f
    new-instance v5, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v6, "Send Message returns error"

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 213
    const/4 v4, -0x1

    #@87
    return v4

    #@88
    .line 204
    .end local v2    # "errVal":I
    :cond_2
    invoke-static {p2}, Landroid/hardware/location/ContextHubService;->parseAppId(Landroid/hardware/location/NanoApp;)J

    #@8b
    move-result-wide v0

    #@8c
    goto :goto_0

    #@8d
    .line 217
    .restart local v2    # "errVal":I
    :cond_3
    const/4 v4, 0x0

    #@8e
    return v4
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 123
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@8
    .line 124
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 3
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@3
    .line 284
    const/4 v1, 0x4

    #@4
    new-array v0, v1, [I

    #@6
    .line 285
    .local v0, "msgHeader":[I
    const/4 v1, 0x2

    #@7
    aput p1, v0, v1

    #@9
    .line 286
    const/4 v1, 0x3

    #@a
    aput p2, v0, v1

    #@c
    .line 287
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getVersion()I

    #@f
    move-result v1

    #@10
    const/4 v2, 0x1

    #@11
    aput v1, v0, v2

    #@13
    .line 288
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    #@16
    move-result v1

    #@17
    const/4 v2, 0x0

    #@18
    aput v1, v0, v2

    #@1a
    .line 290
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v0, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    #@21
    move-result v1

    #@22
    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 8
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 222
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    #@6
    .line 223
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    #@12
    .line 224
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_0

    #@14
    .line 225
    return v6

    #@15
    .line 229
    :cond_0
    new-array v2, v7, [I

    #@17
    .line 230
    .local v2, "msgHeader":[I
    const/4 v3, 0x2

    #@18
    aput v6, v2, v3

    #@1a
    .line 231
    const/4 v3, 0x3

    #@1b
    aput p1, v2, v3

    #@1d
    .line 232
    const/4 v3, 0x1

    #@1e
    aput v5, v2, v3

    #@20
    .line 233
    aput v7, v2, v5

    #@22
    .line 235
    new-array v1, v5, [B

    #@24
    .line 237
    .local v1, "msg":[B
    invoke-direct {p0, v2, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 238
    return v6

    #@2b
    .line 242
    :cond_1
    return v5
.end method

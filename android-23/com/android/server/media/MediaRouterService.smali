.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$ClientRecord;,
        Lcom/android/server/media/MediaRouterService$UserRecord;,
        Lcom/android/server/media/MediaRouterService$UserHandler;
    }
.end annotation


# static fields
.field static final CONNECTED_TIMEOUT:J = 0xea60L

.field static final CONNECTING_TIMEOUT:J = 0x1388L

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaRouterService"


# instance fields
.field private final mAllClientRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "MediaRouterService"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@a
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    #@3
    .line 86
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@a
    .line 87
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@11
    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 88
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@18
    .line 90
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@1b
    .line 93
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@1d
    .line 94
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@24
    .line 92
    return-void
.end method

.method private disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .locals 3
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;
    .param p2, "died"    # Z

    #@0
    .prologue
    .line 463
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 464
    if-eqz p2, :cond_3

    #@6
    .line 465
    const-string/jumbo v0, "MediaRouterService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ": Died!"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 470
    :cond_0
    :goto_0
    iget v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    #@22
    if-nez v0, :cond_1

    #@24
    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 471
    :cond_1
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@2a
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@2c
    .line 472
    const/4 v1, 0x3

    #@2d
    .line 471
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@30
    .line 474
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    #@33
    .line 462
    return-void

    #@34
    .line 467
    :cond_3
    const-string/jumbo v0, "MediaRouterService"

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, ": Unregistered"

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 3
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    #@0
    .prologue
    .line 446
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@2
    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 447
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v0

    #@c
    .line 446
    if-eqz v0, :cond_1

    #@e
    .line 448
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 449
    const-string/jumbo v0, "MediaRouterService"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, ": Disposed"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@2e
    iget v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@30
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@33
    .line 441
    :cond_1
    return-void
.end method

.method private getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 351
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@3
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@d
    .line 352
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_0

    #@f
    .line 353
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 355
    :cond_0
    return-object v3
.end method

.method private initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .locals 3
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@0
    .prologue
    .line 457
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 458
    const-string/jumbo v0, "MediaRouterService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ": Registered"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 456
    :cond_0
    return-void
.end method

.method private initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 3
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    #@0
    .prologue
    .line 433
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 434
    const-string/jumbo v0, "MediaRouterService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ": Initialized"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 436
    :cond_0
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@20
    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@22
    if-ne v0, v1, :cond_1

    #@24
    .line 437
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@26
    const/4 v1, 0x1

    #@27
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@2a
    .line 432
    :cond_1
    return-void
.end method

.method private registerClientLocked(Landroid/media/IMediaRouterClient;ILjava/lang/String;IZ)V
    .locals 10
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "trusted"    # Z

    #@0
    .prologue
    .line 313
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v7

    #@4
    .line 314
    .local v7, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 315
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-nez v0, :cond_2

    #@e
    .line 316
    const/4 v9, 0x0

    #@f
    .line 317
    .local v9, "newUser":Z
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    #@17
    .line 318
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-nez v2, :cond_0

    #@19
    .line 319
    new-instance v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    #@1b
    .end local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    invoke-direct {v2, p0, p4}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    #@1e
    .line 320
    .restart local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    const/4 v9, 0x1

    #@1f
    .line 322
    :cond_0
    new-instance v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@21
    .end local v0    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    move-object v1, p0

    #@22
    move-object v3, p1

    #@23
    move v4, p2

    #@24
    move-object v5, p3

    #@25
    move v6, p5

    #@26
    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;ILjava/lang/String;Z)V

    #@29
    .line 324
    .restart local v0    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    const/4 v1, 0x0

    #@2a
    :try_start_0
    invoke-interface {v7, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 329
    if-eqz v9, :cond_1

    #@2f
    .line 330
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 331
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    #@37
    .line 334
    :cond_1
    iget-object v1, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 335
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v1, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 336
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    #@44
    .line 312
    .end local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v9    # "newUser":Z
    :cond_2
    return-void

    #@45
    .line 325
    .restart local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .restart local v9    # "newUser":Z
    :catch_0
    move-exception v8

    #@46
    .line 326
    .local v8, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@48
    const-string/jumbo v3, "Media router client died prematurely."

    #@4b
    invoke-direct {v1, v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v1
.end method

.method private requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    #@0
    .prologue
    .line 414
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 416
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_0

    #@e
    .line 417
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@10
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@12
    .line 418
    const/4 v3, 0x6

    #@13
    const/4 v4, 0x0

    #@14
    .line 417
    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 413
    :cond_0
    return-void
.end method

.method private requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "direction"    # I

    #@0
    .prologue
    .line 424
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 425
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 426
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_0

    #@e
    .line 427
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@10
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@12
    .line 428
    const/4 v3, 0x7

    #@13
    const/4 v4, 0x0

    #@14
    .line 427
    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 423
    :cond_0
    return-void
.end method

.method private setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"    # I
    .param p3, "activeScan"    # Z

    #@0
    .prologue
    .line 360
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 361
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 362
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_3

    #@e
    .line 364
    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    #@10
    if-nez v2, :cond_0

    #@12
    .line 365
    and-int/lit8 p2, p2, -0x5

    #@14
    .line 368
    :cond_0
    iget v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    #@16
    if-ne v2, p2, :cond_1

    #@18
    .line 369
    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    #@1a
    if-eq v2, p3, :cond_3

    #@1c
    .line 370
    :cond_1
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 371
    const-string/jumbo v2, "MediaRouterService"

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, ": Set discovery request, routeTypes=0x"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 372
    const-string/jumbo v4, ", activeScan="

    #@3e
    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 374
    :cond_2
    iput p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    #@4f
    .line 375
    iput-boolean p3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    #@51
    .line 376
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@53
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@55
    .line 377
    const/4 v3, 0x3

    #@56
    .line 376
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@59
    .line 359
    :cond_3
    return-void
.end method

.method private setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "explicit"    # Z

    #@0
    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@2
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 385
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_2

    #@e
    .line 386
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    #@10
    .line 387
    .local v1, "oldRouteId":Ljava/lang/String;
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_2

    #@16
    .line 388
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 389
    const-string/jumbo v2, "MediaRouterService"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, ": Set selected route, routeId="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 390
    const-string/jumbo v4, ", oldRouteId="

    #@34
    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 391
    const-string/jumbo v4, ", explicit="

    #@3f
    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 394
    :cond_0
    iput-object p2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    #@50
    .line 395
    if-eqz p3, :cond_2

    #@52
    .line 397
    if-eqz v1, :cond_1

    #@54
    .line 398
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@56
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@58
    .line 399
    const/4 v3, 0x5

    #@59
    .line 398
    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@60
    .line 403
    :cond_1
    if-eqz p2, :cond_2

    #@62
    iget-boolean v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    #@64
    if-eqz v2, :cond_2

    #@66
    .line 404
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@68
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@6a
    .line 405
    const/4 v3, 0x4

    #@6b
    .line 404
    invoke-virtual {v2, v3, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@72
    .line 383
    .end local v1    # "oldRouteId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "died"    # Z

    #@0
    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    #@2
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@c
    .line 342
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_0

    #@e
    .line 343
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@10
    .line 344
    .local v1, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@15
    .line 345
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    #@18
    .line 346
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    #@1b
    .line 340
    .end local v1    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_0
    return-void
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 478
    if-eqz p2, :cond_1

    #@3
    .line 479
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 480
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@f
    .line 481
    array-length v4, v1

    #@10
    move v2, v3

    #@11
    :goto_0
    if-ge v2, v4, :cond_1

    #@13
    aget-object v0, v1, v2

    #@15
    .line 482
    .local v0, "n":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 483
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 481
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 488
    .end local v0    # "n":Ljava/lang/String;
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_1
    return v3
.end method


# virtual methods
.method clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .locals 3
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@0
    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 307
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, v0, v2}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 305
    return-void

    #@b
    .line 306
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 261
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Permission Denial: can\'t dump MediaRouterService from from pid="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v4

    #@1b
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 265
    const-string/jumbo v4, ", uid="

    #@22
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v4

    #@2a
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 266
    return-void

    #@36
    .line 269
    :cond_0
    const-string/jumbo v3, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    #@39
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 270
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3f
    .line 271
    const-string/jumbo v3, "Global state"

    #@42
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v4, "  mCurrentUserId="

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    iget v4, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 274
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@60
    monitor-enter v4

    #@61
    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@63
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@66
    move-result v0

    #@67
    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    #@68
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6a
    .line 277
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@6c
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    #@72
    .line 278
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@75
    .line 279
    const-string/jumbo v3, ""

    #@78
    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    .line 276
    add-int/lit8 v1, v1, 0x1

    #@7d
    goto :goto_0

    #@7e
    .end local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_1
    monitor-exit v4

    #@7f
    .line 260
    return-void

    #@80
    .line 274
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@81
    monitor-exit v4

    #@82
    throw v3
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    #@0
    .prologue
    .line 164
    if-nez p1, :cond_0

    #@2
    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 168
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 170
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 171
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v3

    #@16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 171
    return-object v3

    #@1b
    .line 170
    :catchall_0
    move-exception v3

    #@1c
    :try_start_3
    monitor-exit v2

    #@1d
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 173
    :catchall_1
    move-exception v2

    #@1f
    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 173
    throw v2
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 112
    return-void
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 11
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    if-nez p1, :cond_0

    #@3
    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "client must not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f
    move-result v1

    #@10
    .line 124
    .local v1, "uid":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 125
    new-instance v2, Ljava/lang/SecurityException;

    #@18
    const-string/jumbo v3, "packageName must match the calling uid"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 128
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v0

    #@23
    .line 130
    .local v0, "pid":I
    const-string/jumbo v5, "registerClientAsUser"

    #@26
    const/4 v4, 0x1

    #@27
    move v2, p3

    #@28
    move-object v6, p2

    #@29
    .line 129
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@2c
    move-result v6

    #@2d
    .line 131
    .local v6, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@2f
    .line 132
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@32
    .line 131
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_2

    #@38
    const/4 v7, 0x1

    #@39
    .line 134
    .local v7, "trusted":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3c
    move-result-wide v8

    #@3d
    .line 136
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@3f
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@40
    move-object v2, p0

    #@41
    move-object v3, p1

    #@42
    move v4, v0

    #@43
    move-object v5, p2

    #@44
    .line 137
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;ILjava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@48
    .line 140
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 118
    return-void

    #@4c
    .line 131
    .end local v7    # "trusted":Z
    .end local v8    # "token":J
    :cond_2
    const/4 v7, 0x0

    #@4d
    .restart local v7    # "trusted":Z
    goto :goto_0

    #@4e
    .line 136
    .restart local v8    # "token":J
    :catchall_0
    move-exception v2

    #@4f
    :try_start_3
    monitor-exit v10

    #@50
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@51
    .line 139
    :catchall_1
    move-exception v2

    #@52
    .line 140
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 139
    throw v2
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    #@0
    .prologue
    .line 221
    if-nez p1, :cond_0

    #@2
    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 224
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "routeId must not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 228
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v0

    #@1a
    .line 230
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@1c
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 231
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 220
    return-void

    #@25
    .line 230
    :catchall_0
    move-exception v3

    #@26
    :try_start_3
    monitor-exit v2

    #@27
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 233
    :catchall_1
    move-exception v2

    #@29
    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 233
    throw v2
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "direction"    # I

    #@0
    .prologue
    .line 241
    if-nez p1, :cond_0

    #@2
    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 244
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "routeId must not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 248
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v0

    #@1a
    .line 250
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@1c
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 251
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 240
    return-void

    #@25
    .line 250
    :catchall_0
    move-exception v3

    #@26
    :try_start_3
    monitor-exit v2

    #@27
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 253
    :catchall_1
    move-exception v2

    #@29
    .line 254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 253
    throw v2
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"    # I
    .param p3, "activeScan"    # Z

    #@0
    .prologue
    .line 182
    if-nez p1, :cond_0

    #@2
    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 186
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 188
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 189
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    .line 192
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 181
    return-void

    #@1a
    .line 188
    :catchall_0
    move-exception v3

    #@1b
    :try_start_3
    monitor-exit v2

    #@1c
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    .line 191
    :catchall_1
    move-exception v2

    #@1e
    .line 192
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 191
    throw v2
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "explicit"    # Z

    #@0
    .prologue
    .line 204
    if-nez p1, :cond_0

    #@2
    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 208
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 210
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 211
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 203
    return-void

    #@1a
    .line 210
    :catchall_0
    move-exception v3

    #@1b
    :try_start_3
    monitor-exit v2

    #@1c
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    .line 213
    :catchall_1
    move-exception v2

    #@1e
    .line 214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 213
    throw v2
.end method

.method switchUser()V
    .locals 7

    #@0
    .prologue
    .line 285
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 286
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@6
    move-result v3

    #@7
    .line 287
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@9
    if-eq v4, v3, :cond_1

    #@b
    .line 288
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@d
    .line 289
    .local v2, "oldUserId":I
    iput v3, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    #@f
    .line 291
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    #@17
    .line 292
    .local v1, "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v1, :cond_0

    #@19
    .line 293
    iget-object v4, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@1b
    const/4 v6, 0x2

    #@1c
    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@1f
    .line 294
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    #@22
    .line 297
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/server/media/MediaRouterService$UserRecord;

    #@2a
    .line 298
    .local v0, "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v0, :cond_1

    #@2c
    .line 299
    iget-object v4, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    #@2e
    const/4 v6, 0x1

    #@2f
    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .end local v0    # "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v1    # "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v2    # "oldUserId":I
    :cond_1
    monitor-exit v5

    #@33
    .line 284
    return-void

    #@34
    .line 285
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4
.end method

.method public systemRunning()V
    .locals 3

    #@0
    .prologue
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@8
    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    #@a
    new-instance v2, Lcom/android/server/media/MediaRouterService$1;

    #@c
    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@12
    .line 108
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->switchUser()V

    #@15
    .line 97
    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "client must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 153
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 154
    const/4 v3, 0x0

    #@13
    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 146
    return-void

    #@1b
    .line 153
    :catchall_0
    move-exception v3

    #@1c
    :try_start_3
    monitor-exit v2

    #@1d
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 156
    :catchall_1
    move-exception v2

    #@1f
    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 156
    throw v2
.end method

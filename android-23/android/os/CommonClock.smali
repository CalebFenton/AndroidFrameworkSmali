.class public Landroid/os/CommonClock;
.super Ljava/lang/Object;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonClock$OnTimelineChangedListener;,
        Landroid/os/CommonClock$OnServerDiedListener;,
        Landroid/os/CommonClock$TimelineChangedListener;,
        Landroid/os/CommonClock$1;
    }
.end annotation


# static fields
.field public static final ERROR_ESTIMATE_UNKNOWN:I = 0x7fffffff

.field public static final INVALID_TIMELINE_ID:J = 0x0L

.field private static final METHOD_CBK_ON_TIMELINE_CHANGED:I = 0x1

.field private static final METHOD_COMMON_TIME_TO_LOCAL_TIME:I = 0x2

.field private static final METHOD_GET_COMMON_FREQ:I = 0x5

.field private static final METHOD_GET_COMMON_TIME:I = 0x4

.field private static final METHOD_GET_ESTIMATED_ERROR:I = 0x8

.field private static final METHOD_GET_LOCAL_FREQ:I = 0x7

.field private static final METHOD_GET_LOCAL_TIME:I = 0x6

.field private static final METHOD_GET_MASTER_ADDRESS:I = 0xb

.field private static final METHOD_GET_STATE:I = 0xa

.field private static final METHOD_GET_TIMELINE_ID:I = 0x9

.field private static final METHOD_IS_COMMON_TIME_VALID:I = 0x1

.field private static final METHOD_LOCAL_TIME_TO_COMMON_TIME:I = 0x3

.field private static final METHOD_REGISTER_LISTENER:I = 0xc

.field private static final METHOD_UNREGISTER_LISTENER:I = 0xd

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.clock"

.field public static final STATE_CLIENT:I = 0x1

.field public static final STATE_INITIAL:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_MASTER:I = 0x2

.field public static final STATE_RONIN:I = 0x3

.field public static final STATE_WAIT_FOR_ELECTION:I = 0x4

.field public static final TIME_NOT_SYNCED:J = -0x1L


# instance fields
.field private mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

.field private mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method static synthetic -get0(Landroid/os/CommonClock;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 297
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    #@b
    .line 298
    iput-object v1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    #@d
    .line 299
    iput-object v1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    #@f
    .line 301
    iput-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@11
    .line 302
    const-string/jumbo v0, ""

    #@14
    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    #@16
    .line 305
    new-instance v0, Landroid/os/CommonClock$1;

    #@18
    invoke-direct {v0, p0}, Landroid/os/CommonClock$1;-><init>(Landroid/os/CommonClock;)V

    #@1b
    iput-object v0, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@1d
    .line 335
    iput-object v1, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@1f
    .line 113
    const-string/jumbo v0, "common_time.clock"

    #@22
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@28
    .line 114
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@2a
    if-nez v0, :cond_0

    #@2c
    .line 115
    new-instance v0, Landroid/os/RemoteException;

    #@2e
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@31
    throw v0

    #@32
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@34
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    #@3a
    .line 118
    new-instance v0, Landroid/os/CommonTimeUtils;

    #@3c
    iget-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@3e
    iget-object v2, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    #@40
    invoke-direct {v0, v1, v2}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    #@43
    iput-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@45
    .line 119
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@47
    iget-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@49
    const/4 v2, 0x0

    #@4a
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@4d
    .line 120
    invoke-direct {p0}, Landroid/os/CommonClock;->registerTimelineChangeListener()V

    #@50
    .line 112
    return-void
.end method

.method public static create()Landroid/os/CommonClock;
    .locals 2

    #@0
    .prologue
    .line 130
    :try_start_0
    new-instance v1, Landroid/os/CommonClock;

    #@2
    invoke-direct {v1}, Landroid/os/CommonClock;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 136
    :goto_0
    return-object v1

    #@6
    .line 132
    :catch_0
    move-exception v0

    #@7
    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@8
    .local v1, "retVal":Landroid/os/CommonClock;
    goto :goto_0
.end method

.method private registerTimelineChangeListener()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 338
    iget-object v4, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 339
    return-void

    #@6
    .line 341
    :cond_0
    const/4 v3, 0x0

    #@7
    .line 342
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v0

    #@b
    .line 343
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@e
    move-result-object v2

    #@f
    .line 344
    .local v2, "reply":Landroid/os/Parcel;
    new-instance v4, Landroid/os/CommonClock$TimelineChangedListener;

    #@11
    invoke-direct {v4, p0, v7}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;Landroid/os/CommonClock$TimelineChangedListener;)V

    #@14
    iput-object v4, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@16
    .line 347
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@1b
    .line 348
    iget-object v4, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    .line 349
    iget-object v4, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@22
    const/16 v5, 0xc

    #@24
    const/4 v6, 0x0

    #@25
    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@28
    .line 350
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_2

    #@2e
    const/4 v3, 0x1

    #@2f
    .line 356
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 363
    :goto_1
    if-nez v3, :cond_1

    #@37
    .line 364
    iput-object v7, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@39
    .line 365
    iput-object v7, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@3b
    .line 366
    iput-object v7, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@3d
    .line 337
    :cond_1
    return-void

    #@3e
    .line 350
    :cond_2
    const/4 v3, 0x0

    #@3f
    goto :goto_0

    #@40
    .line 352
    :catch_0
    move-exception v1

    #@41
    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    #@42
    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@45
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@48
    goto :goto_1

    #@49
    .line 355
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@4a
    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 355
    throw v4
.end method

.method private throwOnDeadServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 294
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    #@a
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@d
    throw v0

    #@e
    .line 292
    :cond_1
    return-void
.end method

.method private unregisterTimelineChangeListener()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 371
    iget-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 372
    return-void

    #@6
    .line 374
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v0

    #@a
    .line 375
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d
    move-result-object v2

    #@e
    .line 378
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@13
    .line 379
    iget-object v3, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 380
    iget-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 384
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 386
    :goto_0
    iput-object v6, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@28
    .line 370
    return-void

    #@29
    .line 382
    :catch_0
    move-exception v1

    #@2a
    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    goto :goto_0

    #@31
    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@32
    .line 384
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 386
    iput-object v6, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    #@3a
    .line 383
    throw v3
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/os/CommonClock;->release()V

    #@3
    return-void
.end method

.method public getEstimatedError()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    #@3
    .line 190
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0x8

    #@7
    const v2, 0x7fffffff

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getMasterAddr()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    #@3
    .line 231
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0xb

    #@7
    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    #@3
    .line 218
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0xa

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getTime()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    #@3
    .line 171
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/4 v1, 0x4

    #@6
    const-wide/16 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getTimelineId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    #@3
    .line 204
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0x9

    #@7
    const-wide/16 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public release()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 149
    invoke-direct {p0}, Landroid/os/CommonClock;->unregisterTimelineChangeListener()V

    #@4
    .line 150
    iget-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@a
    iget-object v2, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 155
    :goto_0
    iput-object v4, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    #@12
    .line 157
    :cond_0
    iput-object v4, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    #@14
    .line 148
    return-void

    #@15
    .line 154
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public setServerDiedListener(Landroid/os/CommonClock$OnServerDiedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonClock$OnServerDiedListener;

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 286
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 284
    return-void

    #@7
    .line 285
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setTimelineChangedListener(Landroid/os/CommonClock$OnTimelineChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonClock$OnTimelineChangedListener;

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 258
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 256
    return-void

    #@7
    .line 257
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.class public Landroid/os/CommonTimeConfig;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonTimeConfig$OnServerDiedListener;,
        Landroid/os/CommonTimeConfig$1;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final INVALID_GROUP_ID:J = -0x1L

.field private static final METHOD_FORCE_NETWORKLESS_MASTER_MODE:I = 0x11

.field private static final METHOD_GET_AUTO_DISABLE:I = 0xf

.field private static final METHOD_GET_CLIENT_SYNC_INTERVAL:I = 0xb

.field private static final METHOD_GET_INTERFACE_BINDING:I = 0x7

.field private static final METHOD_GET_MASTER_ANNOUNCE_INTERVAL:I = 0x9

.field private static final METHOD_GET_MASTER_ELECTION_ENDPOINT:I = 0x3

.field private static final METHOD_GET_MASTER_ELECTION_GROUP_ID:I = 0x5

.field private static final METHOD_GET_MASTER_ELECTION_PRIORITY:I = 0x1

.field private static final METHOD_GET_PANIC_THRESHOLD:I = 0xd

.field private static final METHOD_SET_AUTO_DISABLE:I = 0x10

.field private static final METHOD_SET_CLIENT_SYNC_INTERVAL:I = 0xc

.field private static final METHOD_SET_INTERFACE_BINDING:I = 0x8

.field private static final METHOD_SET_MASTER_ANNOUNCE_INTERVAL:I = 0xa

.field private static final METHOD_SET_MASTER_ELECTION_ENDPOINT:I = 0x4

.field private static final METHOD_SET_MASTER_ELECTION_GROUP_ID:I = 0x6

.field private static final METHOD_SET_MASTER_ELECTION_PRIORITY:I = 0x2

.field private static final METHOD_SET_PANIC_THRESHOLD:I = 0xe

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.config"

.field public static final SUCCESS:I


# instance fields
.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method static synthetic -get0(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 414
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    #@b
    .line 415
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@d
    .line 417
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@f
    .line 418
    const-string/jumbo v0, ""

    #@12
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    #@14
    .line 421
    new-instance v0, Landroid/os/CommonTimeConfig$1;

    #@16
    invoke-direct {v0, p0}, Landroid/os/CommonTimeConfig$1;-><init>(Landroid/os/CommonTimeConfig;)V

    #@19
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@1b
    .line 65
    const-string/jumbo v0, "common_time.config"

    #@1e
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@24
    .line 66
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@26
    if-nez v0, :cond_0

    #@28
    .line 67
    new-instance v0, Landroid/os/RemoteException;

    #@2a
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@2d
    throw v0

    #@2e
    .line 69
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@30
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    #@36
    .line 70
    new-instance v0, Landroid/os/CommonTimeUtils;

    #@38
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@3a
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    #@3c
    invoke-direct {v0, v1, v2}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    #@3f
    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@41
    .line 71
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@43
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@45
    const/4 v2, 0x0

    #@46
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@49
    .line 64
    return-void
.end method

.method private checkDeadServer()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 406
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static create()Landroid/os/CommonTimeConfig;
    .locals 2

    #@0
    .prologue
    .line 81
    :try_start_0
    new-instance v1, Landroid/os/CommonTimeConfig;

    #@2
    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 87
    :goto_0
    return-object v1

    #@6
    .line 83
    :catch_0
    move-exception v0

    #@7
    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@8
    .local v1, "retVal":Landroid/os/CommonTimeConfig;
    goto :goto_0
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
    .line 410
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 411
    new-instance v0, Landroid/os/RemoteException;

    #@8
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@b
    throw v0

    #@c
    .line 409
    :cond_0
    return-void
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
    .line 403
    invoke-virtual {p0}, Landroid/os/CommonTimeConfig;->release()V

    #@3
    return-void
.end method

.method public forceNetworklessMasterMode()I
    .locals 6

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 360
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v2

    #@8
    .line 363
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@d
    .line 364
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v4, 0x11

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 366
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v3

    #@19
    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 366
    return v3

    #@20
    .line 368
    :catch_0
    move-exception v1

    #@21
    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    #@22
    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 369
    return v3

    #@29
    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@2a
    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 371
    throw v3
.end method

.method public getAutoDisable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 321
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@4
    .line 322
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@6
    const/16 v2, 0xf

    #@8
    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@b
    move-result v1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public getClientSyncInterval()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 266
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0xb

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getInterfaceBinding()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 201
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@4
    .line 203
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@6
    const/4 v2, 0x7

    #@7
    invoke-virtual {v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetString(ILjava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 205
    .local v0, "ifaceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 206
    return-object v3

    #@14
    .line 208
    :cond_0
    return-object v0
.end method

.method public getMasterAnnounceInterval()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 239
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0x9

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getMasterElectionEndpoint()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 147
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getMasterElectionGroupId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 175
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/4 v1, 0x5

    #@6
    const-wide/16 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getMasterElectionPriority()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 120
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, -0x1

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@a
    move-result v0

    #@b
    int-to-byte v0, v0

    #@c
    return v0
.end method

.method public getPanicThreshold()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    #@3
    .line 294
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@5
    const/16 v1, 0xd

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public release()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 100
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 102
    :try_start_0
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@7
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 105
    :goto_0
    iput-object v4, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    #@f
    .line 107
    :cond_0
    iput-object v4, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@11
    .line 99
    return-void

    #@12
    .line 104
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public setAutoDisable(Z)I
    .locals 3
    .param p1, "autoDisable"    # Z

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 338
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 340
    :cond_0
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    if-eqz p1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    const/16 v2, 0x10

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public setClientSyncInterval(I)I
    .locals 2
    .param p1, "interval"    # I

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 279
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 280
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/16 v1, 0xc

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public setMasterAnnounceInterval(I)I
    .locals 2
    .param p1, "interval"    # I

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 252
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 253
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/16 v1, 0xa

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public setMasterElectionEndpoint(Ljava/net/InetSocketAddress;)I
    .locals 2
    .param p1, "ep"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 162
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 163
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/4 v1, 0x4

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetSockaddr(ILjava/net/InetSocketAddress;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public setMasterElectionGroupId(J)I
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 187
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 188
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/4 v1, 0x6

    #@b
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/CommonTimeUtils;->transactSetLong(IJ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public setMasterElectionPriority(B)I
    .locals 2
    .param p1, "priority"    # B

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 133
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 134
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public setNetworkBinding(Ljava/lang/String;)I
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 223
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 225
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    .line 226
    if-nez p1, :cond_1

    #@c
    const-string/jumbo p1, ""

    #@f
    .line 225
    .end local p1    # "ifaceName":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetString(ILjava/lang/String;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public setPanicThreshold(I)I
    .locals 2
    .param p1, "threshold"    # I

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 309
    const/4 v0, -0x7

    #@7
    return v0

    #@8
    .line 310
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    #@a
    const/16 v1, 0xe

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 399
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 397
    return-void

    #@7
    .line 398
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.class final Landroid/telecom/RemoteConnectionService;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnectionService$1;,
        Landroid/telecom/RemoteConnectionService$2;
    }
.end annotation


# static fields
.field private static final NULL_CONFERENCE:Landroid/telecom/RemoteConference;

.field private static final NULL_CONNECTION:Landroid/telecom/RemoteConnection;


# instance fields
.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

.field private final mPendingConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mServant:Landroid/telecom/ConnectionServiceAdapterServant;

.field private final mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;


# direct methods
.method static synthetic -get0()Landroid/telecom/RemoteConference;
    .locals 1

    #@0
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/telecom/RemoteConnection;
    .locals 1

    #@0
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/telecom/RemoteConnectionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/RemoteConnectionService;->maybeDisconnectAdapter()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    new-instance v2, Landroid/telecom/RemoteConnection;

    #@3
    const-string/jumbo v3, "NULL"

    #@6
    move-object v0, v1

    #@7
    nop

    #@8
    nop

    #@9
    invoke-direct {v2, v3, v1, v0}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    #@c
    .line 46
    sput-object v2, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    #@e
    .line 50
    new-instance v0, Landroid/telecom/RemoteConference;

    #@10
    const-string/jumbo v2, "NULL"

    #@13
    invoke-direct {v0, v2, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    #@16
    .line 49
    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    #@18
    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;
    .param p2, "ourConnectionServiceImpl"    # Landroid/telecom/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Landroid/telecom/RemoteConnectionService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$1;-><init>(Landroid/telecom/RemoteConnectionService;)V

    #@8
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@a
    .line 336
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant;

    #@c
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@e
    invoke-direct {v0, v1}, Landroid/telecom/ConnectionServiceAdapterServant;-><init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@11
    .line 335
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    #@13
    .line 338
    new-instance v0, Landroid/telecom/RemoteConnectionService$2;

    #@15
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$2;-><init>(Landroid/telecom/RemoteConnectionService;)V

    #@18
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@1a
    .line 356
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@21
    .line 357
    new-instance v0, Ljava/util/HashMap;

    #@23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@26
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    #@28
    .line 358
    new-instance v0, Ljava/util/HashSet;

    #@2a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    #@2f
    .line 363
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@31
    .line 364
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@33
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@3d
    .line 365
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    #@3f
    .line 362
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 427
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/telecom/RemoteConference;

    #@10
    return-object v0

    #@11
    .line 429
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Conference %s"

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object p2, v1, v2

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object p1, v1, v2

    #@1d
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@20
    .line 430
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    #@22
    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 418
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/telecom/RemoteConnection;

    #@10
    return-object v0

    #@11
    .line 420
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    #@14
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object p2, v1, v2

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object p1, v1, v2

    #@1d
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@20
    .line 421
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    #@22
    return-object v0
.end method

.method private hasConnection(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private maybeDisconnectAdapter()V
    .locals 3

    #@0
    .prologue
    .line 434
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    #@a
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@12
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    #@14
    invoke-virtual {v2}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 433
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 437
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method final createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .locals 8
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    #@0
    .prologue
    .line 377
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 378
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Landroid/telecom/ConnectionRequest;

    #@a
    .line 379
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@d
    move-result-object v0

    #@e
    .line 380
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    #@11
    move-result-object v1

    #@12
    .line 381
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    #@15
    move-result-object v4

    #@16
    .line 382
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    #@19
    move-result v5

    #@1a
    .line 378
    invoke-direct {v3, v0, v1, v4, v5}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V

    #@1d
    .line 384
    .local v3, "newRequest":Landroid/telecom/ConnectionRequest;
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@1f
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 385
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@27
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    #@29
    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    #@30
    .line 388
    :cond_0
    new-instance v6, Landroid/telecom/RemoteConnection;

    #@32
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@34
    invoke-direct {v6, v2, v0, v3}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    #@37
    .line 389
    .local v6, "connection":Landroid/telecom/RemoteConnection;
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    #@39
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    .line 390
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    #@3e
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 391
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@43
    .line 396
    const/4 v5, 0x0

    #@44
    move-object v1, p1

    #@45
    move v4, p3

    #@46
    .line 391
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    #@49
    .line 397
    new-instance v0, Landroid/telecom/RemoteConnectionService$3;

    #@4b
    invoke-direct {v0, p0, v2}, Landroid/telecom/RemoteConnectionService$3;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    #@4e
    invoke-virtual {v6, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 404
    return-object v6

    #@52
    .line 405
    .end local v6    # "connection":Landroid/telecom/RemoteConnection;
    :catch_0
    move-exception v7

    #@53
    .line 407
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/telecom/DisconnectCause;

    #@55
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    const/4 v4, 0x1

    #@5a
    invoke-direct {v0, v4, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    #@5d
    .line 406
    invoke-static {v0}, Landroid/telecom/RemoteConnection;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;

    #@60
    move-result-object v0

    #@61
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[RemoteCS - "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "]"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

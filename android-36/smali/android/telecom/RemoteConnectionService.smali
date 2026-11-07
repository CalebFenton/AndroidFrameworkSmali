.class final Landroid/telecom/RemoteConnectionService;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"


# static fields
.field private static final greylist-max-o NULL_CONFERENCE:Landroid/telecom/RemoteConference;

.field private static final greylist-max-o NULL_CONNECTION:Landroid/telecom/RemoteConnection;


# instance fields
.field private final greylist-max-o mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConference;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final greylist-max-o mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final greylist-max-o mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

.field private final greylist-max-o mPendingConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mServant:Landroid/telecom/ConnectionServiceAdapterServant;

.field private final greylist-max-o mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

.field private final blacklist mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeDisconnectAdapter(Landroid/telecom/RemoteConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/RemoteConnectionService;->maybeDisconnectAdapter()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNULL_CONFERENCE()Landroid/telecom/RemoteConference;
    .registers 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;
    .registers 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Landroid/telecom/RemoteConnection;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/telecom/ConnectionRequest;

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1, v1}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    .line 53
    new-instance v0, Landroid/telecom/RemoteConference;

    invoke-direct {v0, v2, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V
    .registers 6
    .param p1, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;
    .param p2, "ourConnectionServiceImpl"    # Landroid/telecom/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/telecom/RemoteConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$1;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 530
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionServiceAdapterServant;-><init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 533
    new-instance v0, Landroid/telecom/RemoteConnectionService$2;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$2;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    .line 553
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    .line 556
    new-instance v0, Lcom/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    .line 561
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    .line 562
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 563
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 564
    return-void
.end method

.method private greylist-max-o findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 700
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 701
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference;

    return-object v0

    .line 703
    :cond_11
    const-string v0, "%s - Cannot find Conference %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method private greylist-max-o findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 692
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    return-object v0

    .line 694
    :cond_11
    const-string v0, "%s - Cannot find Connection %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object v0
.end method

.method private greylist-max-o hasConnection(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 686
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o maybeDisconnectAdapter()V
    .registers 4

    .line 708
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 710
    :try_start_10
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 713
    goto :goto_1e

    .line 712
    :catch_1d
    move-exception v0

    .line 715
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method blacklist createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;
    .registers 13
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    .line 639
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "id":Ljava/lang/String;
    :try_start_8
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_a8

    if-eqz v0, :cond_22

    .line 642
    :try_start_10
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_22

    .line 679
    :catch_1d
    move-exception v0

    move-object v2, p1

    move v5, p3

    goto/16 :goto_ab

    .line 647
    :cond_22
    :goto_22
    :try_start_22
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 648
    move-object v0, v3

    goto :goto_30

    :cond_2c
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "telecomCallId":Ljava/lang/String;
    :goto_30
    new-instance v1, Landroid/telecom/ConnectionRequest$Builder;

    invoke-direct {v1}, Landroid/telecom/ConnectionRequest$Builder;-><init>()V

    .line 651
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 654
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 655
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 656
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 657
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setParticipants(Ljava/util/List;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->isAdhocConferenceCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setIsAdhocConferenceCall(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionRequest$Builder;->setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Landroid/telecom/ConnectionRequest$Builder;->build()Landroid/telecom/ConnectionRequest;

    move-result-object v4

    .line 663
    .local v4, "newRequest":Landroid/telecom/ConnectionRequest;
    new-instance v1, Landroid/telecom/RemoteConference;

    iget-object v2, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-direct {v1, v3, v2}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    move-object v8, v1

    .line 664
    .local v8, "conference":Landroid/telecom/RemoteConference;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_8f} :catch_a8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v5, p3

    .end local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local p3    # "isIncoming":Z
    .local v2, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v5, "isIncoming":Z
    :try_start_93
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telecom/IConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 670
    new-instance p1, Landroid/telecom/RemoteConnectionService$4;

    invoke-direct {p1, p0, v3}, Landroid/telecom/RemoteConnectionService$4;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 677
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_a5} :catch_a6

    .line 678
    return-object v8

    .line 679
    .end local v0    # "telecomCallId":Ljava/lang/String;
    .end local v4    # "newRequest":Landroid/telecom/ConnectionRequest;
    .end local v8    # "conference":Landroid/telecom/RemoteConference;
    :catch_a6
    move-exception v0

    goto :goto_ab

    .end local v2    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "isIncoming":Z
    .restart local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local p3    # "isIncoming":Z
    :catch_a8
    move-exception v0

    move-object v2, p1

    move v5, p3

    .line 680
    .end local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local p3    # "isIncoming":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "isIncoming":Z
    :goto_ab
    new-instance p1, Landroid/telecom/DisconnectCause;

    .line 681
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {p1, v1, p3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 680
    invoke-static {p1}, Landroid/telecom/RemoteConference;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConference;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .registers 15
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    .line 575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "id":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 577
    .local v8, "extras":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 578
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 583
    :cond_1b
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 584
    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 583
    const-string v1, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, ""

    .line 588
    .local v0, "telecomCallId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 589
    .local v1, "shouldShowIncomingUI":Z
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v2}, Lcom/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 590
    move-object v0, v3

    .line 591
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v1

    move-object v9, v0

    move v10, v1

    goto :goto_3f

    .line 589
    :cond_3d
    move-object v9, v0

    move v10, v1

    .line 594
    .end local v0    # "telecomCallId":Ljava/lang/String;
    .end local v1    # "shouldShowIncomingUI":Z
    .local v9, "telecomCallId":Ljava/lang/String;
    .local v10, "shouldShowIncomingUI":Z
    :goto_3f
    new-instance v0, Landroid/telecom/ConnectionRequest$Builder;

    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$Builder;-><init>()V

    .line 595
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 596
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {v0, v8}, Landroid/telecom/ConnectionRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v9}, Landroid/telecom/ConnectionRequest$Builder;->setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v10}, Landroid/telecom/ConnectionRequest$Builder;->setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/telecom/ConnectionRequest$Builder;->build()Landroid/telecom/ConnectionRequest;

    move-result-object v4

    .line 606
    .local v4, "newRequest":Landroid/telecom/ConnectionRequest;
    :try_start_7c
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_82} :catch_ba

    if-eqz v0, :cond_95

    .line 607
    :try_start_84
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_90} :catch_91

    goto :goto_95

    .line 629
    :catch_91
    move-exception v0

    move-object v2, p1

    move v5, p3

    goto :goto_bd

    .line 610
    :cond_95
    :goto_95
    :try_start_95
    new-instance v0, Landroid/telecom/RemoteConnection;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-direct {v0, v3, v1, v4}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    .line 612
    .local v0, "connection":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a8} :catch_ba

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v5, p3

    .end local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local p3    # "isIncoming":Z
    .local v2, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v5, "isIncoming":Z
    :try_start_ac
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 621
    new-instance p1, Landroid/telecom/RemoteConnectionService$3;

    invoke-direct {p1, p0, v3}, Landroid/telecom/RemoteConnectionService$3;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b7} :catch_b8

    .line 628
    return-object v0

    .line 629
    .end local v0    # "connection":Landroid/telecom/RemoteConnection;
    :catch_b8
    move-exception v0

    goto :goto_bd

    .end local v2    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "isIncoming":Z
    .restart local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local p3    # "isIncoming":Z
    :catch_ba
    move-exception v0

    move-object v2, p1

    move v5, p3

    .line 630
    .end local p1    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local p3    # "isIncoming":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "isIncoming":Z
    :goto_bd
    new-instance p1, Landroid/telecom/DisconnectCause;

    .line 631
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {p1, v1, p3}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 630
    invoke-static {p1}, Landroid/telecom/RemoteConnection;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RemoteCS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

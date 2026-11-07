.class public Landroid/telecom/RemoteConnectionManager;
.super Ljava/lang/Object;
.source "RemoteConnectionManager.java"


# instance fields
.field private final greylist-max-o mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final greylist-max-o mRemoteConnectionServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/telecom/RemoteConnectionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$EPCeorhUsJaOWB57Cvl0KG6cC5M(Landroid/telecom/RemoteConnectionManager;Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;Landroid/content/ComponentName;)Landroid/telecom/RemoteConnectionService;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/RemoteConnectionManager;->lambda$addConnectionService$0(Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;Landroid/content/ComponentName;)Landroid/telecom/RemoteConnectionService;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telecom/ConnectionService;)V
    .registers 3
    .param p1, "ourConnectionServiceImpl"    # Landroid/telecom/ConnectionService;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 37
    return-void
.end method

.method private synthetic blacklist lambda$addConnectionService$0(Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;Landroid/content/ComponentName;)Landroid/telecom/RemoteConnectionService;
    .registers 7
    .param p1, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "key"    # Landroid/content/ComponentName;

    .line 46
    :try_start_0
    new-instance v0, Landroid/telecom/RemoteConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    invoke-direct {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;-><init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 48
    :catch_8
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 49
    const-string v2, "error when addConnectionService of %s: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method greylist-max-o addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;

    .line 42
    iget-object v0, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    new-instance v1, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/RemoteConnectionManager;Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public greylist-max-o conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .registers 7
    .param p1, "a"    # Landroid/telecom/RemoteConnection;
    .param p2, "b"    # Landroid/telecom/RemoteConnection;

    .line 108
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 110
    :try_start_a
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 111
    :catch_1b
    move-exception v0

    .line 112
    :goto_1c
    goto :goto_37

    .line 114
    :cond_1d
    nop

    .line 115
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    move-result-object v2

    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 114
    const-string v1, "Request to conference incompatible remote connections (%s,%s) (%s,%s)"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :goto_37
    return-void
.end method

.method public blacklist createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;
    .registers 10
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    .line 91
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 92
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_36

    .line 96
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 97
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnectionService;

    .line 98
    .local v2, "remoteService":Landroid/telecom/RemoteConnectionService;
    if-eqz v2, :cond_1d

    .line 103
    invoke-virtual {v2, p1, p2, p3}, Landroid/telecom/RemoteConnectionService;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object v3

    return-object v3

    .line 99
    :cond_1d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountHandle not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "remoteService":Landroid/telecom/RemoteConnectionService;
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountHandle must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .registers 10
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    .line 63
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 64
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_36

    .line 68
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 69
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnectionService;

    .line 70
    .local v2, "remoteService":Landroid/telecom/RemoteConnectionService;
    if-eqz v2, :cond_1d

    .line 75
    invoke-virtual {v2, p1, p2, p3}, Landroid/telecom/RemoteConnectionService;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v3

    return-object v3

    .line 71
    :cond_1d
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountHandle not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "remoteService":Landroid/telecom/RemoteConnectionService;
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountHandle must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

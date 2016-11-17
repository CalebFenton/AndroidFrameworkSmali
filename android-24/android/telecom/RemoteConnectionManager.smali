.class public Landroid/telecom/RemoteConnectionManager;
.super Ljava/lang/Object;
.source "RemoteConnectionManager.java"


# instance fields
.field private final mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final mRemoteConnectionServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/telecom/RemoteConnectionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 1
    .param p1, "ourConnectionServiceImpl"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 31
    iput-object v0, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    #@a
    .line 36
    iput-object p1, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    #@c
    .line 35
    return-void
.end method


# virtual methods
.method addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;

    #@0
    .prologue
    .line 42
    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    #@2
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 44
    :try_start_0
    new-instance v1, Landroid/telecom/RemoteConnectionService;

    #@a
    .line 46
    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    #@c
    .line 44
    invoke-direct {v1, p2, v2}, Landroid/telecom/RemoteConnectionService;-><init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V

    #@f
    .line 47
    .local v1, "remoteConnectionService":Landroid/telecom/RemoteConnectionService;
    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    #@11
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 41
    .end local v1    # "remoteConnectionService":Landroid/telecom/RemoteConnectionService;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 48
    :catch_0
    move-exception v0

    #@16
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 5
    .param p1, "a"    # Landroid/telecom/RemoteConnection;
    .param p2, "b"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    #@7
    move-result-object v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 79
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 76
    :goto_0
    return-void

    #@1a
    .line 83
    :cond_0
    const-string/jumbo v1, "Request to conference incompatible remote connections (%s,%s) (%s,%s)"

    #@1d
    const/4 v2, 0x4

    #@1e
    new-array v2, v2, [Ljava/lang/Object;

    #@20
    .line 84
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x0

    #@25
    aput-object v3, v2, v4

    #@27
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    const/4 v4, 0x1

    #@2c
    aput-object v3, v2, v4

    #@2e
    .line 85
    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getConnectionService()Lcom/android/internal/telecom/IConnectionService;

    #@31
    move-result-object v3

    #@32
    const/4 v4, 0x2

    #@33
    aput-object v3, v2, v4

    #@35
    invoke-virtual {p2}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    const/4 v4, 0x3

    #@3a
    aput-object v3, v2, v4

    #@3c
    .line 83
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3f
    goto :goto_0

    #@40
    .line 80
    :catch_0
    move-exception v0

    #@41
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .locals 6
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 57
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@4
    move-result-object v0

    #@5
    .line 58
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v0, :cond_0

    #@7
    .line 59
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "accountHandle must be specified."

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    #@17
    move-result-object v1

    #@18
    .line 63
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    #@1a
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 64
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "accountHandle not supported: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 68
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionManager;->mRemoteConnectionServices:Ljava/util/Map;

    #@3c
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/telecom/RemoteConnectionService;

    #@42
    .line 69
    .local v2, "remoteService":Landroid/telecom/RemoteConnectionService;
    if-eqz v2, :cond_2

    #@44
    .line 70
    invoke-virtual {v2, p1, p2, p3}, Landroid/telecom/RemoteConnectionService;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    #@47
    move-result-object v3

    #@48
    return-object v3

    #@49
    .line 73
    :cond_2
    return-object v4
.end method

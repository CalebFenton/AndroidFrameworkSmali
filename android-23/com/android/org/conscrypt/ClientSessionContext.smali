.class public Lcom/android/org/conscrypt/ClientSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    #@5
    .line 34
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 33
    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@c
    .line 38
    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 71
    if-nez p1, :cond_0

    #@3
    .line 72
    return-object v5

    #@4
    .line 75
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@6
    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@9
    .line 76
    .local v1, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@b
    monitor-enter v4

    #@c
    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@e
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljavax/net/ssl/SSLSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    monitor-exit v4

    #@15
    .line 79
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 80
    return-object v2

    #@1e
    .line 76
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 84
    .restart local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 85
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@27
    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    #@2a
    move-result-object v0

    #@2b
    .line 86
    .local v0, "data":[B
    if-eqz v0, :cond_2

    #@2d
    .line 87
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    #@30
    move-result-object v2

    #@31
    .line 88
    if-eqz v2, :cond_2

    #@33
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 89
    invoke-super {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@3c
    .line 90
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@3e
    monitor-enter v4

    #@3f
    .line 91
    :try_start_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@41
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    monitor-exit v4

    #@45
    .line 93
    return-object v2

    #@46
    .line 90
    :catchall_1
    move-exception v3

    #@47
    monitor-exit v4

    #@48
    throw v3

    #@49
    .line 98
    .end local v0    # "data":[B
    :cond_2
    return-object v5
.end method

.method public bridge synthetic getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 6
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@3
    .line 105
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 106
    .local v1, "host":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    #@a
    move-result v3

    #@b
    .line 107
    .local v3, "port":I
    if-nez v1, :cond_0

    #@d
    .line 108
    return-void

    #@e
    .line 111
    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@10
    invoke-direct {v2, v1, v3}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@13
    .line 112
    .local v2, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v5, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@15
    monitor-enter v5

    #@16
    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@18
    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v5

    #@1c
    .line 117
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    #@23
    move-result-object v0

    #@24
    .line 119
    .local v0, "data":[B
    if-eqz v0, :cond_1

    #@26
    .line 120
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@28
    invoke-interface {v4, p1, v0}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    #@2b
    .line 102
    .end local v0    # "data":[B
    :cond_1
    return-void

    #@2c
    .line 112
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 5
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 52
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 53
    .local v0, "host":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    #@7
    move-result v2

    #@8
    .line 54
    .local v2, "port":I
    if-nez v0, :cond_0

    #@a
    .line 55
    return-void

    #@b
    .line 57
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@d
    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@10
    .line 58
    .local v1, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@12
    monitor-enter v4

    #@13
    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@15
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v4

    #@19
    .line 51
    return-void

    #@1a
    .line 58
    :catchall_0
    move-exception v3

    #@1b
    monitor-exit v4

    #@1c
    throw v3
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .locals 0
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@2
    .line 46
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0
    .param p1, "seconds"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->setSessionTimeout(I)V

    #@3
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

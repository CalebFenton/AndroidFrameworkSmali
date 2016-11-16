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

.field private final sessionsByHostAndPort:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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
    .line 38
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    #@5
    .line 33
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@c
    .line 37
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
    .line 70
    if-nez p1, :cond_0

    #@3
    .line 71
    return-object v5

    #@4
    .line 74
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@6
    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@9
    .line 75
    .local v1, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@b
    monitor-enter v4

    #@c
    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 78
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 79
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    #@20
    move-result-object v3

    #@21
    return-object v3

    #@22
    .line 75
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 83
    .restart local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 84
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@2b
    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    #@2e
    move-result-object v0

    #@2f
    .line 85
    .local v0, "data":[B
    if-eqz v0, :cond_2

    #@31
    .line 86
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@34
    move-result-object v2

    #@35
    .line 87
    if-eqz v2, :cond_2

    #@37
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 88
    invoke-super {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@40
    .line 89
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@42
    monitor-enter v4

    #@43
    .line 90
    :try_start_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@45
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    monitor-exit v4

    #@49
    .line 92
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 89
    :catchall_1
    move-exception v3

    #@4f
    monitor-exit v4

    #@50
    throw v3

    #@51
    .line 97
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
    .line 102
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@3
    .line 104
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 105
    .local v1, "host":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    #@a
    move-result v3

    #@b
    .line 106
    .local v3, "port":I
    if-nez v1, :cond_0

    #@d
    .line 107
    return-void

    #@e
    .line 110
    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@10
    invoke-direct {v2, v1, v3}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@13
    .line 111
    .local v2, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v5, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@15
    monitor-enter v5

    #@16
    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@18
    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v5

    #@1c
    .line 116
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    #@23
    move-result-object v0

    #@24
    .line 118
    .local v0, "data":[B
    if-eqz v0, :cond_1

    #@26
    .line 119
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@28
    invoke-interface {v4, p1, v0}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    #@2b
    .line 101
    .end local v0    # "data":[B
    :cond_1
    return-void

    #@2c
    .line 111
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
    .line 51
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 52
    .local v0, "host":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    #@7
    move-result v2

    #@8
    .line 53
    .local v2, "port":I
    if-nez v0, :cond_0

    #@a
    .line 54
    return-void

    #@b
    .line 56
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@d
    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    #@10
    .line 57
    .local v1, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@12
    monitor-enter v4

    #@13
    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@15
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v4

    #@19
    .line 50
    return-void

    #@1a
    .line 57
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
    .line 46
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@2
    .line 45
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
    .line 42
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

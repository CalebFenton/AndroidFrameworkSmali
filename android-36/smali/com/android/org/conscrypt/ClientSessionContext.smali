.class public final Lcom/android/org/conscrypt/ClientSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private blacklist persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private final blacklist sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/NativeSslSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 48
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private greylist getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 124
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 125
    return-object v0

    .line 128
    :cond_4
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 129
    .local v1, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    const/4 v2, 0x0

    .line 130
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 131
    :try_start_d
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 132
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 133
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/NativeSslSession;

    move-object v2, v5

    .line 135
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_4c

    .line 136
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 137
    return-object v2

    .line 143
    :cond_2f
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_4b

    .line 144
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 145
    .local v3, "data":[B
    if-eqz v3, :cond_4b

    .line 146
    invoke-static {p0, v3, p1, p2}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 148
    invoke-direct {p0, v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 149
    return-object v2

    .line 154
    .end local v3    # "data":[B
    :cond_4b
    return-object v0

    .line 135
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private blacklist putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 8
    .param p1, "key"    # Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 158
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-nez v1, :cond_18

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 162
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v4

    if-eq v3, v4, :cond_44

    .line 168
    :goto_2f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    goto :goto_2f

    .line 173
    :cond_3f
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_44
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    nop

    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private blacklist removeSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "key"    # Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 180
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 182
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-eqz v1, :cond_1b

    .line 183
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 185
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_1b
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method declared-synchronized blacklist getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 15
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    monitor-enter p0

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 67
    monitor-exit p0

    return-object v0

    .line 70
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_53

    .line 71
    .local v1, "session":Lcom/android/org/conscrypt/NativeSslSession;
    if-nez v1, :cond_e

    .line 72
    monitor-exit p0

    return-object v0

    .line 75
    :cond_e
    :try_start_e
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "protocol":Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, "protocolFound":Z
    iget-object v4, p3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_18
    if-ge v7, v5, :cond_27

    aget-object v8, v4, v7

    .line 78
    .local v8, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_53

    if-eqz v9, :cond_24

    .line 79
    const/4 v3, 0x1

    .line 80
    goto :goto_27

    .line 77
    .end local v8    # "enabledProtocol":Ljava/lang/String;
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 83
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_27
    :goto_27
    if-nez v3, :cond_2b

    .line 84
    monitor-exit p0

    return-object v0

    .line 87
    .restart local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "cipherSuite":Ljava/lang/String;
    const/4 v5, 0x0

    .line 89
    .local v5, "cipherSuiteFound":Z
    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_35
    if-ge v6, v8, :cond_44

    aget-object v9, v7, v6

    .line 90
    .local v9, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_53

    if-eqz v10, :cond_41

    .line 91
    const/4 v5, 0x1

    .line 92
    goto :goto_44

    .line 89
    .end local v9    # "enabledCipherSuite":Ljava/lang/String;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 95
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_44
    :goto_44
    if-nez v5, :cond_48

    .line 96
    monitor-exit p0

    return-object v0

    .line 99
    .restart local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_53

    .line 102
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_51
    monitor-exit p0

    return-object v1

    .line 65
    .end local v1    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v3    # "protocolFound":Z
    .end local v4    # "cipherSuite":Ljava/lang/String;
    .end local v5    # "cipherSuiteFound":Z
    .end local p1    # "hostName":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method blacklist getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 3
    .param p1, "sessionId"    # [B

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 193
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    .line 195
    .local v1, "port":I
    if-nez v0, :cond_b

    .line 196
    return-void

    .line 199
    :cond_b
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 200
    .local v2, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 203
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_2c

    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 204
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v3

    .line 205
    .local v3, "data":[B
    if-eqz v3, :cond_2c

    .line 206
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 209
    .end local v3    # "data":[B
    :cond_2c
    return-void
.end method

.method blacklist onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 213
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 215
    return-void

    .line 217
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    .line 218
    .local v1, "port":I
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 219
    .local v2, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 220
    return-void
.end method

.method public greylist test-api setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .registers 2
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 58
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 59
    return-void
.end method

.method blacklist size()I
    .registers 6

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v1

    .line 108
    :try_start_4
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 109
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 110
    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    goto :goto_e

    .line 111
    :cond_20
    monitor-exit v1

    .line 112
    return v0

    .line 111
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method

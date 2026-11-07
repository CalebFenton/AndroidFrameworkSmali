.class public final Lcom/android/org/conscrypt/ServerSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private blacklist persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 32
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x20

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ServerSessionContext;->setSesssionIdContext([B)V

    .line 48
    return-void
.end method


# virtual methods
.method blacklist getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 6
    .param p1, "sessionId"    # [B

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 61
    iget-object v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v0, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 62
    .local v0, "data":[B
    if-eqz v0, :cond_1e

    .line 63
    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v2

    .line 64
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ServerSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 66
    return-object v2

    .line 71
    .end local v0    # "data":[B
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_1e
    return-object v1
.end method

.method blacklist onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 77
    iget-object v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v0, :cond_13

    .line 78
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    .line 79
    .local v0, "data":[B
    if-eqz v0, :cond_13

    .line 80
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 83
    .end local v0    # "data":[B
    :cond_13
    return-void
.end method

.method blacklist onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 2
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 88
    return-void
.end method

.method public blacklist setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .registers 2
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .line 55
    iput-object p1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    .line 56
    return-void
.end method

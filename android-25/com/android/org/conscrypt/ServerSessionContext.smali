.class public Lcom/android/org/conscrypt/ServerSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 30
    const/16 v0, 0x64

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    #@5
    .line 45
    iget-wide v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [B

    #@a
    const/16 v3, 0x20

    #@c
    const/4 v4, 0x0

    #@d
    aput-byte v3, v2, v4

    #@f
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(J[B)V

    #@12
    .line 29
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 5
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 58
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    #@4
    move-result-object v0

    #@5
    .line 59
    .local v0, "cachedSession":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    #@7
    .line 61
    return-object v0

    #@8
    .line 65
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 66
    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@e
    invoke-interface {v3, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    #@11
    move-result-object v1

    #@12
    .line 67
    .local v1, "data":[B
    if-eqz v1, :cond_1

    #@14
    .line 68
    const/4 v3, -0x1

    #@15
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ServerSessionContext;->toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@18
    move-result-object v2

    #@19
    .line 69
    .local v2, "session":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz v2, :cond_1

    #@1b
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 70
    invoke-super {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@24
    .line 71
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/OpenSSLSessionImpl;)Ljavax/net/ssl/SSLSession;

    #@27
    move-result-object v3

    #@28
    return-object v3

    #@29
    .line 76
    .end local v1    # "data":[B
    .end local v2    # "session":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_1
    return-object v4
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@3
    .line 84
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    #@a
    move-result-object v0

    #@b
    .line 86
    .local v0, "data":[B
    if-eqz v0, :cond_0

    #@d
    .line 87
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@f
    invoke-interface {v1, p1, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    #@12
    .line 80
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 53
    return-void
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .locals 0
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@0
    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@2
    .line 48
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

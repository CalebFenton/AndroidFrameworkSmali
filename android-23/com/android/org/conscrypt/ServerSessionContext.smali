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
    .locals 4
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 57
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    #@4
    move-result-object v1

    #@5
    .line 58
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_0

    #@7
    .line 59
    return-object v1

    #@8
    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 64
    iget-object v2, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@e
    invoke-interface {v2, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    #@11
    move-result-object v0

    #@12
    .line 65
    .local v0, "data":[B
    if-eqz v0, :cond_1

    #@14
    .line 66
    const/4 v2, -0x1

    #@15
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/org/conscrypt/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    #@18
    move-result-object v1

    #@19
    .line 67
    if-eqz v1, :cond_1

    #@1b
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 68
    invoke-super {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@24
    .line 69
    return-object v1

    #@25
    .line 74
    .end local v0    # "data":[B
    :cond_1
    return-object v3
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@3
    .line 82
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    #@a
    move-result-object v0

    #@b
    .line 84
    .local v0, "data":[B
    if-eqz v0, :cond_0

    #@d
    .line 85
    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    #@f
    invoke-interface {v1, p1, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    #@12
    .line 78
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

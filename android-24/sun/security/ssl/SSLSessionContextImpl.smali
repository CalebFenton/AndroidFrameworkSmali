.class final Lsun/security/ssl/SSLSessionContextImpl;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    }
.end annotation


# instance fields
.field private cacheLimit:I

.field private sessionCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Lsun/security/ssl/SessionId;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sessionHostPortCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    invoke-direct {p0}, Lsun/security/ssl/SSLSessionContextImpl;->getDefaultCacheLimit()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@9
    .line 50
    const v0, 0x15180

    #@c
    iput v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@e
    .line 53
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@10
    iget v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@12
    invoke-static {v0, v1}, Lsun/security/util/Cache;->newSoftMemoryCache(II)Lsun/security/util/Cache;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@18
    .line 54
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@1a
    iget v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@1c
    invoke-static {v0, v1}, Lsun/security/util/Cache;->newSoftMemoryCache(II)Lsun/security/util/Cache;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@22
    .line 48
    return-void
.end method

.method private getDefaultCacheLimit()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 200
    const/4 v0, 0x0

    #@2
    .line 203
    .local v0, "cacheLimit":I
    :try_start_0
    new-instance v4, Lsun/security/ssl/SSLSessionContextImpl$1;

    #@4
    invoke-direct {v4, p0}, Lsun/security/ssl/SSLSessionContextImpl$1;-><init>(Lsun/security/ssl/SSLSessionContextImpl;)V

    #@7
    .line 202
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/String;

    #@d
    .line 210
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v0

    #@13
    .line 214
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_1

    #@15
    .end local v0    # "cacheLimit":I
    :goto_1
    return v0

    #@16
    .restart local v0    # "cacheLimit":I
    .restart local v2    # "s":Ljava/lang/String;
    :cond_0
    move v0, v3

    #@17
    .line 210
    goto :goto_0

    #@18
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move v0, v3

    #@19
    .line 214
    goto :goto_1

    #@1a
    .line 211
    :catch_0
    move-exception v1

    #@1b
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 166
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 166
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1e
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method


# virtual methods
.method get(Ljava/lang/String;I)Lsun/security/ssl/SSLSessionImpl;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    if-nez p1, :cond_0

    #@3
    const/4 v1, -0x1

    #@4
    if-ne p2, v1, :cond_0

    #@6
    .line 153
    return-object v3

    #@7
    .line 156
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@9
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    #@13
    .line 157
    .local v0, "sess":Lsun/security/ssl/SSLSessionImpl;
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 158
    return-object v0

    #@1a
    .line 161
    :cond_1
    return-object v3
.end method

.method get([B)Lsun/security/ssl/SSLSessionImpl;
    .locals 1
    .param p1, "id"    # [B

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lsun/security/ssl/SSLSessionContextImpl;->getSession([B)Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    #@6
    return-object v0
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;

    #@2
    invoke-direct {v0, p0}, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;-><init>(Lsun/security/ssl/SSLSessionContextImpl;)V

    #@5
    .line 80
    .local v0, "scVisitor":Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/util/Cache;->accept(Lsun/security/util/Cache$CacheVisitor;)V

    #@a
    .line 82
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->getSessionIds()Ljava/util/Enumeration;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4
    .param p1, "sessionId"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 62
    if-nez p1, :cond_0

    #@3
    .line 63
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "session id cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 66
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@e
    new-instance v2, Lsun/security/ssl/SessionId;

    #@10
    invoke-direct {v2, p1}, Lsun/security/ssl/SessionId;-><init>([B)V

    #@13
    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    #@19
    .line 67
    .local v0, "sess":Lsun/security/ssl/SSLSessionImpl;
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 68
    return-object v0

    #@20
    .line 71
    :cond_1
    return-object v3
.end method

.method public getSessionCacheSize()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@2
    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@2
    return v0
.end method

.method isTimedout(Ljavax/net/ssl/SSLSession;)Z
    .locals 7
    .param p1, "sess"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 218
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 219
    return v6

    #@6
    .line 222
    :cond_0
    if-eqz p1, :cond_1

    #@8
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    #@b
    move-result-wide v0

    #@c
    iget v2, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@e
    int-to-long v2, v2

    #@f
    const-wide/16 v4, 0x3e8

    #@11
    mul-long/2addr v2, v4

    #@12
    add-long/2addr v0, v2

    #@13
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v2

    #@17
    .line 222
    cmp-long v0, v0, v2

    #@19
    if-gtz v0, :cond_1

    #@1b
    .line 224
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    #@1e
    .line 225
    const/4 v0, 0x1

    #@1f
    return v0

    #@20
    .line 228
    :cond_1
    return v6
.end method

.method put(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/SSLSessionImpl;

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@2
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@9
    .line 181
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    #@12
    move-result v0

    #@13
    const/4 v1, -0x1

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 182
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@18
    .line 183
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    #@1f
    move-result v2

    #@20
    invoke-direct {p0, v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 182
    invoke-virtual {v0, v1, p1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@27
    .line 186
    :cond_0
    invoke-virtual {p1, p0}, Lsun/security/ssl/SSLSessionImpl;->setContext(Lsun/security/ssl/SSLSessionContextImpl;)V

    #@2a
    .line 177
    return-void
.end method

.method remove(Lsun/security/ssl/SessionId;)V
    .locals 4
    .param p1, "key"    # Lsun/security/ssl/SessionId;

    #@0
    .prologue
    .line 191
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@2
    invoke-virtual {v1, p1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    #@8
    .line 192
    .local v0, "s":Lsun/security/ssl/SSLSessionImpl;
    if-eqz v0, :cond_0

    #@a
    .line 193
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@c
    invoke-virtual {v1, p1}, Lsun/security/util/Cache;->remove(Ljava/lang/Object;)V

    #@f
    .line 194
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@11
    .line 195
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    #@18
    move-result v3

    #@19
    invoke-direct {p0, v2, v3}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 194
    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->remove(Ljava/lang/Object;)V

    #@20
    .line 190
    :cond_0
    return-void
.end method

.method public setSessionCacheSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    if-gez p1, :cond_0

    #@2
    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 124
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 125
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@e
    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setCapacity(I)V

    #@11
    .line 126
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@13
    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setCapacity(I)V

    #@16
    .line 127
    iput p1, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    #@18
    .line 120
    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    if-gez p1, :cond_0

    #@2
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 99
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 100
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    #@e
    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setTimeout(I)V

    #@11
    .line 101
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    #@13
    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setTimeout(I)V

    #@16
    .line 102
    iput p1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    #@18
    .line 94
    :cond_1
    return-void
.end method

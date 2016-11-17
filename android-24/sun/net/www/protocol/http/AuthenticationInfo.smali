.class public abstract Lsun/net/www/protocol/http/AuthenticationInfo;
.super Lsun/net/www/protocol/http/AuthCacheValue;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final PROXY_AUTHENTICATION:C = 'p'

.field public static final SERVER_AUTHENTICATION:C = 's'

.field private static requests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field static serializeAuth:Z


# instance fields
.field authScheme:Lsun/net/www/protocol/http/AuthScheme;

.field host:Ljava/lang/String;

.field path:Ljava/lang/String;

.field port:I

.field protocol:Ljava/lang/String;

.field protected transient pw:Ljava/net/PasswordAuthentication;

.field realm:Ljava/lang/String;

.field s1:Ljava/lang/String;

.field s2:Ljava/lang/String;

.field type:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->-assertionsDisabled:Z

    #@b
    .line 69
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@d
    .line 70
    const-string/jumbo v1, "http.auth.serializeRequests"

    #@10
    .line 69
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@13
    .line 68
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/Boolean;

    #@19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1c
    move-result v0

    #@1d
    sput-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    #@1f
    .line 114
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@26
    .line 52
    return-void

    #@27
    :cond_0
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method public constructor <init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # C
    .param p2, "authScheme"    # Lsun/net/www/protocol/http/AuthScheme;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthCacheValue;-><init>()V

    #@3
    .line 193
    iput-char p1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@5
    .line 194
    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    #@7
    .line 195
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    #@c
    .line 196
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    #@12
    .line 197
    iput p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@14
    .line 198
    iput-object p5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@16
    .line 199
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@19
    .line 192
    return-void
.end method

.method public constructor <init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # C
    .param p2, "authScheme"    # Lsun/net/www/protocol/http/AuthScheme;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthCacheValue;-><init>()V

    #@3
    .line 216
    iput-char p1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@5
    .line 217
    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    #@7
    .line 218
    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    #@11
    .line 219
    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    #@1b
    .line 220
    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@21
    .line 221
    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_0

    #@26
    .line 222
    invoke-virtual {p3}, Ljava/net/URL;->getDefaultPort()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@2c
    .line 224
    :cond_0
    iput-object p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@2e
    .line 226
    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 227
    .local v0, "urlPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_1

    #@38
    .line 228
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@3a
    .line 215
    :goto_0
    return-void

    #@3b
    .line 230
    :cond_1
    invoke-static {v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@41
    goto :goto_0
.end method

.method static endAuthRequest(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 350
    sget-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 351
    return-void

    #@5
    .line 353
    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@7
    monitor-enter v0

    #@8
    .line 354
    :try_start_0
    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestCompleted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v0

    #@c
    .line 349
    return-void

    #@d
    .line 353
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1
.end method

.method static getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 298
    if-nez p1, :cond_0

    #@3
    .line 299
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@5
    invoke-interface {v0, p0, v1}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@b
    return-object v0

    #@c
    .line 301
    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@e
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, p0, v1}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@18
    return-object v0
.end method

.method static getProxyAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 328
    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@3
    invoke-interface {v1, p0, v2}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@9
    .line 329
    .local v0, "cached":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-nez v0, :cond_0

    #@b
    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestIsInProgress(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 331
    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@13
    invoke-interface {v1, p0, v2}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    #@16
    move-result-object v0

    #@17
    .end local v0    # "cached":Lsun/net/www/protocol/http/AuthenticationInfo;
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@19
    .line 333
    .restart local v0    # "cached":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_0
    return-object v0
.end method

.method static getProxyAuth(Ljava/lang/String;I)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "p::"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ":"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 312
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@25
    const/4 v3, 0x0

    #@26
    invoke-interface {v2, v0, v3}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@2c
    .line 313
    .local v1, "result":Lsun/net/www/protocol/http/AuthenticationInfo;
    return-object v1
.end method

.method static getProxyAuthKey(Ljava/lang/String;ILjava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "scheme"    # Lsun/net/www/protocol/http/AuthScheme;

    #@0
    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "p:"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "::"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 323
    const-string/jumbo v2, ":"

    #@22
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 323
    const-string/jumbo v2, ":"

    #@2d
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 324
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method static getServerAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 284
    invoke-static {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@4
    move-result-object v0

    #@5
    .line 285
    .local v0, "cached":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-nez v0, :cond_0

    #@7
    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestIsInProgress(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 287
    invoke-static {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@10
    move-result-object v0

    #@11
    .line 289
    :cond_0
    return-object v0
.end method

.method static getServerAuth(Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@3
    move-result v1

    #@4
    .line 259
    .local v1, "port":I
    const/4 v2, -0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 260
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    #@a
    move-result v1

    #@b
    .line 262
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "s:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 263
    const-string/jumbo v3, ":"

    #@26
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 263
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 263
    const-string/jumbo v3, ":"

    #@39
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 264
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@48
    move-result-object v2

    #@49
    return-object v2
.end method

.method static getServerAuthKey(Ljava/net/URL;Ljava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "scheme"    # Lsun/net/www/protocol/http/AuthScheme;

    #@0
    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@3
    move-result v1

    #@4
    .line 275
    .local v1, "port":I
    const/4 v2, -0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 276
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    #@a
    move-result v1

    #@b
    .line 278
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "s:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, ":"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 279
    const-string/jumbo v3, ":"

    #@31
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 279
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 279
    const-string/jumbo v3, ":"

    #@44
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 279
    const-string/jumbo v3, ":"

    #@4f
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    .line 280
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 438
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 439
    new-instance v0, Ljava/net/PasswordAuthentication;

    #@6
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    #@8
    iget-object v2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    #@11
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@13
    .line 440
    iput-object v3, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    #@15
    iput-object v3, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    #@17
    .line 436
    return-void
.end method

.method static reducePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "urlPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    const/16 v2, 0x2f

    #@2
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 242
    .local v0, "sepIndex":I
    const/16 v2, 0x2e

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v1

    #@c
    .line 243
    .local v1, "targetSuffixIndex":I
    const/4 v2, -0x1

    #@d
    if-eq v0, v2, :cond_1

    #@f
    .line 244
    if-ge v0, v1, :cond_0

    #@11
    .line 245
    add-int/lit8 v2, v0, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 247
    :cond_0
    return-object p0

    #@1a
    .line 249
    :cond_1
    return-object p0
.end method

.method private static requestCompleted(Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@2
    monitor-enter v3

    #@3
    .line 150
    :try_start_0
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@5
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Thread;

    #@b
    .line 151
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    #@d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v2

    #@11
    if-ne v0, v2, :cond_1

    #@13
    .line 152
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@15
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 153
    .local v1, "waspresent":Z
    :goto_0
    sget-boolean v2, Lsun/net/www/protocol/http/AuthenticationInfo;->-assertionsDisabled:Z

    #@1e
    if-nez v2, :cond_1

    #@20
    if-nez v1, :cond_1

    #@22
    new-instance v2, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 149
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v1    # "waspresent":Z
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2

    #@2b
    .line 152
    .restart local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "waspresent":Z
    goto :goto_0

    #@2d
    .line 155
    .end local v1    # "waspresent":Z
    :cond_1
    :try_start_1
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit v3

    #@33
    .line 148
    return-void
.end method

.method private static requestIsInProgress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 121
    sget-boolean v3, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 123
    return v5

    #@6
    .line 125
    :cond_0
    sget-object v4, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@8
    monitor-enter v4

    #@9
    .line 127
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c
    move-result-object v0

    #@d
    .line 128
    .local v0, "c":Ljava/lang/Thread;
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@f
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/Thread;

    #@15
    .local v2, "t":Ljava/lang/Thread;
    if-nez v2, :cond_1

    #@17
    .line 129
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@19
    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v4

    #@1d
    .line 130
    return v5

    #@1e
    .line 132
    :cond_1
    if-ne v2, v0, :cond_2

    #@20
    monitor-exit v4

    #@21
    .line 133
    return v5

    #@22
    .line 135
    :cond_2
    :goto_0
    :try_start_1
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@24
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 137
    :try_start_2
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 138
    :catch_0
    move-exception v1

    #@31
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@32
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit v4

    #@33
    .line 142
    const/4 v3, 0x1

    #@34
    return v3

    #@35
    .line 125
    .end local v0    # "c":Ljava/lang/Thread;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 446
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@3
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    #@9
    .line 447
    new-instance v0, Ljava/lang/String;

    #@b
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@d
    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@14
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    #@16
    .line 448
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 444
    return-void

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method


# virtual methods
.method addToCache()V
    .locals 3

    #@0
    .prologue
    .line 341
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 342
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@7
    invoke-interface {v1, v0, p0}, Lsun/net/www/protocol/http/AuthCache;->put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    #@a
    .line 343
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 344
    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2, p0}, Lsun/net/www/protocol/http/AuthCache;->put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    #@1a
    .line 346
    :cond_0
    invoke-static {v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@1d
    .line 340
    return-void
.end method

.method cacheKey(Z)Ljava/lang/String;
    .locals 2
    .param p1, "includeRealm"    # Z

    #@0
    .prologue
    .line 425
    if-eqz p1, :cond_0

    #@2
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-char v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ":"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, ":"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, ":"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 427
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    #@30
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 427
    const-string/jumbo v1, ":"

    #@37
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 427
    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@3d
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 427
    const-string/jumbo v1, ":"

    #@44
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 427
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@4a
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0

    #@53
    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    iget-char v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    const-string/jumbo v1, ":"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    const-string/jumbo v1, ":"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    const-string/jumbo v1, ":"

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 204
    :try_start_0
    invoke-super {p0}, Lsun/net/www/protocol/http/AuthCacheValue;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 205
    :catch_0
    move-exception v0

    #@6
    .line 207
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public credentials()Ljava/net/PasswordAuthentication;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@2
    return-object v0
.end method

.method getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    #@2
    return-object v0
.end method

.method public getAuthType()Lsun/net/www/protocol/http/AuthCacheValue$Type;
    .locals 2

    #@0
    .prologue
    .line 82
    iget-char v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@2
    const/16 v1, 0x73

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 83
    sget-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Server:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@8
    .line 82
    :goto_0
    return-object v0

    #@9
    .line 84
    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Proxy:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@b
    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 378
    iget-char v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    #@2
    const/16 v1, 0x73

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 379
    const-string/jumbo v0, "Authorization"

    #@9
    return-object v0

    #@a
    .line 381
    :cond_0
    const-string/jumbo v0, "Proxy-authorization"

    #@d
    return-object v0
.end method

.method public abstract getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    #@2
    return v0
.end method

.method public getProtocolScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract isAuthorizationStale(Ljava/lang/String;)Z
.end method

.method removeFromCache()V
    .locals 2

    #@0
    .prologue
    .line 362
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1, p0}, Lsun/net/www/protocol/http/AuthCache;->remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    #@a
    .line 363
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 364
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v0, v1, p0}, Lsun/net/www/protocol/http/AuthCache;->remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    #@1a
    .line 361
    :cond_0
    return-void
.end method

.method public abstract setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
.end method

.method public abstract supportsPreemptiveAuthorization()Z
.end method

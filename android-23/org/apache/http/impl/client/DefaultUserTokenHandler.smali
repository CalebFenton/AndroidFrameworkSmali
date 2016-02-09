.class public Lorg/apache/http/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lorg/apache/http/client/UserTokenHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;
    .locals 4
    .param p0, "authState"    # Lorg/apache/http/auth/AuthState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 84
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    #@4
    move-result-object v1

    #@5
    .line 85
    .local v1, "scheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v1, :cond_0

    #@7
    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 86
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@16
    move-result-object v0

    #@17
    .line 87
    .local v0, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v0, :cond_0

    #@19
    .line 88
    invoke-interface {v0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 91
    .end local v0    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 56
    const/4 v4, 0x0

    #@1
    .line 59
    .local v4, "userPrincipal":Ljava/security/Principal;
    const-string/jumbo v5, "http.auth.target-scope"

    #@4
    .line 58
    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Lorg/apache/http/auth/AuthState;

    #@a
    .line 60
    .local v3, "targetAuthState":Lorg/apache/http/auth/AuthState;
    if-eqz v3, :cond_0

    #@c
    .line 61
    invoke-static {v3}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    #@f
    move-result-object v4

    #@10
    .line 62
    .local v4, "userPrincipal":Ljava/security/Principal;
    if-nez v4, :cond_0

    #@12
    .line 64
    const-string/jumbo v5, "http.auth.proxy-scope"

    #@15
    .line 63
    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lorg/apache/http/auth/AuthState;

    #@1b
    .line 65
    .local v1, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    invoke-static {v1}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    #@1e
    move-result-object v4

    #@1f
    .line 69
    .end local v1    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    .end local v4    # "userPrincipal":Ljava/security/Principal;
    :cond_0
    if-nez v4, :cond_1

    #@21
    .line 71
    const-string/jumbo v5, "http.connection"

    #@24
    .line 70
    invoke-interface {p1, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    #@2a
    .line 72
    .local v0, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 73
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    #@33
    move-result-object v2

    #@34
    .line 74
    .local v2, "sslsession":Ljavax/net/ssl/SSLSession;
    if-eqz v2, :cond_1

    #@36
    .line 75
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    #@39
    move-result-object v4

    #@3a
    .line 80
    .end local v0    # "conn":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v2    # "sslsession":Ljavax/net/ssl/SSLSession;
    :cond_1
    return-object v4
.end method

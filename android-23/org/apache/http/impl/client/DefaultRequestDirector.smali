.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

.field private static networkSecurityPolicy:Ljava/lang/Object;


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field private final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final targetAuthState:Lorg/apache/http/auth/AuthState;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 118
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@e
    .line 181
    if-nez p1, :cond_0

    #@10
    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 183
    const-string/jumbo v1, "Request executor may not be null."

    #@15
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 185
    :cond_0
    if-nez p2, :cond_1

    #@1b
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    .line 187
    const-string/jumbo v1, "Client connection manager may not be null."

    #@20
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 189
    :cond_1
    if-nez p3, :cond_2

    #@26
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    .line 191
    const-string/jumbo v1, "Connection reuse strategy may not be null."

    #@2b
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 193
    :cond_2
    if-nez p4, :cond_3

    #@31
    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    .line 195
    const-string/jumbo v1, "Connection keep alive strategy may not be null."

    #@36
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 197
    :cond_3
    if-nez p5, :cond_4

    #@3c
    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    .line 199
    const-string/jumbo v1, "Route planner may not be null."

    #@41
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 201
    :cond_4
    if-nez p6, :cond_5

    #@47
    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@49
    .line 203
    const-string/jumbo v1, "HTTP protocol processor may not be null."

    #@4c
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 205
    :cond_5
    if-nez p7, :cond_6

    #@52
    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@54
    .line 207
    const-string/jumbo v1, "HTTP request retry handler may not be null."

    #@57
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 209
    :cond_6
    if-nez p8, :cond_7

    #@5d
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5f
    .line 211
    const-string/jumbo v1, "Redirect handler may not be null."

    #@62
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    .line 213
    :cond_7
    if-nez p9, :cond_8

    #@68
    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6a
    .line 215
    const-string/jumbo v1, "Target authentication handler may not be null."

    #@6d
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 217
    :cond_8
    if-nez p10, :cond_9

    #@73
    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@75
    .line 219
    const-string/jumbo v1, "Proxy authentication handler may not be null."

    #@78
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0

    #@7c
    .line 221
    :cond_9
    if-nez p11, :cond_a

    #@7e
    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@80
    .line 223
    const-string/jumbo v1, "User token handler may not be null."

    #@83
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v0

    #@87
    .line 225
    :cond_a
    if-nez p12, :cond_b

    #@89
    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8b
    .line 227
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@8e
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@91
    throw v0

    #@92
    .line 229
    :cond_b
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    #@94
    .line 230
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@96
    .line 231
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@98
    .line 232
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    #@9a
    .line 233
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    #@9c
    .line 234
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    #@9e
    .line 235
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    #@a0
    .line 236
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    #@a2
    .line 237
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@a4
    .line 238
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@a6
    .line 239
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    #@a8
    .line 240
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@aa
    .line 242
    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@ac
    .line 244
    const/4 v0, 0x0

    #@ad
    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    #@af
    .line 245
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@b1
    const-string/jumbo v1, "http.protocol.max-redirects"

    #@b4
    const/16 v2, 0x64

    #@b6
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@b9
    move-result v0

    #@ba
    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    #@bc
    .line 246
    new-instance v0, Lorg/apache/http/auth/AuthState;

    #@be
    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    #@c1
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@c3
    .line 247
    new-instance v0, Lorg/apache/http/auth/AuthState;

    #@c5
    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    #@c8
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@ca
    .line 179
    return-void
.end method

.method private abortConnection()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1037
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@3
    .line 1038
    .local v2, "mcc":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v2, :cond_1

    #@5
    .line 1041
    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@7
    .line 1043
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1051
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@d
    .line 1036
    :cond_1
    :goto_1
    return-void

    #@e
    .line 1044
    :catch_0
    move-exception v0

    #@f
    .line 1045
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@11
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1046
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@19
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    goto :goto_0

    #@21
    .line 1052
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@22
    .line 1053
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@24
    const-string/jumbo v4, "Error releasing connection"

    #@27
    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2a
    goto :goto_1
.end method

.method private static isCleartextTrafficPermitted()Z
    .locals 8

    #@0
    .prologue
    .line 1147
    :try_start_0
    const-class v6, Lorg/apache/http/impl/client/DefaultRequestDirector;

    #@2
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1148
    :try_start_1
    sget-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 1149
    const-string/jumbo v5, "android.security.NetworkSecurityPolicy"

    #@a
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 1150
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getInstance"

    #@11
    const/4 v7, 0x0

    #@12
    new-array v7, v7, [Ljava/lang/Class;

    #@14
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v2

    #@18
    .line 1151
    .local v2, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    #@19
    new-array v5, v5, [Ljava/lang/Object;

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    sput-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    #@22
    .line 1152
    const-string/jumbo v5, "isCleartextTrafficPermitted"

    #@25
    const/4 v7, 0x0

    #@26
    new-array v7, v7, [Ljava/lang/Class;

    #@28
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2b
    move-result-object v5

    #@2c
    sput-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    #@2e
    .line 1154
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    #@30
    .line 1155
    .local v4, "policy":Ljava/lang/Object;
    sget-object v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_2
    monitor-exit v6

    #@33
    .line 1157
    const/4 v5, 0x0

    #@34
    new-array v5, v5, [Ljava/lang/Object;

    #@36
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Ljava/lang/Boolean;

    #@3c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@3f
    move-result v5

    #@40
    return v5

    #@41
    .line 1147
    .end local v2    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "policy":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    #@42
    monitor-exit v6

    #@43
    throw v5
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    #@44
    .line 1158
    :catch_0
    move-exception v1

    #@45
    .line 1162
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v5, 0x1

    #@46
    return v5
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p2, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p3, "authHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1067
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    #@3
    move-result-object v0

    #@4
    .line 1068
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-nez v0, :cond_0

    #@6
    .line 1070
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    #@9
    move-result-object v0

    #@a
    .line 1071
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    #@d
    .line 1073
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1075
    .local v2, "id":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/apache/http/Header;

    #@1d
    .line 1076
    .local v1, "challenge":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    #@1f
    .line 1077
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 1078
    const-string/jumbo v5, " authorization challenge expected, but not found"

    #@2d
    .line 1077
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 1080
    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    #@3c
    .line 1081
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@3e
    const-string/jumbo v4, "Authorization challenge processed"

    #@41
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@44
    .line 1065
    return-void
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 9
    .param p1, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    #@0
    .prologue
    .line 1090
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 1091
    return-void

    #@7
    .line 1094
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 1095
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    #@e
    move-result v4

    #@f
    .line 1096
    .local v4, "port":I
    if-gez v4, :cond_1

    #@11
    .line 1097
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@13
    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    #@1a
    move-result-object v5

    #@1b
    .line 1098
    .local v5, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    #@1e
    move-result v4

    #@1f
    .line 1101
    .end local v5    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    #@22
    move-result-object v0

    #@23
    .line 1102
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    #@25
    .line 1105
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    .line 1106
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 1102
    invoke-direct {v1, v3, v4, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@30
    .line 1108
    .local v1, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@32
    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 1109
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Authentication scope: "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@51
    .line 1111
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@54
    move-result-object v2

    #@55
    .line 1112
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_5

    #@57
    .line 1113
    invoke-interface {p3, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    #@5a
    move-result-object v2

    #@5b
    .line 1114
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@5d
    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_3

    #@63
    .line 1115
    if-eqz v2, :cond_4

    #@65
    .line 1116
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@67
    const-string/jumbo v7, "Found credentials"

    #@6a
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@6d
    .line 1127
    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    #@70
    .line 1128
    invoke-virtual {p1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    #@73
    .line 1088
    return-void

    #@74
    .line 1118
    .restart local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_4
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@76
    const-string/jumbo v7, "Credentials not found"

    #@79
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@7c
    goto :goto_0

    #@7d
    .line 1122
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_3

    #@83
    .line 1123
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@85
    const-string/jumbo v7, "Authentication failed"

    #@88
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@8b
    .line 1124
    const/4 v2, 0x0

    #@8c
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    goto :goto_0
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    #@6
    .line 255
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@8
    .line 254
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@b
    return-object v0

    #@c
    .line 257
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    #@e
    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    #@11
    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 10
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 879
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@3
    move-result-object v6

    #@4
    .line 881
    .local v6, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 882
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    #@b
    move-result v3

    #@c
    .line 883
    .local v3, "port":I
    if-gez v3, :cond_0

    #@e
    .line 884
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@10
    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@13
    move-result-object v8

    #@14
    .line 885
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    .line 884
    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    #@1b
    move-result-object v5

    #@1c
    .line 886
    .local v5, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    #@1f
    move-result v3

    #@20
    .line 889
    .end local v5    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@25
    move-result v8

    #@26
    add-int/lit8 v8, v8, 0x6

    #@28
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2b
    .line 890
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 891
    const/16 v8, 0x3a

    #@30
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 892
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 894
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 895
    .local v0, "authority":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@40
    invoke-static {v8}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    #@43
    move-result-object v7

    #@44
    .line 896
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v4, Lorg/apache/http/message/BasicHttpRequest;

    #@46
    .line 897
    const-string/jumbo v8, "CONNECT"

    #@49
    .line 896
    invoke-direct {v4, v8, v0, v7}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@4c
    .line 899
    .local v4, "req":Lorg/apache/http/HttpRequest;
    return-object v4
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 859
    const-string/jumbo v1, "Proxy chains are not supported."

    #@5
    .line 858
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 20
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 712
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    #@3
    move-result-object v17

    #@4
    .line 713
    .local v17, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@7
    move-result-object v19

    #@8
    .line 714
    .local v19, "target":Lorg/apache/http/HttpHost;
    const/4 v6, 0x0

    #@9
    .line 716
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v14, 0x0

    #@a
    .line 717
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .local v14, "done":Z
    :cond_0
    :goto_0
    if-nez v14, :cond_7

    #@c
    .line 719
    const/4 v14, 0x1

    #@d
    .line 721
    move-object/from16 v0, p0

    #@f
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@11
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 722
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@1f
    move-object/from16 v0, p1

    #@21
    move-object/from16 v1, p2

    #@23
    invoke-interface {v2, v0, v1, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@26
    .line 725
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    #@29
    move-result-object v11

    #@2a
    .line 727
    .local v11, "connect":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@2e
    invoke-static {v2}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 728
    .local v8, "agent":Ljava/lang/String;
    if-eqz v8, :cond_2

    #@34
    .line 729
    const-string/jumbo v2, "User-Agent"

    #@37
    invoke-interface {v11, v2, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 731
    :cond_2
    const-string/jumbo v2, "Host"

    #@3d
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-interface {v11, v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 733
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@48
    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    #@4b
    move-result-object v9

    #@4c
    .line 734
    .local v9, "authScheme":Lorg/apache/http/auth/AuthScheme;
    move-object/from16 v0, p0

    #@4e
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@50
    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    #@53
    move-result-object v10

    #@54
    .line 735
    .local v10, "authScope":Lorg/apache/http/auth/AuthScope;
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@58
    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@5b
    move-result-object v12

    #@5c
    .line 736
    .local v12, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v12, :cond_3

    #@5e
    .line 737
    if-nez v10, :cond_4

    #@60
    invoke-interface {v9}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_4

    #@66
    .line 748
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@6e
    move-object/from16 v0, p2

    #@70
    invoke-virtual {v2, v11, v4, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@73
    move-result-object v6

    #@74
    .line 750
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@77
    move-result-object v2

    #@78
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@7b
    move-result v18

    #@7c
    .line 751
    .local v18, "status":I
    const/16 v2, 0xc8

    #@7e
    move/from16 v0, v18

    #@80
    if-ge v0, v2, :cond_5

    #@82
    .line 752
    new-instance v2, Lorg/apache/http/HttpException;

    #@84
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "Unexpected response to CONNECT request: "

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    .line 753
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@93
    move-result-object v5

    #@94
    .line 752
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    invoke-direct {v2, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v2

    #@a0
    .line 739
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":I
    :cond_4
    :try_start_0
    invoke-interface {v9, v12, v11}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    #@a3
    move-result-object v2

    #@a4
    invoke-interface {v11, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    goto :goto_1

    #@a8
    .line 740
    :catch_0
    move-exception v16

    #@a9
    .line 741
    .local v16, "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@ad
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    #@b0
    move-result v2

    #@b1
    if-eqz v2, :cond_3

    #@b3
    .line 742
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@b7
    new-instance v4, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v5, "Proxy authentication error: "

    #@bf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v4

    #@cf
    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    #@d2
    goto :goto_1

    #@d3
    .line 757
    .end local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":I
    :cond_5
    const-string/jumbo v2, "http.auth.credentials-provider"

    #@d6
    move-object/from16 v0, p2

    #@d8
    invoke-interface {v0, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@db
    move-result-object v13

    #@dc
    .line 756
    check-cast v13, Lorg/apache/http/client/CredentialsProvider;

    #@de
    .line 759
    .local v13, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v13, :cond_0

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@e4
    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    #@e7
    move-result v2

    #@e8
    if-eqz v2, :cond_0

    #@ea
    .line 760
    move-object/from16 v0, p0

    #@ec
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-interface {v2, v6, v0}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@f3
    move-result v2

    #@f4
    if-eqz v2, :cond_a

    #@f6
    .line 762
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@fa
    const-string/jumbo v4, "Proxy requested authentication"

    #@fd
    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@100
    .line 763
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@104
    move-object/from16 v0, p2

    #@106
    invoke-interface {v2, v6, v0}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    #@109
    move-result-object v3

    #@10a
    .line 767
    .local v3, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@10c
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@112
    move-object/from16 v2, p0

    #@114
    move-object/from16 v7, p2

    #@116
    .line 766
    invoke-direct/range {v2 .. v7}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    #@119
    .line 775
    :cond_6
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@11d
    move-object/from16 v0, p0

    #@11f
    move-object/from16 v1, v17

    #@121
    invoke-direct {v0, v2, v1, v13}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    #@124
    .line 777
    move-object/from16 v0, p0

    #@126
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@128
    invoke-virtual {v2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@12b
    move-result-object v2

    #@12c
    if-eqz v2, :cond_0

    #@12e
    .line 778
    const/4 v14, 0x0

    #@12f
    .line 781
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@133
    move-object/from16 v0, p2

    #@135
    invoke-interface {v2, v6, v0}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@138
    move-result v2

    #@139
    if-eqz v2, :cond_9

    #@13b
    .line 782
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@13f
    const-string/jumbo v4, "Connection kept alive"

    #@142
    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@145
    .line 784
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@148
    move-result-object v15

    #@149
    .line 785
    .local v15, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_0

    #@14b
    .line 786
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@14e
    goto/16 :goto_0

    #@150
    .line 769
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v16

    #@151
    .line 770
    .restart local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@155
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@158
    move-result v2

    #@159
    if-eqz v2, :cond_6

    #@15b
    .line 771
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@15f
    new-instance v4, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v5, "Authentication error: "

    #@167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v4

    #@16b
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    #@16e
    move-result-object v5

    #@16f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v4

    #@173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v4

    #@177
    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@17a
    .line 801
    .end local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "agent":Ljava/lang/String;
    .end local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v16    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .end local v18    # "status":I
    :cond_7
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@17d
    move-result-object v2

    #@17e
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@181
    move-result v18

    #@182
    .line 803
    .restart local v18    # "status":I
    const/16 v2, 0x12b

    #@184
    move/from16 v0, v18

    #@186
    if-le v0, v2, :cond_b

    #@188
    .line 806
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@18b
    move-result-object v15

    #@18c
    .line 807
    .restart local v15    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_8

    #@18e
    .line 808
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    #@190
    invoke-direct {v2, v15}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    #@193
    invoke-interface {v6, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    #@196
    .line 811
    :cond_8
    move-object/from16 v0, p0

    #@198
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@19a
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    #@19d
    .line 812
    new-instance v2, Lorg/apache/http/impl/client/TunnelRefusedException;

    #@19f
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v5, "CONNECT refused by proxy: "

    #@1a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v4

    #@1ab
    .line 813
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@1ae
    move-result-object v5

    #@1af
    .line 812
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v4

    #@1b3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v4

    #@1b7
    invoke-direct {v2, v4, v6}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    #@1ba
    throw v2

    #@1bb
    .line 789
    .end local v15    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "agent":Ljava/lang/String;
    .restart local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v11    # "connect":Lorg/apache/http/HttpRequest;
    .restart local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :cond_9
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@1bf
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 796
    .end local v3    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_a
    move-object/from16 v0, p0

    #@1c6
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@1c8
    const/4 v4, 0x0

    #@1c9
    invoke-virtual {v2, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    #@1cc
    goto/16 :goto_0

    #@1ce
    .line 816
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "agent":Ljava/lang/String;
    .end local v9    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v10    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v11    # "connect":Lorg/apache/http/HttpRequest;
    .end local v12    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v13    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :cond_b
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@1d2
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    #@1d5
    .line 822
    const/4 v2, 0x0

    #@1d6
    return v2
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    if-nez p1, :cond_0

    #@2
    .line 587
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v4

    #@6
    .line 588
    const-string/jumbo v5, "http.default-host"

    #@9
    .line 587
    invoke-interface {v4, v5}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    .end local p1    # "target":Lorg/apache/http/HttpHost;
    check-cast p1, Lorg/apache/http/HttpHost;

    #@f
    .line 590
    .restart local p1    # "target":Lorg/apache/http/HttpHost;
    :cond_0
    if-nez p1, :cond_2

    #@11
    .line 593
    const/4 v2, 0x0

    #@12
    .line 594
    .local v2, "scheme":Ljava/lang/String;
    const/4 v0, 0x0

    #@13
    .line 595
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    #@14
    .line 597
    .local v1, "path":Ljava/lang/String;
    instance-of v4, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 598
    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    #@1a
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@1d
    move-result-object v3

    #@1e
    .local v3, "uri":Ljava/net/URI;
    if-eqz v3, :cond_1

    #@20
    .line 599
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 600
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 601
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 603
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "Target host must not be null, or set in parameters. scheme="

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 604
    const-string/jumbo v6, ", host="

    #@41
    .line 603
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 604
    const-string/jumbo v6, ", path="

    #@4c
    .line 603
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v4

    #@5c
    .line 608
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    :cond_2
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    #@5e
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    #@61
    move-result-object v4

    #@62
    return-object v4
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    new-instance v2, Lorg/apache/http/conn/routing/BasicRouteDirector;

    #@2
    invoke-direct {v2}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    #@5
    .line 636
    .local v2, "rowdy":Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_0
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@7
    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@a
    move-result-object v0

    #@b
    .line 637
    .local v0, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v2, p1, v0}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    #@e
    move-result v4

    #@f
    .line 639
    .local v4, "step":I
    packed-switch v4, :pswitch_data_0

    #@12
    .line 680
    new-instance v5, Ljava/lang/IllegalStateException;

    #@14
    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Unknown step indicator "

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    const-string/jumbo v7, " from RouteDirector."

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 680
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 643
    :pswitch_0
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@35
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@37
    invoke-interface {v5, p1, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@3a
    .line 684
    :goto_0
    :pswitch_1
    if-gtz v4, :cond_0

    #@3c
    .line 622
    return-void

    #@3d
    .line 647
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    #@40
    move-result v3

    #@41
    .line 648
    .local v3, "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@43
    const-string/jumbo v6, "Tunnel to target created."

    #@46
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@49
    .line 649
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@4b
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@4d
    invoke-interface {v5, v3, v6}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    #@50
    goto :goto_0

    #@51
    .line 657
    .end local v3    # "secure":Z
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    #@54
    move-result v5

    #@55
    add-int/lit8 v1, v5, -0x1

    #@57
    .line 658
    .local v1, "hop":I
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    #@5a
    move-result v3

    #@5b
    .line 659
    .restart local v3    # "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@5d
    const-string/jumbo v6, "Tunnel to proxy created."

    #@60
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@63
    .line 660
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@65
    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    #@68
    move-result-object v6

    #@69
    .line 661
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@6b
    .line 660
    invoke-interface {v5, v6, v3, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    #@6e
    goto :goto_0

    #@6f
    .line 666
    .end local v1    # "hop":I
    .end local v3    # "secure":Z
    :pswitch_4
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@71
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@73
    invoke-interface {v5, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@76
    goto :goto_0

    #@77
    .line 670
    :pswitch_5
    new-instance v5, Ljava/lang/IllegalStateException;

    #@79
    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v7, "Unable to establish route.\nplanned = "

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 673
    const-string/jumbo v7, "\ncurrent = "

    #@8c
    .line 671
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    .line 670
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v5

    #@9c
    .line 639
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 35
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    move-object/from16 v19, p2

    #@2
    .line 297
    .local v19, "orig":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    #@4
    move-object/from16 v1, v19

    #@6
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    #@9
    move-result-object v21

    #@a
    .line 298
    .local v21, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@e
    move-object/from16 v32, v0

    #@10
    move-object/from16 v0, v21

    #@12
    move-object/from16 v1, v32

    #@14
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@17
    .line 299
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, p1

    #@1b
    move-object/from16 v2, v21

    #@1d
    move-object/from16 v3, p3

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    #@22
    move-result-object v20

    #@23
    .line 301
    .local v20, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v26, Lorg/apache/http/impl/client/RoutedRequest;

    #@25
    move-object/from16 v0, v26

    #@27
    move-object/from16 v1, v21

    #@29
    move-object/from16 v2, v20

    #@2b
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@2e
    .line 303
    .local v26, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@32
    move-object/from16 v32, v0

    #@34
    invoke-static/range {v32 .. v32}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    #@37
    move-result-wide v28

    #@38
    .line 305
    .local v28, "timeout":J
    const/4 v14, 0x0

    #@39
    .line 307
    .local v14, "execCount":I
    const/16 v25, 0x0

    #@3b
    .line 308
    .local v25, "reuse":Z
    const/16 v23, 0x0

    #@3d
    .line 309
    .local v23, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    #@3e
    .line 311
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "reuse":Z
    .local v5, "done":Z
    :cond_0
    :goto_0
    if-nez v5, :cond_a

    #@40
    .line 317
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    #@43
    move-result-object v31

    #@44
    .line 318
    .local v31, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@47
    move-result-object v27

    #@48
    .line 321
    .local v27, "route":Lorg/apache/http/conn/routing/HttpRoute;
    const-string/jumbo v32, "http.user-token"

    #@4b
    move-object/from16 v0, p3

    #@4d
    move-object/from16 v1, v32

    #@4f
    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@52
    move-result-object v30

    #@53
    .line 324
    .local v30, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@57
    move-object/from16 v32, v0

    #@59
    if-nez v32, :cond_2

    #@5b
    .line 325
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    #@5f
    move-object/from16 v32, v0

    #@61
    move-object/from16 v0, v32

    #@63
    move-object/from16 v1, v27

    #@65
    move-object/from16 v2, v30

    #@67
    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    #@6a
    move-result-object v4

    #@6b
    .line 327
    .local v4, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 v0, v19

    #@6d
    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    #@6f
    move/from16 v32, v0

    #@71
    if-eqz v32, :cond_1

    #@73
    .line 328
    move-object/from16 v0, v19

    #@75
    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    #@77
    move-object/from16 v32, v0

    #@79
    move-object/from16 v0, v32

    #@7b
    invoke-interface {v0, v4}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    #@7e
    .line 332
    :cond_1
    :try_start_1
    sget-object v32, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@80
    move-wide/from16 v0, v28

    #@82
    move-object/from16 v2, v32

    #@84
    invoke-interface {v4, v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    #@87
    move-result-object v32

    #@88
    move-object/from16 v0, v32

    #@8a
    move-object/from16 v1, p0

    #@8c
    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    #@8e
    .line 339
    :try_start_2
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@92
    move-object/from16 v32, v0

    #@94
    invoke-static/range {v32 .. v32}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    #@97
    move-result v32

    #@98
    if-eqz v32, :cond_2

    #@9a
    .line 341
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@9e
    move-object/from16 v32, v0

    #@a0
    const-string/jumbo v33, "Stale connection check"

    #@a3
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@a6
    .line 342
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@aa
    move-object/from16 v32, v0

    #@ac
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    #@af
    move-result v32

    #@b0
    if-eqz v32, :cond_2

    #@b2
    .line 343
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@b6
    move-object/from16 v32, v0

    #@b8
    const-string/jumbo v33, "Stale connection detected"

    #@bb
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    #@be
    .line 346
    :try_start_3
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@c2
    move-object/from16 v32, v0

    #@c4
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    #@c7
    .line 360
    .end local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_2
    :goto_1
    :try_start_4
    move-object/from16 v0, v19

    #@c9
    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    #@cb
    move/from16 v32, v0

    #@cd
    if-eqz v32, :cond_3

    #@cf
    .line 361
    move-object/from16 v0, v19

    #@d1
    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    #@d3
    move-object/from16 v32, v0

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@d9
    move-object/from16 v33, v0

    #@db
    invoke-interface/range {v32 .. v33}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    #@de
    .line 365
    :cond_3
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@e2
    move-object/from16 v32, v0

    #@e4
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    #@e7
    move-result v32

    #@e8
    if-nez v32, :cond_8

    #@ea
    .line 366
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@ee
    move-object/from16 v32, v0

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@f4
    move-object/from16 v33, v0

    #@f6
    move-object/from16 v0, v32

    #@f8
    move-object/from16 v1, v27

    #@fa
    move-object/from16 v2, p3

    #@fc
    move-object/from16 v3, v33

    #@fe
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    #@101
    .line 376
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    #@103
    move-object/from16 v1, v27

    #@105
    move-object/from16 v2, p3

    #@107
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    #@10a
    .line 386
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    #@10d
    .line 389
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v31

    #@111
    move-object/from16 v2, v27

    #@113
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@116
    .line 392
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    #@119
    move-result-object v32

    #@11a
    .line 393
    const-string/jumbo v33, "http.virtual-host"

    #@11d
    .line 392
    invoke-interface/range {v32 .. v33}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@120
    move-result-object v32

    #@121
    move-object/from16 v0, v32

    #@123
    check-cast v0, Lorg/apache/http/HttpHost;

    #@125
    move-object/from16 p1, v0

    #@127
    .line 395
    if-nez p1, :cond_4

    #@129
    .line 396
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@12c
    move-result-object p1

    #@12d
    .line 399
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    #@130
    move-result-object v22

    #@131
    .line 402
    .local v22, "proxy":Lorg/apache/http/HttpHost;
    const-string/jumbo v32, "http.target_host"

    #@134
    move-object/from16 v0, p3

    #@136
    move-object/from16 v1, v32

    #@138
    move-object/from16 v2, p1

    #@13a
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@13d
    .line 404
    const-string/jumbo v32, "http.proxy_host"

    #@140
    move-object/from16 v0, p3

    #@142
    move-object/from16 v1, v32

    #@144
    move-object/from16 v2, v22

    #@146
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@149
    .line 406
    const-string/jumbo v32, "http.connection"

    #@14c
    .line 407
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@150
    move-object/from16 v33, v0

    #@152
    .line 406
    move-object/from16 v0, p3

    #@154
    move-object/from16 v1, v32

    #@156
    move-object/from16 v2, v33

    #@158
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@15b
    .line 408
    const-string/jumbo v32, "http.auth.target-scope"

    #@15e
    .line 409
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@162
    move-object/from16 v33, v0

    #@164
    .line 408
    move-object/from16 v0, p3

    #@166
    move-object/from16 v1, v32

    #@168
    move-object/from16 v2, v33

    #@16a
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@16d
    .line 410
    const-string/jumbo v32, "http.auth.proxy-scope"

    #@170
    .line 411
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@174
    move-object/from16 v33, v0

    #@176
    .line 410
    move-object/from16 v0, p3

    #@178
    move-object/from16 v1, v32

    #@17a
    move-object/from16 v2, v33

    #@17c
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@17f
    .line 414
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    #@183
    move-object/from16 v32, v0

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    #@189
    move-object/from16 v33, v0

    #@18b
    move-object/from16 v0, v32

    #@18d
    move-object/from16 v1, v31

    #@18f
    move-object/from16 v2, v33

    #@191
    move-object/from16 v3, p3

    #@193
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    #@196
    .line 416
    const-string/jumbo v32, "http.request"

    #@199
    move-object/from16 v0, p3

    #@19b
    move-object/from16 v1, v32

    #@19d
    move-object/from16 v2, v31

    #@19f
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a2
    .line 419
    const/16 v24, 0x1

    #@1a4
    .line 420
    .local v24, "retrying":Z
    :goto_3
    if-eqz v24, :cond_13

    #@1a6
    .line 422
    add-int/lit8 v14, v14, 0x1

    #@1a8
    .line 424
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    #@1ab
    .line 425
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    #@1ae
    move-result v32

    #@1af
    const/16 v33, 0x1

    #@1b1
    move/from16 v0, v32

    #@1b3
    move/from16 v1, v33

    #@1b5
    if-le v0, v1, :cond_5

    #@1b7
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    #@1ba
    move-result v32

    #@1bb
    if-eqz v32, :cond_d

    #@1bd
    .line 431
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@1c1
    move-object/from16 v32, v0

    #@1c3
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@1c6
    move-result v32

    #@1c7
    if-eqz v32, :cond_6

    #@1c9
    .line 432
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@1cd
    move-object/from16 v32, v0

    #@1cf
    new-instance v33, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v34, "Attempt "

    #@1d7
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v33

    #@1db
    move-object/from16 v0, v33

    #@1dd
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v33

    #@1e1
    const-string/jumbo v34, " to execute request"

    #@1e4
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v33

    #@1e8
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v33

    #@1ec
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@1ef
    .line 435
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    #@1f2
    move-result v32

    #@1f3
    if-nez v32, :cond_7

    #@1f5
    invoke-static {}, Lorg/apache/http/impl/client/DefaultRequestDirector;->isCleartextTrafficPermitted()Z

    #@1f8
    move-result v32

    #@1f9
    if-eqz v32, :cond_e

    #@1fb
    .line 440
    :cond_7
    move-object/from16 v0, p0

    #@1fd
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    #@1ff
    move-object/from16 v32, v0

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@205
    move-object/from16 v33, v0

    #@207
    move-object/from16 v0, v32

    #@209
    move-object/from16 v1, v31

    #@20b
    move-object/from16 v2, v33

    #@20d
    move-object/from16 v3, p3

    #@20f
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    #@212
    move-result-object v23

    #@213
    .line 441
    .local v23, "response":Lorg/apache/http/HttpResponse;
    const/16 v24, 0x0

    #@215
    goto :goto_3

    #@216
    .line 333
    .end local v22    # "proxy":Lorg/apache/http/HttpHost;
    .end local v23    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "retrying":Z
    .restart local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :catch_0
    move-exception v17

    #@217
    .line 334
    .local v17, "interrupted":Ljava/lang/InterruptedException;
    :try_start_8
    new-instance v18, Ljava/io/InterruptedIOException;

    #@219
    invoke-direct/range {v18 .. v18}, Ljava/io/InterruptedIOException;-><init>()V

    #@21c
    .line 335
    .local v18, "iox":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v18

    #@21e
    move-object/from16 v1, v17

    #@220
    invoke-virtual {v0, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@223
    .line 336
    throw v18
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    #@224
    .line 535
    .end local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v17    # "interrupted":Ljava/lang/InterruptedException;
    .end local v18    # "iox":Ljava/io/InterruptedIOException;
    .end local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1
    move-exception v12

    #@225
    .line 536
    .local v12, "ex":Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    #@228
    .line 537
    throw v12

    #@229
    .line 371
    .end local v12    # "ex":Lorg/apache/http/HttpException;
    .restart local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@22d
    move-object/from16 v32, v0

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@233
    move-object/from16 v33, v0

    #@235
    invoke-static/range {v33 .. v33}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    #@238
    move-result v33

    #@239
    invoke-interface/range {v32 .. v33}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    #@23c
    goto/16 :goto_2

    #@23e
    .line 538
    .end local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_2
    move-exception v10

    #@23f
    .line 539
    .local v10, "ex":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    #@242
    .line 540
    throw v10

    #@243
    .line 377
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_3
    move-exception v13

    #@244
    .line 378
    .local v13, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_a
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@248
    move-object/from16 v32, v0

    #@24a
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@24d
    move-result v32

    #@24e
    if-eqz v32, :cond_9

    #@250
    .line 379
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@254
    move-object/from16 v32, v0

    #@256
    invoke-virtual {v13}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    #@259
    move-result-object v33

    #@25a
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@25d
    .line 381
    :cond_9
    invoke-virtual {v13}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    #@260
    move-result-object v23

    #@261
    .line 520
    .end local v13    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_a
    if-eqz v23, :cond_b

    #@263
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@266
    move-result-object v32

    #@267
    if-nez v32, :cond_19

    #@269
    .line 523
    :cond_b
    if-eqz v25, :cond_c

    #@26b
    .line 524
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@26f
    move-object/from16 v32, v0

    #@271
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    #@274
    .line 525
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    #@277
    .line 533
    :goto_4
    return-object v23

    #@278
    .line 426
    .restart local v22    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v24    # "retrying":Z
    .restart local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_d
    new-instance v32, Lorg/apache/http/client/NonRepeatableRequestException;

    #@27a
    const-string/jumbo v33, "Cannot retry request with a non-repeatable request entity"

    #@27d
    invoke-direct/range {v32 .. v33}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    #@280
    throw v32
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    #@281
    .line 541
    .end local v22    # "proxy":Lorg/apache/http/HttpHost;
    .end local v24    # "retrying":Z
    .end local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_4
    move-exception v11

    #@282
    .line 542
    .local v11, "ex":Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    #@285
    .line 543
    throw v11

    #@286
    .line 436
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    .restart local v22    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v24    # "retrying":Z
    .restart local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_e
    :try_start_b
    new-instance v32, Ljava/io/IOException;

    #@288
    .line 437
    new-instance v33, Ljava/lang/StringBuilder;

    #@28a
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@28d
    const-string/jumbo v34, "Cleartext traffic not permitted: "

    #@290
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v33

    #@294
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@297
    move-result-object v34

    #@298
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v33

    #@29c
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29f
    move-result-object v33

    #@2a0
    .line 436
    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a3
    throw v32
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    #@2a4
    .line 443
    :catch_5
    move-exception v10

    #@2a5
    .line 444
    .restart local v10    # "ex":Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@2a9
    move-object/from16 v32, v0

    #@2ab
    const-string/jumbo v33, "Closing the connection."

    #@2ae
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@2b1
    .line 445
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@2b5
    move-object/from16 v32, v0

    #@2b7
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    #@2ba
    .line 446
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    #@2be
    move-object/from16 v32, v0

    #@2c0
    move-object/from16 v0, v32

    #@2c2
    move-object/from16 v1, p3

    #@2c4
    invoke-interface {v0, v10, v14, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    #@2c7
    move-result v32

    #@2c8
    if-eqz v32, :cond_11

    #@2ca
    .line 447
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@2ce
    move-object/from16 v32, v0

    #@2d0
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    #@2d3
    move-result v32

    #@2d4
    if-eqz v32, :cond_f

    #@2d6
    .line 448
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@2da
    move-object/from16 v32, v0

    #@2dc
    new-instance v33, Ljava/lang/StringBuilder;

    #@2de
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2e1
    const-string/jumbo v34, "I/O exception ("

    #@2e4
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v33

    #@2e8
    invoke-virtual {v10}, Ljava/io/IOException;->getClass()Ljava/lang/Class;

    #@2eb
    move-result-object v34

    #@2ec
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2ef
    move-result-object v34

    #@2f0
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v33

    #@2f4
    .line 449
    const-string/jumbo v34, ") caught when processing request: "

    #@2f7
    .line 448
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v33

    #@2fb
    .line 450
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2fe
    move-result-object v34

    #@2ff
    .line 448
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v33

    #@303
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@306
    move-result-object v33

    #@307
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@30a
    .line 452
    :cond_f
    move-object/from16 v0, p0

    #@30c
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@30e
    move-object/from16 v32, v0

    #@310
    invoke-interface/range {v32 .. v32}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@313
    move-result v32

    #@314
    if-eqz v32, :cond_10

    #@316
    .line 453
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@31a
    move-object/from16 v32, v0

    #@31c
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@31f
    move-result-object v33

    #@320
    move-object/from16 v0, v32

    #@322
    move-object/from16 v1, v33

    #@324
    invoke-interface {v0, v1, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@327
    .line 455
    :cond_10
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@32b
    move-object/from16 v32, v0

    #@32d
    const-string/jumbo v33, "Retrying request"

    #@330
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@333
    .line 462
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    #@336
    move-result v32

    #@337
    const/16 v33, 0x1

    #@339
    move/from16 v0, v32

    #@33b
    move/from16 v1, v33

    #@33d
    if-ne v0, v1, :cond_12

    #@33f
    .line 463
    move-object/from16 v0, p0

    #@341
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@343
    move-object/from16 v32, v0

    #@345
    const-string/jumbo v33, "Reopening the direct connection."

    #@348
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@34b
    .line 464
    move-object/from16 v0, p0

    #@34d
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@34f
    move-object/from16 v32, v0

    #@351
    move-object/from16 v0, p0

    #@353
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@355
    move-object/from16 v33, v0

    #@357
    move-object/from16 v0, v32

    #@359
    move-object/from16 v1, v27

    #@35b
    move-object/from16 v2, p3

    #@35d
    move-object/from16 v3, v33

    #@35f
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@362
    goto/16 :goto_3

    #@364
    .line 457
    :cond_11
    throw v10

    #@365
    .line 467
    :cond_12
    throw v10

    #@366
    .line 475
    .end local v10    # "ex":Ljava/io/IOException;
    :cond_13
    move-object/from16 v0, p0

    #@368
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    #@36a
    move-object/from16 v32, v0

    #@36c
    move-object/from16 v0, v23

    #@36e
    move-object/from16 v1, v32

    #@370
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@373
    .line 476
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    #@377
    move-object/from16 v32, v0

    #@379
    move-object/from16 v0, p0

    #@37b
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    #@37d
    move-object/from16 v33, v0

    #@37f
    move-object/from16 v0, v32

    #@381
    move-object/from16 v1, v23

    #@383
    move-object/from16 v2, v33

    #@385
    move-object/from16 v3, p3

    #@387
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    #@38a
    .line 480
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@38e
    move-object/from16 v32, v0

    #@390
    move-object/from16 v0, v32

    #@392
    move-object/from16 v1, v23

    #@394
    move-object/from16 v2, p3

    #@396
    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@399
    move-result v25

    #@39a
    .line 481
    .local v25, "reuse":Z
    if-eqz v25, :cond_14

    #@39c
    .line 483
    move-object/from16 v0, p0

    #@39e
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    #@3a0
    move-object/from16 v32, v0

    #@3a2
    move-object/from16 v0, v32

    #@3a4
    move-object/from16 v1, v23

    #@3a6
    move-object/from16 v2, p3

    #@3a8
    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    #@3ab
    move-result-wide v6

    #@3ac
    .line 484
    .local v6, "duration":J
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@3b0
    move-object/from16 v32, v0

    #@3b2
    sget-object v33, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@3b4
    move-object/from16 v0, v32

    #@3b6
    move-object/from16 v1, v33

    #@3b8
    invoke-interface {v0, v6, v7, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    #@3bb
    .line 487
    .end local v6    # "duration":J
    :cond_14
    move-object/from16 v0, p0

    #@3bd
    move-object/from16 v1, v26

    #@3bf
    move-object/from16 v2, v23

    #@3c1
    move-object/from16 v3, p3

    #@3c3
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    #@3c6
    move-result-object v15

    #@3c7
    .line 488
    .local v15, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v15, :cond_15

    #@3c9
    .line 489
    const/4 v5, 0x1

    #@3ca
    .line 511
    :goto_5
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    #@3ce
    move-object/from16 v32, v0

    #@3d0
    move-object/from16 v0, v32

    #@3d2
    move-object/from16 v1, p3

    #@3d4
    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@3d7
    move-result-object v30

    #@3d8
    .line 512
    const-string/jumbo v32, "http.user-token"

    #@3db
    move-object/from16 v0, p3

    #@3dd
    move-object/from16 v1, v32

    #@3df
    move-object/from16 v2, v30

    #@3e1
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@3e4
    .line 513
    move-object/from16 v0, p0

    #@3e6
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@3e8
    move-object/from16 v32, v0

    #@3ea
    if-eqz v32, :cond_0

    #@3ec
    .line 514
    move-object/from16 v0, p0

    #@3ee
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@3f0
    move-object/from16 v32, v0

    #@3f2
    move-object/from16 v0, v32

    #@3f4
    move-object/from16 v1, v30

    #@3f6
    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    #@3f9
    goto/16 :goto_0

    #@3fb
    .line 491
    :cond_15
    if-eqz v25, :cond_18

    #@3fd
    .line 492
    move-object/from16 v0, p0

    #@3ff
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@401
    move-object/from16 v32, v0

    #@403
    const-string/jumbo v33, "Connection kept alive"

    #@406
    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@409
    .line 494
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@40c
    move-result-object v8

    #@40d
    .line 495
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_16

    #@40f
    .line 496
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    #@412
    .line 500
    :cond_16
    move-object/from16 v0, p0

    #@414
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@416
    move-object/from16 v32, v0

    #@418
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    #@41b
    .line 505
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    :goto_6
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@41e
    move-result-object v32

    #@41f
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@422
    move-result-object v33

    #@423
    invoke-virtual/range {v32 .. v33}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    #@426
    move-result v32

    #@427
    if-nez v32, :cond_17

    #@429
    .line 506
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    #@42c
    .line 508
    :cond_17
    move-object/from16 v26, v15

    #@42e
    goto :goto_5

    #@42f
    .line 502
    :cond_18
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@433
    move-object/from16 v32, v0

    #@435
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    #@438
    goto :goto_6

    #@439
    .line 521
    .end local v15    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v22    # "proxy":Lorg/apache/http/HttpHost;
    .end local v24    # "retrying":Z
    .end local v25    # "reuse":Z
    .end local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v30    # "userToken":Ljava/lang/Object;
    .end local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_19
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@43c
    move-result-object v32

    #@43d
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    #@440
    move-result v32

    #@441
    if-eqz v32, :cond_b

    #@443
    .line 528
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@446
    move-result-object v8

    #@447
    .line 529
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v9, Lorg/apache/http/conn/BasicManagedEntity;

    #@449
    move-object/from16 v0, p0

    #@44b
    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@44d
    move-object/from16 v32, v0

    #@44f
    move-object/from16 v0, v32

    #@451
    move/from16 v1, v25

    #@453
    invoke-direct {v9, v8, v0, v1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    #@456
    .line 530
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v23

    #@458
    invoke-interface {v0, v9}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_c
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    #@45b
    goto/16 :goto_4

    #@45d
    .line 347
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v27    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v30    # "userToken":Ljava/lang/Object;
    .restart local v31    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_6
    move-exception v16

    #@45e
    .local v16, "ignored":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 23
    .param p1, "roureq"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 921
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@3
    move-result-object v19

    #@4
    .line 922
    .local v19, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    #@7
    move-result-object v16

    #@8
    .line 923
    .local v16, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    #@b
    move-result-object v18

    #@c
    .line 925
    .local v18, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    #@f
    move-result-object v15

    #@10
    .line 926
    .local v15, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v15}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 927
    move-object/from16 v0, p0

    #@18
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    #@1a
    move-object/from16 v0, p2

    #@1c
    move-object/from16 v1, p3

    #@1e
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@21
    move-result v3

    #@22
    .line 926
    if-eqz v3, :cond_2

    #@24
    .line 929
    move-object/from16 v0, p0

    #@26
    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    #@28
    move-object/from16 v0, p0

    #@2a
    iget v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    #@2c
    if-lt v3, v5, :cond_0

    #@2e
    .line 930
    new-instance v3, Lorg/apache/http/client/RedirectException;

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Maximum redirects ("

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 931
    move-object/from16 v0, p0

    #@3e
    iget v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    #@40
    .line 930
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 931
    const-string/jumbo v6, ") exceeded"

    #@47
    .line 930
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-direct {v3, v5}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 933
    :cond_0
    move-object/from16 v0, p0

    #@55
    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    #@57
    add-int/lit8 v3, v3, 0x1

    #@59
    move-object/from16 v0, p0

    #@5b
    iput v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    #@5d
    .line 935
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    #@61
    move-object/from16 v0, p2

    #@63
    move-object/from16 v1, p3

    #@65
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    #@68
    move-result-object v21

    #@69
    .line 937
    .local v21, "uri":Ljava/net/URI;
    new-instance v13, Lorg/apache/http/HttpHost;

    #@6b
    .line 938
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    .line 939
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPort()I

    #@72
    move-result v5

    #@73
    .line 940
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    .line 937
    invoke-direct {v13, v3, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@7a
    .line 942
    .local v13, "newTarget":Lorg/apache/http/HttpHost;
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    #@7c
    move-object/from16 v0, v17

    #@7e
    move-object/from16 v1, v21

    #@80
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    #@83
    .line 944
    .local v17, "redirect":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    #@86
    move-result-object v14

    #@87
    .line 945
    .local v14, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v14}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@8a
    move-result-object v3

    #@8b
    move-object/from16 v0, v17

    #@8d
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    #@90
    .line 947
    new-instance v22, Lorg/apache/http/impl/client/RequestWrapper;

    #@92
    move-object/from16 v0, v22

    #@94
    move-object/from16 v1, v17

    #@96
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    #@99
    .line 948
    .local v22, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, v22

    #@9b
    invoke-virtual {v0, v15}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@9e
    .line 950
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, v22

    #@a2
    move-object/from16 v2, p3

    #@a4
    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    #@a7
    move-result-object v12

    #@a8
    .line 951
    .local v12, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v11, Lorg/apache/http/impl/client/RoutedRequest;

    #@aa
    move-object/from16 v0, v22

    #@ac
    invoke-direct {v11, v0, v12}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@af
    .line 953
    .local v11, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@b3
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@b6
    move-result v3

    #@b7
    if-eqz v3, :cond_1

    #@b9
    .line 954
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@bd
    new-instance v5, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v6, "Redirecting to \'"

    #@c5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    move-object/from16 v0, v21

    #@cb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    const-string/jumbo v6, "\' via "

    #@d2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@e1
    .line 957
    :cond_1
    return-object v11

    #@e2
    .line 961
    .end local v11    # "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v12    # "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v13    # "newTarget":Lorg/apache/http/HttpHost;
    .end local v14    # "orig":Lorg/apache/http/HttpRequest;
    .end local v17    # "redirect":Lorg/apache/http/client/methods/HttpGet;
    .end local v21    # "uri":Ljava/net/URI;
    .end local v22    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_2
    const-string/jumbo v3, "http.auth.credentials-provider"

    #@e5
    move-object/from16 v0, p3

    #@e7
    invoke-interface {v0, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@ea
    move-result-object v9

    #@eb
    .line 960
    check-cast v9, Lorg/apache/http/client/CredentialsProvider;

    #@ed
    .line 963
    .local v9, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v9, :cond_a

    #@ef
    invoke-static {v15}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    #@f2
    move-result v3

    #@f3
    if-eqz v3, :cond_a

    #@f5
    .line 965
    move-object/from16 v0, p0

    #@f7
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@f9
    move-object/from16 v0, p2

    #@fb
    move-object/from16 v1, p3

    #@fd
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@100
    move-result v3

    #@101
    if-eqz v3, :cond_6

    #@103
    .line 968
    const-string/jumbo v3, "http.target_host"

    #@106
    move-object/from16 v0, p3

    #@108
    invoke-interface {v0, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@10b
    move-result-object v20

    #@10c
    .line 967
    check-cast v20, Lorg/apache/http/HttpHost;

    #@10e
    .line 969
    .local v20, "target":Lorg/apache/http/HttpHost;
    if-nez v20, :cond_3

    #@110
    .line 970
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@113
    move-result-object v20

    #@114
    .line 973
    :cond_3
    move-object/from16 v0, p0

    #@116
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@118
    const-string/jumbo v5, "Target requested authentication"

    #@11b
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@11e
    .line 974
    move-object/from16 v0, p0

    #@120
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@122
    move-object/from16 v0, p2

    #@124
    move-object/from16 v1, p3

    #@126
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    #@129
    move-result-object v4

    #@12a
    .line 978
    .local v4, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@12c
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@132
    move-object/from16 v3, p0

    #@134
    move-object/from16 v7, p2

    #@136
    move-object/from16 v8, p3

    #@138
    .line 977
    invoke-direct/range {v3 .. v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    #@13b
    .line 986
    :cond_4
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@13f
    move-object/from16 v0, p0

    #@141
    move-object/from16 v1, v20

    #@143
    invoke-direct {v0, v3, v1, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    #@146
    .line 988
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@14a
    invoke-virtual {v3}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@14d
    move-result-object v3

    #@14e
    if-eqz v3, :cond_5

    #@150
    .line 990
    return-object p1

    #@151
    .line 980
    :catch_0
    move-exception v10

    #@152
    .line 981
    .local v10, "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    #@154
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@156
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@159
    move-result v3

    #@15a
    if-eqz v3, :cond_4

    #@15c
    .line 982
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@160
    new-instance v5, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v6, "Authentication error: "

    #@168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v5

    #@16c
    invoke-virtual {v10}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    #@16f
    move-result-object v6

    #@170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v5

    #@174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v5

    #@178
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@17b
    .line 983
    const/4 v3, 0x0

    #@17c
    return-object v3

    #@17d
    .line 992
    .end local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_5
    const/4 v3, 0x0

    #@17e
    return-object v3

    #@17f
    .line 996
    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v20    # "target":Lorg/apache/http/HttpHost;
    :cond_6
    move-object/from16 v0, p0

    #@181
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    #@183
    const/4 v5, 0x0

    #@184
    invoke-virtual {v3, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    #@187
    .line 999
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@18b
    move-object/from16 v0, p2

    #@18d
    move-object/from16 v1, p3

    #@18f
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@192
    move-result v3

    #@193
    if-eqz v3, :cond_9

    #@195
    .line 1001
    move-object/from16 v0, p0

    #@197
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@199
    const-string/jumbo v5, "Proxy requested authentication"

    #@19c
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@19f
    .line 1002
    move-object/from16 v0, p0

    #@1a1
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    move-object/from16 v1, p3

    #@1a7
    invoke-interface {v3, v0, v1}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    #@1aa
    move-result-object v4

    #@1ab
    .line 1006
    .restart local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@1ad
    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    #@1b3
    move-object/from16 v3, p0

    #@1b5
    move-object/from16 v7, p2

    #@1b7
    move-object/from16 v8, p3

    #@1b9
    .line 1005
    invoke-direct/range {v3 .. v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    #@1bc
    .line 1014
    :cond_7
    move-object/from16 v0, p0

    #@1be
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move-object/from16 v1, v16

    #@1c4
    invoke-direct {v0, v3, v1, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    #@1c7
    .line 1016
    move-object/from16 v0, p0

    #@1c9
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@1cb
    invoke-virtual {v3}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    #@1ce
    move-result-object v3

    #@1cf
    if-eqz v3, :cond_8

    #@1d1
    .line 1018
    return-object p1

    #@1d2
    .line 1008
    :catch_1
    move-exception v10

    #@1d3
    .line 1009
    .restart local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    #@1d5
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@1d7
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@1da
    move-result v3

    #@1db
    if-eqz v3, :cond_7

    #@1dd
    .line 1010
    move-object/from16 v0, p0

    #@1df
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@1e1
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v6, "Authentication error: "

    #@1e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v5

    #@1ed
    invoke-virtual {v10}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    #@1f0
    move-result-object v6

    #@1f1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v5

    #@1f5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v5

    #@1f9
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@1fc
    .line 1011
    const/4 v3, 0x0

    #@1fd
    return-object v3

    #@1fe
    .line 1020
    .end local v10    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_8
    const/4 v3, 0x0

    #@1ff
    return-object v3

    #@200
    .line 1024
    .end local v4    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_9
    move-object/from16 v0, p0

    #@202
    iget-object v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    #@204
    const/4 v5, 0x0

    #@205
    invoke-virtual {v3, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    #@208
    .line 1027
    :cond_a
    const/4 v3, 0x0

    #@209
    return-object v3
.end method

.method protected releaseConnection()V
    .locals 3

    #@0
    .prologue
    .line 557
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@2
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 561
    :goto_0
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    #@8
    .line 552
    return-void

    #@9
    .line 558
    :catch_0
    move-exception v0

    #@a
    .line 559
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    #@c
    const-string/jumbo v2, "IOException releasing connection"

    #@f
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@12
    goto :goto_0
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    #@3
    move-result-object v2

    #@4
    .line 269
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 278
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 279
    const/4 v3, 0x0

    #@17
    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    #@1a
    move-result-object v2

    #@1b
    .line 280
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    #@1e
    .line 265
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 271
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_1

    #@25
    .line 272
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@28
    move-result-object v1

    #@29
    .line 273
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    #@2c
    move-result-object v2

    #@2d
    .line 274
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 284
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    #@32
    .line 285
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Invalid URI: "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 286
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    #@43
    move-result-object v5

    #@44
    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {v3, v4, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v3
.end method

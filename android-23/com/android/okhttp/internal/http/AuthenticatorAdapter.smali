.class public final Lcom/android/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/android/okhttp/Authenticator;


# static fields
.field public static final INSTANCE:Lcom/android/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 84
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/InetSocketAddress;

    #@10
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@13
    move-result-object v0

    #@14
    .line 83
    :goto_0
    return-object v0

    #@15
    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .locals 17
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    #@3
    move-result-object v12

    #@4
    .line 39
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@7
    move-result-object v15

    #@8
    .line 40
    .local v15, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v15}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@b
    move-result-object v8

    #@c
    .line 41
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    #@d
    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@10
    move-result v16

    #@11
    .local v16, "size":I
    :goto_0
    move/from16 v0, v16

    #@13
    if-ge v14, v0, :cond_2

    #@15
    .line 42
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v11

    #@19
    check-cast v11, Lcom/android/okhttp/Challenge;

    #@1b
    .line 43
    .local v11, "challenge":Lcom/android/okhttp/Challenge;
    const-string/jumbo v2, "Basic"

    #@1e
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 41
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 46
    :cond_1
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p1

    #@33
    invoke-direct {v0, v1, v8}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 47
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    sget-object v9, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@49
    .line 45
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@4c
    move-result-object v10

    #@4d
    .line 48
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    #@4f
    .line 50
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    new-instance v3, Ljava/lang/String;

    #@55
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@58
    move-result-object v4

    #@59
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    #@5c
    invoke-static {v2, v3}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v13

    #@60
    .line 51
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@63
    move-result-object v2

    #@64
    .line 52
    const-string/jumbo v3, "Authorization"

    #@67
    .line 51
    invoke-virtual {v2, v3, v13}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@6e
    move-result-object v2

    #@6f
    return-object v2

    #@70
    .line 55
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v13    # "credential":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@71
    return-object v2
.end method

.method public authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .locals 18
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    #@3
    move-result-object v12

    #@4
    .line 61
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@7
    move-result-object v16

    #@8
    .line 62
    .local v16, "request":Lcom/android/okhttp/Request;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@b
    move-result-object v8

    #@c
    .line 63
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    #@d
    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@10
    move-result v17

    #@11
    .local v17, "size":I
    :goto_0
    move/from16 v0, v17

    #@13
    if-ge v14, v0, :cond_2

    #@15
    .line 64
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v11

    #@19
    check-cast v11, Lcom/android/okhttp/Challenge;

    #@1b
    .line 65
    .local v11, "challenge":Lcom/android/okhttp/Challenge;
    const-string/jumbo v2, "Basic"

    #@1e
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 63
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 67
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@2e
    move-result-object v15

    #@2f
    check-cast v15, Ljava/net/InetSocketAddress;

    #@31
    .line 69
    .local v15, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    move-object/from16 v0, p0

    #@37
    move-object/from16 v1, p1

    #@39
    invoke-direct {v0, v1, v8}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    #@40
    move-result v4

    #@41
    .line 70
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v11}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    .line 71
    sget-object v9, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@4f
    .line 68
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@52
    move-result-object v10

    #@53
    .line 72
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    #@55
    .line 74
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    new-instance v3, Ljava/lang/String;

    #@5b
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    #@62
    invoke-static {v2, v3}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v13

    #@66
    .line 75
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@69
    move-result-object v2

    #@6a
    .line 76
    const-string/jumbo v3, "Proxy-Authorization"

    #@6d
    .line 75
    invoke-virtual {v2, v3, v13}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@74
    move-result-object v2

    #@75
    return-object v2

    #@76
    .line 79
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v13    # "credential":Ljava/lang/String;
    .end local v15    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_2
    const/4 v2, 0x0

    #@77
    return-object v2
.end method

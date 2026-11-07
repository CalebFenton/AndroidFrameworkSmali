.class public final Lcom/android/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/android/okhttp/Authenticator;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/okhttp/Authenticator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 85
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p0, v0, :cond_15

    .line 86
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 87
    :cond_15
    invoke-virtual {p2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_75

    .line 44
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/Challenge;

    .line 45
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Basic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    goto :goto_52

    .line 48
    :cond_2a
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    invoke-direct {v6, v15, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v13

    sget-object v14, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 47
    invoke-static/range {v7 .. v14}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v5

    if-nez v5, :cond_55

    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 52
    :cond_55
    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v2}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    return-object v0

    :cond_75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_7b

    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/Challenge;

    .line 67
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Basic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    move-object/from16 v15, p0

    goto :goto_58

    .line 69
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    .line 71
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    invoke-direct {v15, v8, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 72
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v13

    sget-object v14, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object v8, v9

    move v9, v6

    .line 70
    invoke-static/range {v7 .. v14}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v5

    if-nez v5, :cond_5b

    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 76
    :cond_5b
    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v2}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Proxy-Authorization"

    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    return-object v0

    :cond_7b
    const/4 v0, 0x0

    return-object v0
.end method

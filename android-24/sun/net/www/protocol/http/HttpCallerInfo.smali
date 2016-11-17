.class public final Lsun/net/www/protocol/http/HttpCallerInfo;
.super Ljava/lang/Object;
.source "HttpCallerInfo.java"


# instance fields
.field public final addr:Ljava/net/InetAddress;

.field public final authType:Ljava/net/Authenticator$RequestorType;

.field public final host:Ljava/lang/String;

.field public final port:I

.field public final prompt:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final scheme:Ljava/lang/String;

.field public final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    #@5
    .line 72
    const-string/jumbo v3, ""

    #@8
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    #@a
    .line 73
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    #@10
    .line 75
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@13
    move-result v2

    #@14
    .line 76
    .local v2, "p":I
    const/4 v3, -0x1

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 77
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    #@1a
    move-result v3

    #@1b
    iput v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    #@1d
    .line 84
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    .line 88
    :goto_1
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    #@27
    .line 90
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    #@2d
    .line 91
    sget-object v3, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@2f
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    #@31
    .line 92
    const-string/jumbo v3, ""

    #@34
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    #@36
    .line 70
    return-void

    #@37
    .line 79
    :cond_0
    iput v2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    #@39
    goto :goto_0

    #@3a
    .line 85
    :catch_0
    move-exception v0

    #@3b
    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@3c
    .local v1, "ia":Ljava/net/InetAddress;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    #@5
    .line 100
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    #@7
    .line 101
    iput p3, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    #@9
    .line 102
    const-string/jumbo v0, ""

    #@c
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    #@e
    .line 103
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    #@11
    .line 104
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    #@17
    .line 105
    sget-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@19
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    #@1b
    .line 106
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    #@20
    .line 98
    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "old"    # Lsun/net/www/protocol/http/HttpCallerInfo;
    .param p2, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    #@5
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    #@7
    .line 58
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    #@9
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    #@b
    .line 59
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    #@d
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->protocol:Ljava/lang/String;

    #@f
    .line 60
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    #@11
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->prompt:Ljava/lang/String;

    #@13
    .line 61
    iget v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    #@15
    iput v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->port:I

    #@17
    .line 62
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    #@19
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->addr:Ljava/net/InetAddress;

    #@1b
    .line 63
    iget-object v0, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    #@1d
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    #@1f
    .line 64
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    #@21
    .line 56
    return-void
.end method

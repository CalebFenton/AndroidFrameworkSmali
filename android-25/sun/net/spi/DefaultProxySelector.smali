.class public Lsun/net/spi/DefaultProxySelector;
.super Ljava/net/ProxySelector;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    }
.end annotation


# static fields
.field private static final SOCKS_PROXY_VERSION:Ljava/lang/String; = "socksProxyVersion"

.field private static hasSystemProxies:Z

.field static final props:[[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 75
    const/4 v0, 0x5

    #@6
    new-array v0, v0, [[Ljava/lang/String;

    #@8
    .line 79
    new-array v1, v7, [Ljava/lang/String;

    #@a
    const-string/jumbo v2, "http"

    #@d
    aput-object v2, v1, v3

    #@f
    const-string/jumbo v2, "http.proxy"

    #@12
    aput-object v2, v1, v4

    #@14
    const-string/jumbo v2, "proxy"

    #@17
    aput-object v2, v1, v5

    #@19
    const-string/jumbo v2, "socksProxy"

    #@1c
    aput-object v2, v1, v6

    #@1e
    aput-object v1, v0, v3

    #@20
    .line 80
    new-array v1, v7, [Ljava/lang/String;

    #@22
    const-string/jumbo v2, "https"

    #@25
    aput-object v2, v1, v3

    #@27
    const-string/jumbo v2, "https.proxy"

    #@2a
    aput-object v2, v1, v4

    #@2c
    const-string/jumbo v2, "proxy"

    #@2f
    aput-object v2, v1, v5

    #@31
    const-string/jumbo v2, "socksProxy"

    #@34
    aput-object v2, v1, v6

    #@36
    aput-object v1, v0, v4

    #@38
    .line 81
    const/4 v1, 0x5

    #@39
    new-array v1, v1, [Ljava/lang/String;

    #@3b
    const-string/jumbo v2, "ftp"

    #@3e
    aput-object v2, v1, v3

    #@40
    const-string/jumbo v2, "ftp.proxy"

    #@43
    aput-object v2, v1, v4

    #@45
    const-string/jumbo v2, "ftpProxy"

    #@48
    aput-object v2, v1, v5

    #@4a
    const-string/jumbo v2, "proxy"

    #@4d
    aput-object v2, v1, v6

    #@4f
    const-string/jumbo v2, "socksProxy"

    #@52
    aput-object v2, v1, v7

    #@54
    aput-object v1, v0, v5

    #@56
    .line 82
    new-array v1, v6, [Ljava/lang/String;

    #@58
    const-string/jumbo v2, "gopher"

    #@5b
    aput-object v2, v1, v3

    #@5d
    const-string/jumbo v2, "gopherProxy"

    #@60
    aput-object v2, v1, v4

    #@62
    const-string/jumbo v2, "socksProxy"

    #@65
    aput-object v2, v1, v5

    #@67
    aput-object v1, v0, v6

    #@69
    .line 83
    new-array v1, v5, [Ljava/lang/String;

    #@6b
    const-string/jumbo v2, "socket"

    #@6e
    aput-object v2, v1, v3

    #@70
    const-string/jumbo v2, "socksProxy"

    #@73
    aput-object v2, v1, v4

    #@75
    aput-object v1, v0, v7

    #@77
    .line 75
    sput-object v0, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    #@79
    .line 88
    sput-boolean v3, Lsun/net/spi/DefaultProxySelector;->hasSystemProxies:Z

    #@7b
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    #@3
    return-void
.end method

.method private defaultPort(Ljava/lang/String;)I
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x50

    #@2
    .line 313
    const-string/jumbo v0, "http"

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 314
    return v1

    #@c
    .line 315
    :cond_0
    const-string/jumbo v0, "https"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 316
    const/16 v0, 0x1bb

    #@17
    return v0

    #@18
    .line 317
    :cond_1
    const-string/jumbo v0, "ftp"

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 318
    return v1

    #@22
    .line 319
    :cond_2
    const-string/jumbo v0, "socket"

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 320
    const/16 v0, 0x438

    #@2d
    return v0

    #@2e
    .line 321
    :cond_3
    const-string/jumbo v0, "gopher"

    #@31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 322
    return v1

    #@38
    .line 324
    :cond_4
    const/4 v0, -0x1

    #@39
    return v0
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 305
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Arguments can\'t be null."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 305
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 304
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 13
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 128
    if-nez p1, :cond_0

    #@3
    .line 129
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v11, "URI can\'t be null."

    #@8
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v10

    #@c
    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    .line 132
    .local v7, "protocol":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 134
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_3

    #@16
    .line 142
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 143
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@1c
    .line 145
    const/16 v10, 0x40

    #@1e
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    #@21
    move-result v2

    #@22
    .line 146
    .local v2, "i":I
    if-ltz v2, :cond_1

    #@24
    .line 147
    add-int/lit8 v10, v2, 0x1

    #@26
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 149
    :cond_1
    const/16 v10, 0x3a

    #@2c
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    #@2f
    move-result v2

    #@30
    .line 150
    if-ltz v2, :cond_2

    #@32
    .line 151
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 153
    :cond_2
    move-object v1, v0

    #@37
    .line 157
    .end local v0    # "auth":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    if-eqz v7, :cond_4

    #@39
    if-nez v1, :cond_5

    #@3b
    .line 158
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v11, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v12, "protocol = "

    #@45
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v11

    #@49
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v11

    #@4d
    const-string/jumbo v12, " host = "

    #@50
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v10

    #@60
    .line 160
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    #@62
    const/4 v10, 0x1

    #@63
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@66
    .line 162
    .local v8, "proxyl":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v5, 0x0

    #@67
    .line 164
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    const-string/jumbo v10, "http"

    #@6a
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_7

    #@70
    .line 165
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@72
    .line 179
    .end local v5    # "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_6
    :goto_0
    move-object v6, v7

    #@73
    .line 180
    .local v6, "proto":Ljava/lang/String;
    move-object v3, v5

    #@74
    .line 181
    .local v3, "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    .line 190
    .local v9, "urlhost":Ljava/lang/String;
    new-instance v10, Lsun/net/spi/DefaultProxySelector$1;

    #@7a
    invoke-direct {v10, p0, v7, v3, v9}, Lsun/net/spi/DefaultProxySelector$1;-><init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V

    #@7d
    .line 189
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@80
    move-result-object v4

    #@81
    check-cast v4, Ljava/net/Proxy;

    #@83
    .line 295
    .local v4, "p":Ljava/net/Proxy;
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@86
    .line 301
    return-object v8

    #@87
    .line 166
    .end local v3    # "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v6    # "proto":Ljava/lang/String;
    .end local v9    # "urlhost":Ljava/lang/String;
    .restart local v5    # "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_7
    const-string/jumbo v10, "https"

    #@8a
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8d
    move-result v10

    #@8e
    if-eqz v10, :cond_8

    #@90
    .line 171
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@92
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    goto :goto_0

    #@93
    .line 172
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_8
    const-string/jumbo v10, "ftp"

    #@96
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_6

    #@9c
    .line 173
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    #@9e
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    goto :goto_0
.end method

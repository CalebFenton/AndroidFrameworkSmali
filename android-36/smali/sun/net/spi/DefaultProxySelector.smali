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
.field private static final blacklist SOCKS_PROXY_VERSION:Ljava/lang/String; = "socksProxyVersion"

.field private static blacklist hasSystemProxies:Z

.field static final blacklist props:[[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdefaultPort(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 76
    const/4 v0, 0x5

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "http"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "http.proxy"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v7, "proxy"

    aput-object v7, v3, v4

    const/4 v8, 0x3

    const-string v9, "socksProxy"

    aput-object v9, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "https"

    aput-object v10, v3, v5

    const-string v10, "https.proxy"

    aput-object v10, v3, v6

    aput-object v7, v3, v4

    aput-object v9, v3, v8

    aput-object v3, v1, v6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ftp"

    aput-object v3, v0, v5

    const-string v3, "ftp.proxy"

    aput-object v3, v0, v6

    const-string v3, "ftpProxy"

    aput-object v3, v0, v4

    aput-object v7, v0, v8

    aput-object v9, v0, v2

    aput-object v0, v1, v4

    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "gopher"

    aput-object v3, v0, v5

    const-string v3, "gopherProxy"

    aput-object v3, v0, v6

    aput-object v9, v0, v4

    aput-object v0, v1, v8

    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "socket"

    aput-object v3, v0, v5

    aput-object v9, v0, v6

    aput-object v0, v1, v2

    sput-object v1, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    .line 89
    sput-boolean v5, Lsun/net/spi/DefaultProxySelector;->hasSystemProxies:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private blacklist defaultPort(Ljava/lang/String;)I
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .line 346
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x50

    if-eqz v0, :cond_b

    .line 347
    return v1

    .line 348
    :cond_b
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 349
    const/16 v0, 0x1bb

    return v0

    .line 350
    :cond_16
    const-string v0, "ftp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 351
    return v1

    .line 352
    :cond_1f
    const-string v0, "socket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 353
    const/16 v0, 0x438

    return v0

    .line 354
    :cond_2a
    const-string v0, "gopher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 355
    return v1

    .line 357
    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist disjunctToRegex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "disjunct"    # Ljava/lang/String;

    .line 402
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ".*"

    if-eqz v1, :cond_25

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "regex":Ljava/lang/String;
    goto :goto_4f

    .line 404
    .end local v0    # "regex":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "regex":Ljava/lang/String;
    goto :goto_4f

    .line 407
    .end local v0    # "regex":Ljava/lang/String;
    :cond_4b
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0    # "regex":Ljava/lang/String;
    :goto_4f
    return-object v0
.end method

.method static blacklist shouldNotUseProxyFor(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "urlhost"    # Ljava/lang/String;

    .line 372
    if-eqz p0, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 374
    :cond_9
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 375
    .local v0, "matches":Z
    return v0

    .line 373
    .end local v0    # "matches":Z
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist toPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 8
    .param p0, "mask"    # Ljava/lang/String;

    .line 384
    const/4 v0, 0x1

    .line 385
    .local v0, "disjunctionEmpty":Z
    new-instance v1, Ljava/util/StringJoiner;

    const-string v2, "|"

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 386
    .local v1, "joiner":Ljava/util/StringJoiner;
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    .line 387
    .local v5, "disjunct":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 388
    goto :goto_27

    .line 389
    :cond_1b
    const/4 v0, 0x0

    .line 390
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/net/spi/DefaultProxySelector;->disjunctToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 386
    .end local v5    # "disjunct":Ljava/lang/String;
    .end local v6    # "regex":Ljava/lang/String;
    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 393
    :cond_2a
    if-eqz v0, :cond_2e

    const/4 v2, 0x0

    goto :goto_36

    :cond_2e
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_36
    return-object v2
.end method


# virtual methods
.method public whitelist test-api connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    .line 338
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 342
    return-void

    .line 339
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api select(Ljava/net/URI;)Ljava/util/List;
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_9c

    .line 158
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "protocol":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_2e

    .line 169
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "auth":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 172
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 173
    .local v3, "i":I
    if-ltz v3, :cond_20

    .line 174
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_20
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 177
    if-ltz v3, :cond_2d

    .line 178
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_2d
    move-object v1, v2

    .line 184
    .end local v2    # "auth":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2e
    if-eqz v0, :cond_79

    if-eqz v1, :cond_79

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v2, "proxyl":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v3, 0x0

    .line 191
    .local v3, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 192
    sget-object v3, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    goto :goto_64

    .line 193
    :cond_44
    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 198
    sget-object v3, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    goto :goto_64

    .line 199
    :cond_4f
    const-string v4, "ftp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 200
    sget-object v3, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    goto :goto_64

    .line 201
    :cond_5a
    const-string v4, "socket"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 202
    sget-object v3, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 208
    :cond_64
    :goto_64
    move-object v4, v0

    .line 209
    .local v4, "proto":Ljava/lang/String;
    move-object v5, v3

    .line 210
    .local v5, "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "urlhost":Ljava/lang/String;
    new-instance v7, Lsun/net/spi/DefaultProxySelector$1;

    invoke-direct {v7, p0, v4, v5, v6}, Lsun/net/spi/DefaultProxySelector$1;-><init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Proxy;

    .line 328
    .local v7, "p":Ljava/net/Proxy;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-object v2

    .line 185
    .end local v2    # "proxyl":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v3    # "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .end local v4    # "proto":Ljava/lang/String;
    .end local v5    # "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .end local v6    # "urlhost":Ljava/lang/String;
    .end local v7    # "p":Ljava/net/Proxy;
    :cond_79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " host = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v0    # "protocol":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

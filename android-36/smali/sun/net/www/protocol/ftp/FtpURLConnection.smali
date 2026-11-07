.class public Lsun/net/www/protocol/ftp/FtpURLConnection;
.super Lsun/net/www/URLConnection;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;,
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
    }
.end annotation


# static fields
.field static final blacklist ASCII:I = 0x1

.field static final blacklist BIN:I = 0x2

.field static final blacklist DIR:I = 0x3

.field static final blacklist NONE:I


# instance fields
.field private blacklist connectTimeout:I

.field blacklist filename:Ljava/lang/String;

.field blacklist ftp:Lsun/net/ftp/FtpClient;

.field blacklist fullpath:Ljava/lang/String;

.field blacklist host:Ljava/lang/String;

.field private blacklist instProxy:Ljava/net/Proxy;

.field blacklist is:Ljava/io/InputStream;

.field blacklist os:Ljava/io/OutputStream;

.field blacklist password:Ljava/lang/String;

.field blacklist pathname:Ljava/lang/String;

.field blacklist permission:Ljava/security/Permission;

.field blacklist port:I

.field private blacklist readTimeout:I

.field blacklist type:I

.field blacklist user:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    .line 172
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .registers 8
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 93
    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    .line 95
    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 115
    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 181
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    iput v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    .line 184
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "userInfo":Ljava/lang/String;
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 188
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleartext traffic not permitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v2

    if-ltz v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :cond_6d
    const-string v2, ""

    :goto_6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_7b
    if-eqz v3, :cond_a4

    .line 195
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 196
    .local v4, "delimiter":I
    if-ne v4, v2, :cond_8e

    .line 197
    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    goto :goto_a4

    .line 200
    :cond_8e
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "delimiter":I
    .local v0, "delimiter":I
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 204
    .end local v0    # "delimiter":I
    :cond_a4
    :goto_a4
    return-void
.end method

.method private blacklist cd(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 401
    :cond_9
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 402
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    .line 403
    return-void

    .line 406
    :cond_1c
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v0, "token":Ljava/util/StringTokenizer;
    :goto_23
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 408
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    goto :goto_23

    .line 410
    :cond_37
    return-void

    .line 399
    .end local v0    # "token":Ljava/util/StringTokenizer;
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist decodePath(Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .line 349
    const-string v0, ";type="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_38

    .line 351
    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "s1":Ljava/lang/String;
    const-string v4, "i"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 353
    const/4 v4, 0x2

    iput v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 355
    :cond_1f
    const-string v4, "a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 356
    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 358
    :cond_29
    const-string v4, "d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 359
    const/4 v4, 0x3

    iput v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 361
    :cond_34
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 363
    .end local v3    # "s1":Ljava/lang/String;
    :cond_38
    const/16 v3, 0x2f

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_4c

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_4c

    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 367
    :cond_4c
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_56

    .line 368
    :cond_54
    const-string p1, "./"

    .line 370
    :cond_56
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_89

    .line 371
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 372
    if-lez v0, :cond_80

    .line 373
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    goto :goto_96

    .line 377
    :cond_80
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 378
    iput-object v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    goto :goto_96

    .line 381
    :cond_89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 382
    iput-object v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 384
    :goto_96
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v1, :cond_bd

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    goto :goto_b2

    :cond_b0
    const-string v2, ""

    :goto_b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    goto :goto_c1

    .line 387
    :cond_bd
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    .line 389
    :goto_c1
    return-void
.end method

.method private blacklist setTimeouts()V
    .registers 3

    .line 207
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_1a

    .line 208
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v0, :cond_f

    .line 209
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setConnectTimeout(I)Lsun/net/ftp/FtpClient;

    .line 211
    :cond_f
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v0, :cond_1a

    .line 212
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setReadTimeout(I)Lsun/net/ftp/FtpClient;

    .line 215
    :cond_1a
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api connect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_118

    if-eqz v0, :cond_7

    .line 227
    monitor-exit p0

    return-void

    .line 230
    :cond_7
    const/4 v0, 0x0

    .line 231
    .local v0, "p":Ljava/net/Proxy;
    :try_start_8
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v1, :cond_73

    .line 235
    new-instance v1, Lsun/net/www/protocol/ftp/FtpURLConnection$1;

    invoke-direct {v1, p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ProxySelector;

    .line 241
    .local v1, "sel":Ljava/net/ProxySelector;
    if-eqz v1, :cond_72

    .line 242
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-static {v2}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v2

    .line 243
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 244
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    move-object v0, v4

    .line 246
    if-eqz v0, :cond_72

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v0, v4, :cond_72

    .line 247
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_43

    .line 248
    goto :goto_72

    .line 250
    :cond_43
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_63

    .line 251
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_54

    goto :goto_63

    .line 278
    :cond_54
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "FTP connections over HTTP proxy not supported"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v5}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 279
    goto :goto_27

    .line 252
    .end local p0    # "this":Lsun/net/www/protocol/ftp/FtpURLConnection;
    :cond_63
    :goto_63
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong proxy type"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v5}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 253
    goto :goto_27

    .line 283
    .end local v1    # "sel":Ljava/net/ProxySelector;
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :cond_72
    :goto_72
    goto :goto_76

    .line 284
    :cond_73
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    move-object v0, v1

    .line 308
    :goto_76
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    if-nez v1, :cond_b3

    .line 309
    const-string v1, "anonymous"

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 310
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "java.version"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "vers":Ljava/lang/String;
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string v3, "ftp.protocol.user"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Java"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_8 .. :try_end_b3} :catchall_118

    .line 317
    .end local v1    # "vers":Ljava/lang/String;
    :cond_b3
    :try_start_b3
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 318
    if-eqz v0, :cond_c0

    .line 319
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v1, v0}, Lsun/net/ftp/FtpClient;->setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;

    .line 321
    :cond_c0
    invoke-direct {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setTimeouts()V

    .line 322
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d7

    .line 323
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    iget v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;

    goto :goto_e7

    .line 325
    :cond_d7
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_e7
    .catch Ljava/net/UnknownHostException; {:try_start_b3 .. :try_end_e7} :catch_116
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_b3 .. :try_end_e7} :catch_10f
    .catchall {:try_start_b3 .. :try_end_e7} :catchall_118

    .line 333
    :goto_e7
    nop

    .line 335
    :try_start_e8
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    if-nez v3, :cond_f2

    const/4 v3, 0x0

    goto :goto_f8

    :cond_f2
    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_f8
    invoke-virtual {v1, v2, v3}, Lsun/net/ftp/FtpClient;->login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    :try_end_fb
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_e8 .. :try_end_fb} :catch_101
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_118

    .line 340
    nop

    .line 341
    const/4 v1, 0x1

    :try_start_fd
    iput-boolean v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_ff
    .catchall {:try_start_fd .. :try_end_ff} :catchall_118

    .line 342
    monitor-exit p0

    return-void

    .line 336
    :catch_101
    move-exception v1

    .line 337
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    :try_start_102
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v2}, Lsun/net/ftp/FtpClient;->close()V

    .line 339
    new-instance v2, Lsun/net/ftp/FtpLoginException;

    const-string v3, "Invalid username/password"

    invoke-direct {v2, v3}, Lsun/net/ftp/FtpLoginException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v1    # "e":Lsun/net/ftp/FtpProtocolException;
    :catch_10f
    move-exception v1

    .line 332
    .local v1, "fe":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 327
    .end local v1    # "fe":Lsun/net/ftp/FtpProtocolException;
    :catch_116
    move-exception v1

    .line 330
    .local v1, "e":Ljava/net/UnknownHostException;
    throw v1

    .line 225
    .end local v0    # "p":Ljava/net/Proxy;
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catchall_118
    move-exception v0

    monitor-exit p0
    :try_end_11a
    .catchall {:try_start_102 .. :try_end_11a} :catchall_118

    throw v0
.end method

.method public whitelist test-api getConnectTimeout()I
    .registers 2

    .line 667
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    :goto_8
    return v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const-string v0, "GET"

    const-string v1, "directory"

    const-string v2, "text/plain"

    const-string v3, "access-type"

    const-string v4, "content-type"

    iget-boolean v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v5, :cond_11

    .line 424
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 435
    :cond_11
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-nez v5, :cond_133

    .line 439
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v5, :cond_1c

    .line 440
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v0

    .line 443
    :cond_1c
    new-instance v5, Lsun/net/www/MessageHeader;

    invoke-direct {v5}, Lsun/net/www/MessageHeader;-><init>()V

    .line 445
    .local v5, "msgh":Lsun/net/www/MessageHeader;
    const/4 v6, 0x0

    .line 447
    .local v6, "isAdir":Z
    const/4 v7, 0x0

    :try_start_23
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 448
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v8, :cond_5d

    iget v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_36

    goto :goto_5d

    .line 457
    :cond_36
    iget v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_41

    .line 458
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    goto :goto_46

    .line 460
    :cond_41
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    .line 462
    :goto_46
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v8}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 463
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    iget-object v9, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    goto :goto_8c

    .line 449
    :cond_5d
    :goto_5d
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 450
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v8}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 451
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-nez v8, :cond_7b

    .line 452
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    iget-object v9, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v10, v7}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    goto :goto_8c

    .line 454
    :cond_7b
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    iget-object v9, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->nameList(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_8c} :catch_f9
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_23 .. :try_end_8c} :catch_f2

    .line 469
    :goto_8c
    :try_start_8c
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->getLastTransferSize()J

    move-result-wide v8

    .line 470
    .local v8, "l":J
    const-string v10, "content-length"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_c2

    .line 477
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v10

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10, v11, v0}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v10

    .line 478
    .local v10, "meteredInput":Z
    const/4 v11, 0x0

    .line 480
    .local v11, "pi":Lsun/net/ProgressSource;
    if-eqz v10, :cond_b9

    .line 481
    new-instance v12, Lsun/net/ProgressSource;

    iget-object v13, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-direct {v12, v13, v0, v8, v9}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    move-object v11, v12

    .line 482
    invoke-virtual {v11}, Lsun/net/ProgressSource;->beginTracking()V

    .line 485
    :cond_b9
    new-instance v0, Lsun/net/www/MeteredStream;

    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-direct {v0, v12, v11, v8, v9}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_c2} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_c2} :catch_f9
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_8c .. :try_end_c2} :catch_f2

    .line 491
    .end local v8    # "l":J
    .end local v10    # "meteredInput":Z
    .end local v11    # "pi":Lsun/net/ProgressSource;
    :cond_c2
    goto :goto_c7

    .line 487
    :catch_c3
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c7
    if-eqz v6, :cond_d0

    .line 494
    invoke-virtual {v5, v4, v2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v5, v3, v1}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 497
    :cond_d0
    const-string v0, "file"

    invoke-virtual {v5, v3, v0}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-static {v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "ftype":Ljava/lang/String;
    if-nez v0, :cond_ec

    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 500
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v8}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 502
    :cond_ec
    if-eqz v0, :cond_11a

    .line 503
    invoke-virtual {v5, v4, v0}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_c4 .. :try_end_f1} :catch_f9
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_c4 .. :try_end_f1} :catch_f2

    goto :goto_11a

    .line 522
    .end local v0    # "ftype":Ljava/lang/String;
    :catch_f2
    move-exception v0

    .line 523
    .local v0, "ftpe":Lsun/net/ftp/FtpProtocolException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 506
    .end local v0    # "ftpe":Lsun/net/ftp/FtpProtocolException;
    :catch_f9
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_fa
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {p0, v8}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 512
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 514
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    iget-object v9, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v10, v7}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v8, p0, v9, v7}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 515
    invoke-virtual {v5, v4, v2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v5, v3, v1}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_119} :catch_12a
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_fa .. :try_end_119} :catch_121

    .line 521
    nop

    .line 524
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_11a
    :goto_11a
    nop

    .line 525
    invoke-virtual {p0, v5}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 526
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v0

    .line 519
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_121
    move-exception v1

    .line 520
    .local v1, "ex2":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    .end local v1    # "ex2":Lsun/net/ftp/FtpProtocolException;
    :catch_12a
    move-exception v1

    .line 518
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "msgh":Lsun/net/www/MessageHeader;
    .end local v6    # "isAdir":Z
    :cond_133
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already opened for output"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-boolean v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 542
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 557
    :cond_7
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-nez v0, :cond_65

    .line 561
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_12

    .line 562
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v0

    .line 565
    :cond_12
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 570
    :try_start_27
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 571
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 573
    :cond_30
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 574
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    goto :goto_40

    .line 576
    :cond_3b
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    .line 578
    :goto_40
    new-instance v0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;

    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;
    :try_end_52
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_27 .. :try_end_52} :catch_56

    .line 581
    nop

    .line 582
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v0

    .line 579
    :catch_56
    move-exception v0

    .line 580
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 567
    .end local v0    # "e":Lsun/net/ftp/FtpProtocolException;
    :cond_5d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "illegal filename for a PUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already opened for input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 5

    .line 596
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    if-nez v0, :cond_34

    .line 597
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 598
    .local v0, "urlport":I
    if-gez v0, :cond_11

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v0

    .line 599
    .end local v0    # "urlport":I
    .local v1, "urlport":I
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "urlhost":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    .line 602
    .end local v0    # "urlhost":Ljava/lang/String;
    .end local v1    # "urlport":I
    :cond_34
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    return-object v0
.end method

.method public whitelist test-api getReadTimeout()I
    .registers 2

    .line 680
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    :goto_8
    return v0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 646
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_21

    .line 649
    const-string v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 650
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const-string v1, "a"

    goto :goto_20

    :cond_16
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    const-string v1, "d"

    goto :goto_20

    :cond_1e
    const-string v1, "i"

    :goto_20
    move-object v0, v1

    .line 654
    :cond_21
    return-object v0
.end method

.method blacklist guessContentTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fname"    # Ljava/lang/String;

    .line 586
    invoke-static {p1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 659
    if-ltz p1, :cond_5

    .line 662
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 663
    return-void

    .line 660
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setReadTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 672
    if-ltz p1, :cond_5

    .line 675
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 676
    return-void

    .line 673
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 617
    invoke-super {p0, p1, p2}, Lsun/net/www/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 619
    const-string v0, "i"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 620
    const/4 v0, 0x2

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_58

    .line 621
    :cond_17
    const-string v0, "a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 622
    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_58

    .line 623
    :cond_23
    const-string v0, "d"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 624
    const/4 v0, 0x3

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_58

    .line 626
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' request property was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' when it must be either \'i\', \'a\' or \'d\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_58
    :goto_58
    return-void
.end method

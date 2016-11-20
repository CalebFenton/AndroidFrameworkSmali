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
.field static final ASCII:I = 0x1

.field static final BIN:I = 0x2

.field static final DIR:I = 0x3

.field static final NONE:I


# instance fields
.field private connectTimeout:I

.field filename:Ljava/lang/String;

.field ftp:Lsun/net/ftp/FtpClient;

.field fullpath:Ljava/lang/String;

.field host:Ljava/lang/String;

.field http:Lsun/net/www/protocol/http/HttpURLConnection;

.field private instProxy:Ljava/net/Proxy;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field password:Ljava/lang/String;

.field pathname:Ljava/lang/String;

.field permission:Ljava/security/Permission;

.field port:I

.field private readTimeout:I

.field type:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@4
    .line 165
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 173
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    #@6
    .line 86
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@8
    .line 89
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@a
    .line 90
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    #@c
    .line 92
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@e
    .line 107
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@10
    .line 111
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@12
    .line 112
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@14
    .line 174
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    #@16
    .line 175
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    #@1c
    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@1f
    move-result v3

    #@20
    iput v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    #@22
    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 179
    .local v2, "userInfo":Ljava/lang/String;
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 181
    new-instance v4, Ljava/io/IOException;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Cleartext traffic not permitted: "

    #@3a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 182
    const-string/jumbo v5, "://"

    #@49
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 182
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    #@4f
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@56
    move-result v3

    #@57
    if-ltz v3, :cond_0

    #@59
    new-instance v3, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, ":"

    #@61
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@68
    move-result v6

    #@69
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    .line 181
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v4

    #@7d
    .line 183
    :cond_0
    const-string/jumbo v3, ""

    #@80
    goto :goto_0

    #@81
    .line 186
    :cond_1
    if-eqz v2, :cond_2

    #@83
    .line 187
    const/16 v3, 0x3a

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@88
    move-result v0

    #@89
    .line 188
    .local v0, "delimiter":I
    if-ne v0, v5, :cond_3

    #@8b
    .line 189
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    #@91
    .line 190
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    #@93
    .line 172
    .end local v0    # "delimiter":I
    :cond_2
    :goto_1
    return-void

    #@94
    .line 192
    .restart local v0    # "delimiter":I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    #@96
    .end local v0    # "delimiter":I
    .local v1, "delimiter":I
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    #@a0
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v3

    #@a8
    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    #@aa
    goto :goto_1
.end method

.method private cd(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 376
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 377
    :cond_0
    return-void

    #@9
    .line 379
    :cond_1
    const/16 v1, 0x2f

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v1

    #@f
    const/4 v2, -0x1

    #@10
    if-ne v1, v2, :cond_2

    #@12
    .line 380
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@14
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    #@1b
    .line 381
    return-void

    #@1c
    .line 384
    :cond_2
    new-instance v0, Ljava/util/StringTokenizer;

    #@1e
    const-string/jumbo v1, "/"

    #@21
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 385
    .local v0, "token":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 386
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@2c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    #@37
    goto :goto_0

    #@38
    .line 375
    :cond_3
    return-void
.end method

.method private decodePath(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 327
    const-string/jumbo v2, ";type="

    #@8
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 328
    .local v0, "i":I
    if-ltz v0, :cond_3

    #@e
    .line 329
    add-int/lit8 v2, v0, 0x6

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 330
    .local v1, "s1":Ljava/lang/String;
    const-string/jumbo v2, "i"

    #@1b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 331
    const/4 v2, 0x2

    #@22
    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@24
    .line 333
    :cond_0
    const-string/jumbo v2, "a"

    #@27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 334
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@2f
    .line 336
    :cond_1
    const-string/jumbo v2, "d"

    #@32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 337
    const/4 v2, 0x3

    #@39
    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@3b
    .line 339
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    .line 341
    .end local v1    # "s1":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    #@41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@44
    move-result v2

    #@45
    if-le v2, v6, :cond_4

    #@47
    .line 342
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v2

    #@4b
    if-ne v2, v7, :cond_4

    #@4d
    .line 343
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object p1

    #@51
    .line 345
    :cond_4
    if-eqz p1, :cond_5

    #@53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@56
    move-result v2

    #@57
    if-nez v2, :cond_6

    #@59
    .line 346
    :cond_5
    const-string/jumbo p1, "./"

    #@5c
    .line 348
    :cond_6
    const-string/jumbo v2, "/"

    #@5f
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_8

    #@65
    .line 349
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@68
    move-result v0

    #@69
    .line 350
    if-lez v0, :cond_7

    #@6b
    .line 351
    add-int/lit8 v2, v0, 0x1

    #@6d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@77
    .line 352
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@79
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@7f
    .line 353
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@85
    .line 362
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_a

    #@89
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    const-string/jumbo v3, "/"

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@9d
    if-eqz v2, :cond_9

    #@9f
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@a1
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@ab
    .line 326
    :goto_2
    return-void

    #@ac
    .line 355
    :cond_7
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@b2
    .line 356
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@b4
    goto :goto_0

    #@b5
    .line 359
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b8
    move-result v2

    #@b9
    add-int/lit8 v2, v2, -0x1

    #@bb
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@c1
    .line 360
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@c3
    goto :goto_0

    #@c4
    .line 363
    :cond_9
    const-string/jumbo v2, ""

    #@c7
    goto :goto_1

    #@c8
    .line 365
    :cond_a
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@ca
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@cc
    goto :goto_2
.end method

.method private setTimeouts()V
    .locals 2

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 200
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 201
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@a
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@c
    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setConnectTimeout(I)Lsun/net/ftp/FtpClient;

    #@f
    .line 203
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 204
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@15
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@17
    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setReadTimeout(I)Lsun/net/ftp/FtpClient;

    #@1a
    .line 198
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 218
    :try_start_0
    iget-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v10, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 219
    return-void

    #@7
    .line 222
    :cond_0
    const/4 v5, 0x0

    #@8
    .line 223
    .local v5, "p":Ljava/net/Proxy;
    :try_start_1
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    #@a
    if-nez v10, :cond_8

    #@c
    .line 228
    new-instance v10, Lsun/net/www/protocol/ftp/FtpURLConnection$1;

    #@e
    invoke-direct {v10, p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V

    #@11
    .line 227
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@14
    move-result-object v7

    #@15
    check-cast v7, Ljava/net/ProxySelector;

    #@17
    .line 233
    .local v7, "sel":Ljava/net/ProxySelector;
    if-eqz v7, :cond_1

    #@19
    .line 234
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1b
    invoke-static {v10}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@1e
    move-result-object v8

    #@1f
    .line 235
    .local v8, "uri":Ljava/net/URI;
    invoke-virtual {v7, v8}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@22
    move-result-object v10

    #@23
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v4

    #@27
    .line 236
    .end local v5    # "p":Ljava/net/Proxy;
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v10

    #@2b
    if-eqz v10, :cond_1

    #@2d
    .line 237
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/net/Proxy;

    #@33
    .line 238
    .local v5, "p":Ljava/net/Proxy;
    if-eqz v5, :cond_1

    #@35
    sget-object v10, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@37
    if-ne v5, v10, :cond_4

    #@39
    .line 286
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "p":Ljava/net/Proxy;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    :cond_1
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    #@3b
    if-nez v10, :cond_2

    #@3d
    .line 287
    const-string/jumbo v10, "anonymous"

    #@40
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    #@42
    .line 289
    new-instance v10, Lsun/security/action/GetPropertyAction;

    #@44
    const-string/jumbo v11, "java.version"

    #@47
    invoke-direct {v10, v11}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@4a
    .line 288
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@4d
    move-result-object v9

    #@4e
    check-cast v9, Ljava/lang/String;

    #@50
    .line 291
    .local v9, "vers":Ljava/lang/String;
    new-instance v10, Lsun/security/action/GetPropertyAction;

    #@52
    const-string/jumbo v11, "ftp.protocol.user"

    #@55
    .line 292
    new-instance v12, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v13, "Java"

    #@5d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v12

    #@65
    const-string/jumbo v13, "@"

    #@68
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v12

    #@6c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v12

    #@70
    .line 291
    invoke-direct {v10, v11, v12}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 290
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@76
    move-result-object v10

    #@77
    check-cast v10, Ljava/lang/String;

    #@79
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 295
    .end local v9    # "vers":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    #@7e
    move-result-object v10

    #@7f
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@81
    .line 296
    if-eqz v5, :cond_3

    #@83
    .line 297
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@85
    invoke-virtual {v10, v5}, Lsun/net/ftp/FtpClient;->setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;

    #@88
    .line 299
    :cond_3
    invoke-direct {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setTimeouts()V

    #@8b
    .line 300
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    #@8d
    const/4 v11, -0x1

    #@8e
    if-eq v10, v11, :cond_b

    #@90
    .line 301
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@92
    new-instance v11, Ljava/net/InetSocketAddress;

    #@94
    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    #@96
    iget v13, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    #@98
    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@9b
    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    .line 313
    :goto_1
    :try_start_3
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@a0
    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    #@a2
    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    #@a4
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    #@a7
    move-result-object v12

    #@a8
    invoke-virtual {v10, v11, v12}, Lsun/net/ftp/FtpClient;->login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    :try_end_3
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ab
    .line 319
    const/4 v10, 0x1

    #@ac
    :try_start_4
    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
    monitor-exit p0

    #@af
    .line 217
    return-void

    #@b0
    .line 239
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v5    # "p":Ljava/net/Proxy;
    .restart local v7    # "sel":Ljava/net/ProxySelector;
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@b3
    move-result-object v10

    #@b4
    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@b6
    if-eq v10, v11, :cond_1

    #@b8
    .line 242
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@bb
    move-result-object v10

    #@bc
    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@be
    if-ne v10, v11, :cond_7

    #@c0
    .line 243
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@c3
    move-result-object v10

    #@c4
    instance-of v10, v10, Ljava/net/InetSocketAddress;

    #@c6
    if-eqz v10, :cond_7

    #@c8
    .line 248
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@cb
    move-result-object v6

    #@cc
    check-cast v6, Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ce
    .line 250
    .local v6, "paddr":Ljava/net/InetSocketAddress;
    :try_start_6
    new-instance v10, Lsun/net/www/protocol/http/HttpURLConnection;

    #@d0
    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@d2
    invoke-direct {v10, v11, v5}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@d5
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@d7
    .line 251
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@d9
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    #@dc
    move-result v11

    #@dd
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@e0
    .line 252
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@e2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoOutput()Z

    #@e5
    move-result v11

    #@e6
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@e9
    .line 253
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@eb
    if-ltz v10, :cond_5

    #@ed
    .line 254
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@ef
    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@f1
    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    #@f4
    .line 256
    :cond_5
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@f6
    if-ltz v10, :cond_6

    #@f8
    .line 257
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@fa
    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@fc
    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    #@ff
    .line 259
    :cond_6
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@101
    invoke-virtual {v10}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@104
    .line 260
    const/4 v10, 0x1

    #@105
    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@107
    monitor-exit p0

    #@108
    .line 261
    return-void

    #@109
    .line 244
    .end local v6    # "paddr":Ljava/net/InetSocketAddress;
    :cond_7
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@10c
    move-result-object v10

    #@10d
    new-instance v11, Ljava/io/IOException;

    #@10f
    const-string/jumbo v12, "Wrong proxy type"

    #@112
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@115
    invoke-virtual {v7, v8, v10, v11}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@118
    goto/16 :goto_0

    #@11a
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "p":Ljava/net/Proxy;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v10

    #@11b
    monitor-exit p0

    #@11c
    throw v10

    #@11d
    .line 262
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v5    # "p":Ljava/net/Proxy;
    .restart local v6    # "paddr":Ljava/net/InetSocketAddress;
    .restart local v7    # "sel":Ljava/net/ProxySelector;
    .restart local v8    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    #@11e
    .line 263
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v7, v8, v6, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    #@121
    .line 264
    const/4 v10, 0x0

    #@122
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@124
    goto/16 :goto_0

    #@126
    .line 269
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v6    # "paddr":Ljava/net/InetSocketAddress;
    .end local v7    # "sel":Ljava/net/ProxySelector;
    .end local v8    # "uri":Ljava/net/URI;
    .local v5, "p":Ljava/net/Proxy;
    :cond_8
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    #@128
    .line 270
    .local v5, "p":Ljava/net/Proxy;
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@12b
    move-result-object v10

    #@12c
    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@12e
    if-ne v10, v11, :cond_1

    #@130
    .line 271
    new-instance v10, Lsun/net/www/protocol/http/HttpURLConnection;

    #@132
    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@134
    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    #@136
    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@139
    iput-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@13b
    .line 272
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@13d
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    #@140
    move-result v11

    #@141
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@144
    .line 273
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@146
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoOutput()Z

    #@149
    move-result v11

    #@14a
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@14d
    .line 274
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@14f
    if-ltz v10, :cond_9

    #@151
    .line 275
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@153
    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@155
    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    #@158
    .line 277
    :cond_9
    iget v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@15a
    if-ltz v10, :cond_a

    #@15c
    .line 278
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@15e
    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@160
    invoke-virtual {v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    #@163
    .line 280
    :cond_a
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@165
    invoke-virtual {v10}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@168
    .line 281
    const/4 v10, 0x1

    #@169
    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@16b
    monitor-exit p0

    #@16c
    .line 282
    return-void

    #@16d
    .line 303
    .end local v5    # "p":Ljava/net/Proxy;
    :cond_b
    :try_start_9
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@16f
    new-instance v11, Ljava/net/InetSocketAddress;

    #@171
    iget-object v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    #@173
    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    #@176
    move-result v13

    #@177
    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@17a
    invoke-virtual {v10, v11}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@17d
    goto/16 :goto_1

    #@17f
    .line 305
    :catch_1
    move-exception v0

    #@180
    .line 308
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_a
    throw v0

    #@181
    .line 309
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v2

    #@182
    .line 310
    .local v2, "fe":Lsun/net/ftp/FtpProtocolException;
    new-instance v10, Ljava/io/IOException;

    #@184
    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@187
    throw v10

    #@188
    .line 314
    .end local v2    # "fe":Lsun/net/ftp/FtpProtocolException;
    :catch_3
    move-exception v1

    #@189
    .line 315
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@18b
    invoke-virtual {v10}, Lsun/net/ftp/FtpClient;->close()V

    #@18e
    .line 317
    new-instance v10, Lsun/net/ftp/FtpLoginException;

    #@190
    const-string/jumbo v11, "Invalid username/password"

    #@193
    invoke-direct {v10, v11}, Lsun/net/ftp/FtpLoginException;-><init>(Ljava/lang/String;)V

    #@196
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public getConnectTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 637
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@8
    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    move-object/from16 v0, p0

    #@2
    iget-boolean v14, v0, Ljava/net/URLConnection;->connected:Z

    #@4
    if-nez v14, :cond_0

    #@6
    .line 402
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    #@9
    .line 405
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@d
    if-eqz v14, :cond_1

    #@f
    .line 406
    move-object/from16 v0, p0

    #@11
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@13
    invoke-virtual {v14}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@16
    move-result-object v14

    #@17
    return-object v14

    #@18
    .line 409
    :cond_1
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    #@1c
    if-eqz v14, :cond_2

    #@1e
    .line 410
    new-instance v14, Ljava/io/IOException;

    #@20
    const-string/jumbo v15, "Already opened for output"

    #@23
    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v14

    #@27
    .line 413
    :cond_2
    move-object/from16 v0, p0

    #@29
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@2b
    if-eqz v14, :cond_3

    #@2d
    .line 414
    move-object/from16 v0, p0

    #@2f
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@31
    return-object v14

    #@32
    .line 417
    :cond_3
    new-instance v12, Lsun/net/www/MessageHeader;

    #@34
    invoke-direct {v12}, Lsun/net/www/MessageHeader;-><init>()V

    #@37
    .line 419
    .local v12, "msgh":Lsun/net/www/MessageHeader;
    const/4 v8, 0x0

    #@38
    .line 421
    .local v8, "isAdir":Z
    :try_start_0
    move-object/from16 v0, p0

    #@3a
    iget-object v14, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3c
    invoke-virtual {v14}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@3f
    move-result-object v14

    #@40
    move-object/from16 v0, p0

    #@42
    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    #@45
    .line 422
    move-object/from16 v0, p0

    #@47
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@49
    if-eqz v14, :cond_4

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@4f
    const/4 v15, 0x3

    #@50
    if-ne v14, v15, :cond_9

    #@52
    .line 423
    :cond_4
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@56
    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    #@59
    .line 424
    move-object/from16 v0, p0

    #@5b
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@5d
    move-object/from16 v0, p0

    #@5f
    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    #@62
    .line 425
    move-object/from16 v0, p0

    #@64
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@66
    if-nez v14, :cond_8

    #@68
    .line 426
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@72
    move-object/from16 v16, v0

    #@74
    const/16 v17, 0x0

    #@76
    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    #@79
    move-result-object v16

    #@7a
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, v16

    #@7e
    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    #@85
    .line 443
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@89
    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->getLastTransferSize()J

    #@8c
    move-result-wide v10

    #@8d
    .line 444
    .local v10, "l":J
    const-string/jumbo v14, "content-length"

    #@90
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@93
    move-result-object v15

    #@94
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@97
    .line 445
    const-wide/16 v14, 0x0

    #@99
    cmp-long v14, v10, v14

    #@9b
    if-lez v14, :cond_6

    #@9d
    .line 451
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    #@a0
    move-result-object v14

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@a5
    const-string/jumbo v16, "GET"

    #@a8
    invoke-virtual/range {v14 .. v16}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    #@ab
    move-result v9

    #@ac
    .line 452
    .local v9, "meteredInput":Z
    const/4 v13, 0x0

    #@ad
    .line 454
    .local v13, "pi":Lsun/net/ProgressSource;
    if-eqz v9, :cond_5

    #@af
    .line 455
    new-instance v13, Lsun/net/ProgressSource;

    #@b1
    .end local v13    # "pi":Lsun/net/ProgressSource;
    move-object/from16 v0, p0

    #@b3
    iget-object v14, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@b5
    const-string/jumbo v15, "GET"

    #@b8
    invoke-direct {v13, v14, v15, v10, v11}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    #@bb
    .line 456
    .local v13, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v13}, Lsun/net/ProgressSource;->beginTracking()V

    #@be
    .line 459
    .end local v13    # "pi":Lsun/net/ProgressSource;
    :cond_5
    new-instance v14, Lsun/net/www/MeteredStream;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@c4
    invoke-direct {v14, v15, v13, v10, v11}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    #@cb
    .line 467
    .end local v9    # "meteredInput":Z
    .end local v10    # "l":J
    :cond_6
    :goto_1
    if-eqz v8, :cond_b

    #@cd
    .line 468
    :try_start_2
    const-string/jumbo v14, "content-type"

    #@d0
    const-string/jumbo v15, "text/plain"

    #@d3
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@d6
    .line 469
    const-string/jumbo v14, "access-type"

    #@d9
    const-string/jumbo v15, "directory"

    #@dc
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    #@df
    .line 499
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v12}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    #@e4
    .line 500
    move-object/from16 v0, p0

    #@e6
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@e8
    return-object v14

    #@e9
    .line 428
    :cond_8
    :try_start_3
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@f3
    move-object/from16 v16, v0

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@f9
    move-object/from16 v17, v0

    #@fb
    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->nameList(Ljava/lang/String;)Ljava/io/InputStream;

    #@fe
    move-result-object v16

    #@ff
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, v16

    #@103
    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    #@106
    move-object/from16 v0, p0

    #@108
    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    #@10a
    goto/16 :goto_0

    #@10c
    .line 480
    :catch_0
    move-exception v2

    #@10d
    .line 482
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    #@10f
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@111
    move-object/from16 v0, p0

    #@113
    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    #@116
    .line 486
    move-object/from16 v0, p0

    #@118
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@11a
    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    #@11d
    .line 488
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@127
    move-object/from16 v16, v0

    #@129
    const/16 v17, 0x0

    #@12b
    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    #@12e
    move-result-object v16

    #@12f
    move-object/from16 v0, p0

    #@131
    move-object/from16 v1, v16

    #@133
    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    #@136
    move-object/from16 v0, p0

    #@138
    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@13a
    .line 489
    const-string/jumbo v14, "content-type"

    #@13d
    const-string/jumbo v15, "text/plain"

    #@140
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@143
    .line 490
    const-string/jumbo v14, "access-type"

    #@146
    const-string/jumbo v15, "directory"

    #@149
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_4 .. :try_end_4} :catch_4

    #@14c
    goto :goto_2

    #@14d
    .line 491
    :catch_1
    move-exception v4

    #@14e
    .line 492
    .local v4, "ex":Ljava/io/IOException;
    new-instance v14, Ljava/io/FileNotFoundException;

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@154
    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@157
    throw v14

    #@158
    .line 431
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    #@15a
    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@15c
    const/4 v15, 0x1

    #@15d
    if-ne v14, v15, :cond_a

    #@15f
    .line 432
    move-object/from16 v0, p0

    #@161
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@163
    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    #@166
    .line 436
    :goto_3
    move-object/from16 v0, p0

    #@168
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@16a
    move-object/from16 v0, p0

    #@16c
    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    #@16f
    .line 437
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@175
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@179
    move-object/from16 v16, v0

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@17f
    move-object/from16 v17, v0

    #@181
    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@184
    move-result-object v16

    #@185
    move-object/from16 v0, p0

    #@187
    move-object/from16 v1, v16

    #@189
    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    #@18c
    move-object/from16 v0, p0

    #@18e
    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_5 .. :try_end_5} :catch_2

    #@190
    goto/16 :goto_0

    #@192
    .line 496
    :catch_2
    move-exception v6

    #@193
    .line 497
    .local v6, "ftpe":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/IOException;

    #@195
    invoke-direct {v14, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@198
    throw v14

    #@199
    .line 434
    .end local v6    # "ftpe":Lsun/net/ftp/FtpProtocolException;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    #@19b
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@19d
    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    #@1a0
    goto :goto_3

    #@1a1
    .line 461
    :catch_3
    move-exception v3

    #@1a2
    .line 462
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@1a5
    goto/16 :goto_1

    #@1a7
    .line 471
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v14, "access-type"

    #@1aa
    const-string/jumbo v15, "file"

    #@1ad
    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1b0
    .line 472
    move-object/from16 v0, p0

    #@1b2
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@1b4
    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@1b7
    move-result-object v7

    #@1b8
    .line 473
    .local v7, "ftype":Ljava/lang/String;
    if-nez v7, :cond_c

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@1be
    invoke-virtual {v14}, Ljava/io/InputStream;->markSupported()Z

    #@1c1
    move-result v14

    #@1c2
    if-eqz v14, :cond_c

    #@1c4
    .line 474
    move-object/from16 v0, p0

    #@1c6
    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@1c8
    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    #@1cb
    move-result-object v7

    #@1cc
    .line 476
    :cond_c
    if-eqz v7, :cond_7

    #@1ce
    .line 477
    const-string/jumbo v14, "content-type"

    #@1d1
    invoke-virtual {v12, v14, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_6 .. :try_end_6} :catch_2

    #@1d4
    goto/16 :goto_2

    #@1d6
    .line 493
    .end local v7    # "ftype":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    #@1d7
    .line 494
    .local v5, "ex2":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/FileNotFoundException;

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    #@1dd
    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@1e0
    throw v14
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
    iget-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 516
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    #@7
    .line 519
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 520
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@d
    invoke-virtual {v2}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@10
    move-result-object v1

    #@11
    .line 523
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->http:Lsun/net/www/protocol/http/HttpURLConnection;

    #@13
    invoke-virtual {v2}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@16
    .line 524
    return-object v1

    #@17
    .line 527
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 528
    new-instance v2, Ljava/io/IOException;

    #@1d
    const-string/jumbo v3, "Already opened for input"

    #@20
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 531
    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 532
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    #@2a
    return-object v2

    #@2b
    .line 535
    :cond_3
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@2d
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {p0, v2}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    #@34
    .line 536
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@36
    if-eqz v2, :cond_4

    #@38
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@3a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_5

    #@40
    .line 537
    :cond_4
    new-instance v2, Ljava/io/IOException;

    #@42
    const-string/jumbo v3, "illegal filename for a PUT"

    #@45
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2

    #@49
    .line 540
    :cond_5
    :try_start_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@4b
    if-eqz v2, :cond_6

    #@4d
    .line 541
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    #@4f
    invoke-direct {p0, v2}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    #@52
    .line 543
    :cond_6
    iget v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@54
    const/4 v3, 0x1

    #@55
    if-ne v2, v3, :cond_7

    #@57
    .line 544
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@59
    invoke-virtual {v2}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    #@5c
    .line 548
    :goto_0
    new-instance v2, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;

    #@5e
    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@60
    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@62
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    #@64
    const/4 v6, 0x0

    #@65
    invoke-virtual {v4, v5, v6}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    #@68
    move-result-object v4

    #@69
    invoke-direct {v2, p0, v3, v4}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V

    #@6c
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 552
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    #@70
    return-object v2

    #@71
    .line 546
    :cond_7
    :try_start_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    #@73
    invoke-virtual {v2}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    #@76
    goto :goto_0

    #@77
    .line 549
    :catch_0
    move-exception v0

    #@78
    .line 550
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/io/IOException;

    #@7a
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@7d
    throw v2
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4

    #@0
    .prologue
    .line 566
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 567
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@6
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    #@9
    move-result v1

    #@a
    .line 568
    .local v1, "urlport":I
    if-gez v1, :cond_0

    #@c
    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    #@f
    move-result v1

    #@10
    .line 569
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, ":"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 570
    .local v0, "urlhost":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    #@2c
    const-string/jumbo v3, "connect"

    #@2f
    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    #@34
    .line 572
    .end local v0    # "urlhost":Ljava/lang/String;
    .end local v1    # "urlport":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    #@36
    return-object v2
.end method

.method public getReadTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 650
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@8
    goto :goto_0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 616
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 618
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 619
    const-string/jumbo v1, "type"

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 620
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_1

    #@14
    const-string/jumbo v0, "a"

    #@17
    .line 624
    :cond_0
    :goto_0
    return-object v0

    #@18
    .line 620
    :cond_1
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@1a
    const/4 v2, 0x3

    #@1b
    if-ne v1, v2, :cond_2

    #@1d
    const-string/jumbo v0, "d"

    #@20
    goto :goto_0

    #@21
    :cond_2
    const-string/jumbo v0, "i"

    #@24
    goto :goto_0
.end method

.method guessContentTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 556
    invoke-static {p1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 629
    if-gez p1, :cond_0

    #@2
    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 632
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    #@d
    .line 628
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 642
    if-gez p1, :cond_0

    #@2
    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 645
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    #@d
    .line 641
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Lsun/net/www/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 588
    const-string/jumbo v0, "type"

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 589
    const-string/jumbo v0, "i"

    #@f
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 590
    const/4 v0, 0x2

    #@16
    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@18
    .line 586
    :cond_0
    :goto_0
    return-void

    #@19
    .line 591
    :cond_1
    const-string/jumbo v0, "a"

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 592
    const/4 v0, 0x1

    #@23
    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@25
    goto :goto_0

    #@26
    .line 593
    :cond_2
    const-string/jumbo v0, "d"

    #@29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 594
    const/4 v0, 0x3

    #@30
    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    #@32
    goto :goto_0

    #@33
    .line 596
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "Value of \'"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 598
    const-string/jumbo v2, "\' request property was \'"

    #@48
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 599
    const-string/jumbo v2, "\' when it must be either \'i\', \'a\' or \'d\'"

    #@53
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 596
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0
.end method

.class public Llibcore/net/url/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 108
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@5
    .line 88
    const-string/jumbo v3, "anonymous"

    #@8
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    #@a
    .line 90
    const-string/jumbo v3, ""

    #@d
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    #@f
    .line 109
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    #@15
    .line 110
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 112
    new-instance v4, Ljava/io/IOException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Cleartext traffic not permitted: "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 113
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 113
    const-string/jumbo v5, "://"

    #@34
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 113
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    #@3a
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 114
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@41
    move-result v3

    #@42
    if-ltz v3, :cond_0

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, ":"

    #@4c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@53
    move-result v6

    #@54
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 112
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 114
    :cond_0
    const-string/jumbo v3, ""

    #@6b
    goto :goto_0

    #@6c
    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 117
    .local v1, "parse":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@72
    .line 118
    const/16 v3, 0x3a

    #@74
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@77
    move-result v2

    #@78
    .line 119
    .local v2, "split":I
    if-ltz v2, :cond_3

    #@7a
    .line 120
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    #@80
    .line 121
    add-int/lit8 v3, v2, 0x1

    #@82
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    #@88
    .line 126
    .end local v2    # "split":I
    :cond_2
    :goto_1
    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    #@8a
    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    #@8d
    move-result-object v3

    #@8e
    iput-object v3, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 107
    :goto_2
    return-void

    #@91
    .line 123
    .restart local v2    # "split":I
    :cond_3
    iput-object v1, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    #@93
    goto :goto_1

    #@94
    .line 129
    .end local v2    # "split":I
    :catch_0
    move-exception v0

    #@95
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_2
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-direct {p0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 142
    iput-object p2, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    #@5
    .line 140
    return-void
.end method

.method private cd()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0xfa

    #@2
    const/16 v6, 0x2f

    #@4
    const/4 v5, 0x0

    #@5
    .line 149
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@7
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v1

    #@f
    .line 151
    .local v1, "idx":I
    if-lez v1, :cond_1

    #@11
    .line 152
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@13
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 153
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "CWD "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "\r\n"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@39
    .line 154
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@3c
    move-result v2

    #@3d
    .line 155
    .local v2, "reply":I
    if-eq v2, v7, :cond_0

    #@3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@42
    move-result v3

    #@43
    if-lez v3, :cond_0

    #@45
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v3

    #@49
    if-ne v3, v6, :cond_0

    #@4b
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "CWD "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    const/4 v4, 0x1

    #@58
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    const-string/jumbo v4, "\r\n"

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@6e
    .line 157
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@71
    move-result v2

    #@72
    .line 159
    :cond_0
    if-eq v2, v7, :cond_1

    #@74
    .line 160
    new-instance v3, Ljava/io/IOException;

    #@76
    const-string/jumbo v4, "Unable to change directories"

    #@79
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v3

    #@7d
    .line 148
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "reply":I
    :cond_1
    return-void
.end method

.method private connectInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    #@5
    move-result v3

    #@6
    .line 217
    .local v3, "port":I
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    #@9
    move-result v1

    #@a
    .line 218
    .local v1, "connectTimeout":I
    if-gtz v3, :cond_0

    #@c
    .line 219
    const/16 v3, 0x15

    #@e
    .line 221
    :cond_0
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@10
    if-eqz v4, :cond_1

    #@12
    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@14
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@16
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@19
    move-result-object v5

    #@1a
    if-ne v4, v5, :cond_5

    #@1c
    .line 222
    :cond_1
    new-instance v4, Ljava/net/Socket;

    #@1e
    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    #@21
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@23
    .line 226
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@25
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    #@27
    invoke-direct {v0, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 227
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@2c
    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@2f
    .line 228
    const/4 v4, 0x1

    #@30
    iput-boolean v4, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    #@32
    .line 229
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@34
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    #@3a
    .line 230
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@3c
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@3f
    move-result-object v4

    #@40
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    #@42
    .line 231
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->login()V

    #@45
    .line 232
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->setType()V

    #@48
    .line 233
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    #@4b
    move-result v4

    #@4c
    if-nez v4, :cond_2

    #@4e
    .line 234
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->cd()V

    #@51
    .line 238
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    #@53
    const/4 v5, 0x0

    #@54
    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    #@57
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    #@59
    .line 239
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    #@5b
    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    #@5e
    move-result v4

    #@5f
    iput v4, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    #@61
    .line 241
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->port()V

    #@64
    .line 242
    if-nez v1, :cond_3

    #@66
    .line 244
    const/16 v1, 0xbb8

    #@68
    .line 246
    :cond_3
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    #@6a
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    #@6d
    move-result v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    #@71
    .line 247
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_6

    #@77
    .line 248
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getFile()V

    #@7a
    .line 252
    :goto_1
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    #@7c
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@7f
    move-result-object v4

    #@80
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    #@82
    .line 253
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    #@84
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    #@87
    move-result v5

    #@88
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    #@8b
    .line 254
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    #@8d
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 258
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    #@93
    move-result v4

    #@94
    if-eqz v4, :cond_4

    #@96
    .line 259
    new-instance v4, Llibcore/net/url/FtpURLInputStream;

    #@98
    .line 260
    new-instance v5, Ljava/io/BufferedInputStream;

    #@9a
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    #@9c
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@9f
    move-result-object v6

    #@a0
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@a3
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@a5
    .line 259
    invoke-direct {v4, v5, v6}, Llibcore/net/url/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    #@a8
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    #@aa
    .line 215
    :cond_4
    return-void

    #@ab
    .line 224
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_5
    new-instance v4, Ljava/net/Socket;

    #@ad
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@af
    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@b2
    iput-object v4, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@b4
    goto/16 :goto_0

    #@b6
    .line 250
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_6
    :try_start_1
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->sendFile()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    #@b9
    goto :goto_1

    #@ba
    .line 255
    :catch_0
    move-exception v2

    #@bb
    .line 256
    .local v2, "e":Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/io/IOException;

    #@bd
    const-string/jumbo v5, "Could not establish data connection"

    #@c0
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v4
.end method

.method private getFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 279
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@3
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 280
    .local v0, "file":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "RETR "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "\r\n"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@25
    .line 281
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@28
    move-result v1

    #@29
    .line 282
    .local v1, "reply":I
    const/16 v2, 0x226

    #@2b
    if-ne v1, v2, :cond_0

    #@2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    if-lez v2, :cond_0

    #@33
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v2

    #@37
    const/16 v3, 0x2f

    #@39
    if-ne v2, v3, :cond_0

    #@3b
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "RETR "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const/4 v3, 0x1

    #@48
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, "\r\n"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@5e
    .line 284
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@61
    move-result v1

    #@62
    .line 286
    :cond_0
    const/16 v2, 0x96

    #@64
    if-eq v1, v2, :cond_1

    #@66
    const/16 v2, 0xe2

    #@68
    if-eq v1, v2, :cond_1

    #@6a
    .line 287
    new-instance v2, Ljava/io/FileNotFoundException;

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v4, "Unable to retrieve file: "

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2

    #@84
    .line 277
    :cond_1
    return-void
.end method

.method private getReply()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    const/4 v5, 0x3

    #@1
    new-array v0, v5, [B

    #@3
    .line 353
    .local v0, "code":[B
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@5
    if-ge v2, v5, :cond_1

    #@7
    .line 354
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    #@9
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    #@c
    move-result v4

    #@d
    .line 355
    .local v4, "tmp":I
    const/4 v5, -0x1

    #@e
    if-ne v4, v5, :cond_0

    #@10
    .line 356
    new-instance v5, Ljava/io/EOFException;

    #@12
    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v5

    #@16
    .line 358
    :cond_0
    int-to-byte v5, v4

    #@17
    aput-byte v5, v0, v2

    #@19
    .line 353
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 360
    .end local v4    # "tmp":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    #@1e
    array-length v6, v0

    #@1f
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@21
    const/4 v8, 0x0

    #@22
    invoke-direct {v5, v0, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@25
    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    #@27
    .line 362
    const/4 v3, 0x0

    #@28
    .line 363
    .local v3, "multiline":Z
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    #@2a
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    #@2d
    move-result v5

    #@2e
    const/16 v6, 0x2d

    #@30
    if-ne v5, v6, :cond_2

    #@32
    .line 364
    const/4 v3, 0x1

    #@33
    .line 366
    :cond_2
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    #@36
    .line 367
    if-eqz v3, :cond_4

    #@38
    .line 368
    :cond_3
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readMultiLine()Z

    #@3b
    move-result v5

    #@3c
    if-nez v5, :cond_3

    #@3e
    .line 373
    :cond_4
    :try_start_0
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result v5

    #@44
    return v5

    #@45
    .line 374
    :catch_0
    move-exception v1

    #@46
    .line 375
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    #@48
    const-string/jumbo v6, "reply code is invalid"

    #@4b
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Ljava/io/IOException;

    #@54
    throw v5
.end method

.method private login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x14b

    #@2
    const/16 v4, 0xe6

    #@4
    const/16 v3, 0xdc

    #@6
    .line 381
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@9
    move-result v0

    #@a
    .line 382
    .local v0, "reply":I
    if-ne v0, v3, :cond_1

    #@c
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "USER "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "\r\n"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@2c
    .line 387
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@2f
    move-result v0

    #@30
    .line 388
    if-eq v0, v5, :cond_0

    #@32
    if-ne v0, v4, :cond_2

    #@34
    .line 392
    :cond_0
    if-ne v0, v5, :cond_3

    #@36
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "PASS "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, "\r\n"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@56
    .line 394
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@59
    move-result v0

    #@5a
    .line 395
    const/16 v1, 0xc8

    #@5c
    if-eq v0, v1, :cond_3

    #@5e
    if-eq v0, v3, :cond_3

    #@60
    if-eq v0, v4, :cond_3

    #@62
    .line 396
    new-instance v1, Ljava/io/IOException;

    #@64
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "Unable to log in to server (PASS): "

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@72
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@81
    throw v1

    #@82
    .line 384
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@84
    new-instance v2, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v3, "Unable to connect to server: "

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@92
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v1

    #@a2
    .line 390
    :cond_2
    new-instance v1, Ljava/io/IOException;

    #@a4
    new-instance v2, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v3, "Unable to log in to server (USER): "

    #@ac
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v2

    #@b0
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@b2
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v1

    #@c2
    .line 379
    :cond_3
    return-void
.end method

.method private port()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x2c

    #@2
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "PORT "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 403
    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    #@10
    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    const/16 v2, 0x2e

    #@1a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 404
    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    #@28
    shr-int/lit8 v1, v1, 0x8

    #@2a
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 405
    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    #@34
    and-int/lit16 v1, v1, 0xff

    #@36
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 406
    const-string/jumbo v1, "\r\n"

    #@3d
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@48
    .line 407
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@4b
    move-result v0

    #@4c
    const/16 v1, 0xc8

    #@4e
    if-eq v0, v1, :cond_0

    #@50
    .line 408
    new-instance v0, Ljava/io/IOException;

    #@52
    const-string/jumbo v1, "Unable to configure data port"

    #@55
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v0

    #@59
    .line 401
    :cond_0
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 418
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    #@7
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@a
    move-result v0

    #@b
    .local v0, "c":I
    const/16 v2, 0xa

    #@d
    if-eq v0, v2, :cond_0

    #@f
    .line 419
    int-to-char v2, v0

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    goto :goto_0

    #@14
    .line 421
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2
.end method

.method private readMultiLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 425
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 426
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x4

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 427
    return v4

    #@f
    .line 429
    :cond_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 430
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x20

    #@21
    if-ne v1, v2, :cond_1

    #@23
    .line 431
    return v3

    #@24
    .line 433
    :cond_1
    return v4
.end method

.method private sendFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "STOR "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 442
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@e
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@14
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/16 v4, 0x2f

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@1d
    move-result v3

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    .line 443
    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@22
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@29
    move-result v4

    #@2a
    .line 442
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 443
    const-string/jumbo v2, "\r\n"

    #@35
    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@40
    .line 444
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@43
    move-result v0

    #@44
    .line 445
    .local v0, "reply":I
    const/16 v1, 0x96

    #@46
    if-eq v0, v1, :cond_0

    #@48
    const/16 v1, 0xc8

    #@4a
    if-eq v0, v1, :cond_0

    #@4c
    const/16 v1, 0x7d

    #@4e
    if-eq v0, v1, :cond_0

    #@50
    .line 446
    new-instance v1, Ljava/io/IOException;

    #@52
    const-string/jumbo v2, "Unable to store file"

    #@55
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 439
    :cond_0
    return-void
.end method

.method private setType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    const-string/jumbo v0, "TYPE I\r\n"

    #@3
    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    #@6
    .line 501
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    #@9
    move-result v0

    #@a
    const/16 v1, 0xc8

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 502
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "Unable to set transfer type"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 499
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    #@2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@b
    .line 506
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 177
    const/4 v4, 0x0

    #@2
    .line 178
    .local v4, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    #@4
    if-eqz v6, :cond_2

    #@6
    .line 179
    new-instance v4, Ljava/util/ArrayList;

    #@8
    .end local v4    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v6, 0x1

    #@9
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 180
    .local v4, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    #@e
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 187
    .end local v4    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    #@13
    .line 188
    iput-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@15
    .line 189
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V

    #@18
    .line 174
    :cond_1
    return-void

    #@19
    .line 182
    .local v4, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@1c
    move-result-object v5

    #@1d
    .line 183
    .local v5, "selector":Ljava/net/ProxySelector;
    if-eqz v5, :cond_0

    #@1f
    .line 184
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    #@21
    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@24
    move-result-object v4

    #@25
    .local v4, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    goto :goto_0

    #@26
    .line 191
    .end local v4    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v5    # "selector":Ljava/net/ProxySelector;
    :cond_3
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@29
    move-result-object v5

    #@2a
    .line 192
    .restart local v5    # "selector":Ljava/net/ProxySelector;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    .line 193
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    #@2f
    .line 194
    .local v0, "connectOK":Z
    const-string/jumbo v1, ""

    #@32
    .line 195
    .local v1, "failureReason":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_5

    #@38
    if-eqz v0, :cond_6

    #@3a
    .line 209
    :cond_5
    if-nez v0, :cond_1

    #@3c
    .line 210
    new-instance v6, Ljava/io/IOException;

    #@3e
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, "Unable to connect to server: "

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 196
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v6

    #@5a
    check-cast v6, Ljava/net/Proxy;

    #@5c
    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@5e
    .line 198
    :try_start_0
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 199
    const/4 v0, 0x1

    #@62
    goto :goto_1

    #@63
    .line 200
    :catch_0
    move-exception v2

    #@64
    .line 201
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 204
    if-eqz v5, :cond_4

    #@6a
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6c
    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@6e
    if-eq v6, v7, :cond_4

    #@70
    .line 205
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    #@72
    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    #@74
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v5, v6, v7, v2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    #@7b
    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Llibcore/net/url/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 271
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@c
    .line 272
    const-string/jumbo v1, "content/unknown"

    #@f
    return-object v1

    #@10
    .line 274
    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 307
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    #@7
    .line 309
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    #@9
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 346
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    #@7
    .line 348
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    #@9
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    #@5
    move-result v0

    #@6
    .line 325
    .local v0, "port":I
    if-gtz v0, :cond_0

    #@8
    .line 326
    const/16 v0, 0x15

    #@a
    .line 328
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ":"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "connect, resolve"

    #@29
    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    return-object v1
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 466
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 467
    new-instance v0, Ljava/lang/IllegalAccessError;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    #@9
    throw v0

    #@a
    .line 469
    :cond_0
    iput-boolean p1, p0, Llibcore/net/url/FtpURLConnection;->doInput:Z

    #@c
    .line 470
    if-eqz p1, :cond_1

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    iput-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->doOutput:Z

    #@11
    .line 465
    return-void

    #@12
    .line 470
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 489
    iget-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 490
    new-instance v0, Ljava/lang/IllegalAccessError;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    #@9
    throw v0

    #@a
    .line 492
    :cond_0
    iput-boolean p1, p0, Llibcore/net/url/FtpURLConnection;->doOutput:Z

    #@c
    .line 493
    if-eqz p1, :cond_1

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    iput-boolean v0, p0, Llibcore/net/url/FtpURLConnection;->doInput:Z

    #@11
    .line 488
    return-void

    #@12
    .line 493
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.class public Lsun/net/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/NetworkClient$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = -0x1

.field public static final DEFAULT_READ_TIMEOUT:I = -0x1

.field protected static defaultConnectTimeout:I

.field protected static defaultSoTimeout:I

.field protected static encoding:Ljava/lang/String;


# instance fields
.field protected connectTimeout:I

.field protected proxy:Ljava/net/Proxy;

.field protected readTimeout:I

.field public serverInput:Ljava/io/InputStream;

.field public serverOutput:Ljava/io/PrintStream;

.field protected serverSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 68
    filled-new-array {v4, v4}, [I

    #@5
    move-result-object v2

    #@6
    .line 69
    .local v2, "vals":[I
    new-array v1, v5, [Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v3, v1, v4

    #@b
    .line 72
    .local v1, "encs":[Ljava/lang/String;
    new-instance v3, Lsun/net/NetworkClient$1;

    #@d
    invoke-direct {v3, v2, v1}, Lsun/net/NetworkClient$1;-><init>([I[Ljava/lang/String;)V

    #@10
    .line 71
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    .line 80
    aget v3, v2, v4

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 81
    aget v3, v2, v4

    #@19
    sput v3, Lsun/net/NetworkClient;->defaultSoTimeout:I

    #@1b
    .line 83
    :cond_0
    aget v3, v2, v5

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 84
    aget v3, v2, v5

    #@21
    sput v3, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    #@23
    .line 87
    :cond_1
    aget-object v3, v1, v4

    #@25
    sput-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    #@27
    .line 89
    :try_start_0
    sget-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    #@29
    invoke-static {v3}, Lsun/net/NetworkClient;->isASCIISuperset(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_2

    #@2f
    .line 90
    const-string/jumbo v3, "ISO8859_1"

    #@32
    sput-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 42
    :cond_2
    :goto_0
    return-void

    #@35
    .line 92
    :catch_0
    move-exception v0

    #@36
    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ISO8859_1"

    #@39
    sput-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    #@3b
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6
    iput-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@8
    .line 51
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@b
    .line 62
    iput v1, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@d
    .line 63
    iput v1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@f
    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6
    iput-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@8
    .line 51
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@b
    .line 62
    iput v1, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@d
    .line 63
    iput v1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@f
    .line 230
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    #@12
    .line 229
    return-void
.end method

.method private static isASCIISuperset(Ljava/lang/String;)Z
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const-string/jumbo v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    #@3
    .line 121
    .local v2, "chkS":Ljava/lang/String;
    const/16 v3, 0x51

    #@5
    new-array v1, v3, [B

    #@7
    .local v1, "chkB":[B
    fill-array-data v1, :array_0

    #@a
    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    .line 128
    .local v0, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 121
    nop

    #@14
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method


# virtual methods
.method public closeServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 214
    invoke-virtual {p0}, Lsun/net/NetworkClient;->serverIsOpen()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 215
    return-void

    #@8
    .line 217
    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@a
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@d
    .line 218
    iput-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@f
    .line 219
    iput-object v1, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@11
    .line 220
    iput-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@13
    .line 213
    return-void
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/net/Socket;

    #@2
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@5
    return-object v0
.end method

.method protected doConnect(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@2
    if-eqz v1, :cond_3

    #@4
    .line 155
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@6
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 157
    new-instance v1, Lsun/net/NetworkClient$2;

    #@10
    invoke-direct {v1, p0}, Lsun/net/NetworkClient$2;-><init>(Lsun/net/NetworkClient;)V

    #@13
    .line 156
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/Socket;

    #@19
    .line 174
    .local v0, "s":Ljava/net/Socket;
    :goto_0
    iget v1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@1b
    if-ltz v1, :cond_4

    #@1d
    .line 175
    new-instance v1, Ljava/net/InetSocketAddress;

    #@1f
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@22
    iget v2, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@27
    .line 183
    :goto_1
    iget v1, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@29
    if-ltz v1, :cond_6

    #@2b
    .line 184
    iget v1, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@30
    .line 188
    :cond_0
    :goto_2
    return-object v0

    #@31
    .line 161
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@33
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@36
    move-result-object v1

    #@37
    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@39
    if-ne v1, v2, :cond_2

    #@3b
    .line 162
    invoke-virtual {p0}, Lsun/net/NetworkClient;->createSocket()Ljava/net/Socket;

    #@3e
    move-result-object v0

    #@3f
    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    #@40
    .line 166
    .end local v0    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    #@42
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@44
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@47
    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    #@48
    .line 169
    .end local v0    # "s":Ljava/net/Socket;
    :cond_3
    invoke-virtual {p0}, Lsun/net/NetworkClient;->createSocket()Ljava/net/Socket;

    #@4b
    move-result-object v0

    #@4c
    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    #@4d
    .line 177
    :cond_4
    sget v1, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    #@4f
    if-lez v1, :cond_5

    #@51
    .line 178
    new-instance v1, Ljava/net/InetSocketAddress;

    #@53
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@56
    sget v2, Lsun/net/NetworkClient;->defaultConnectTimeout:I

    #@58
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@5b
    goto :goto_1

    #@5c
    .line 180
    :cond_5
    new-instance v1, Ljava/net/InetSocketAddress;

    #@5e
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@61
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@64
    goto :goto_1

    #@65
    .line 185
    :cond_6
    sget v1, Lsun/net/NetworkClient;->defaultSoTimeout:I

    #@67
    if-lez v1, :cond_0

    #@69
    .line 186
    sget v1, Lsun/net/NetworkClient;->defaultSoTimeout:I

    #@6b
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@6e
    goto :goto_2
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 240
    iget v0, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@2
    return v0
.end method

.method protected getLocalAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 202
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 204
    :cond_0
    new-instance v0, Lsun/net/NetworkClient$3;

    #@f
    invoke-direct {v0, p0}, Lsun/net/NetworkClient$3;-><init>(Lsun/net/NetworkClient;)V

    #@12
    .line 203
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/net/InetAddress;

    #@18
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 271
    iget v0, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@2
    return v0
.end method

.method public openServer(Ljava/lang/String;I)V
    .locals 5
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 135
    invoke-virtual {p0}, Lsun/net/NetworkClient;->closeServer()V

    #@7
    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@d
    .line 138
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    #@f
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@11
    .line 139
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@13
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@16
    move-result-object v3

    #@17
    .line 138
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1a
    .line 140
    sget-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 138
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@20
    iput-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 144
    new-instance v1, Ljava/io/BufferedInputStream;

    #@24
    iget-object v2, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@26
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2d
    iput-object v1, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@2f
    .line 133
    return-void

    #@30
    .line 141
    :catch_0
    move-exception v0

    #@31
    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v3, Lsun/net/NetworkClient;->encoding:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "encoding not found"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1
.end method

.method public serverIsOpen()Z
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 236
    iput p1, p0, Lsun/net/NetworkClient;->connectTimeout:I

    #@2
    .line 235
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 257
    const/4 v1, -0x1

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 258
    sget p1, Lsun/net/NetworkClient;->defaultSoTimeout:I

    #@5
    .line 260
    :cond_0
    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@7
    if-eqz v1, :cond_1

    #@9
    if-ltz p1, :cond_1

    #@b
    .line 262
    :try_start_0
    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@d
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 267
    :cond_1
    :goto_0
    iput p1, p0, Lsun/net/NetworkClient;->readTimeout:I

    #@12
    .line 256
    return-void

    #@13
    .line 263
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private applicationSetProxy:Z

.field private cmdIn:Ljava/io/InputStream;

.field private cmdOut:Ljava/io/OutputStream;

.field private cmdsock:Ljava/net/Socket;

.field private external_address:Ljava/net/InetSocketAddress;

.field private server:Ljava/lang/String;

.field private serverPort:I

.field private useV4:Z


# direct methods
.method static synthetic -get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/net/SocksSocketImpl;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Ljava/net/SocksSocketImpl;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/net/SocksSocketImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@b
    .line 43
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    #@4
    .line 44
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@6
    .line 45
    const/16 v0, 0x438

    #@8
    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@a
    .line 47
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@d
    .line 48
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@f
    .line 49
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@11
    .line 50
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@13
    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    const/16 v0, 0x438

    #@2
    const/4 v2, 0x0

    #@3
    .line 59
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    #@6
    .line 44
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@8
    .line 45
    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@a
    .line 47
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@d
    .line 48
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@f
    .line 49
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@11
    .line 50
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@13
    .line 60
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@15
    .line 61
    const/4 v1, -0x1

    #@16
    if-ne p2, v1, :cond_0

    #@18
    move p2, v0

    #@19
    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@1b
    .line 59
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;)V
    .locals 4
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    #@4
    .line 44
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@6
    .line 45
    const/16 v2, 0x438

    #@8
    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@a
    .line 47
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@d
    .line 48
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@f
    .line 49
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@11
    .line 50
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@13
    .line 65
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@16
    move-result-object v0

    #@17
    .line 66
    .local v0, "a":Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    #@19
    if-eqz v2, :cond_0

    #@1b
    move-object v1, v0

    #@1c
    .line 67
    check-cast v1, Ljava/net/InetSocketAddress;

    #@1e
    .line 69
    .local v1, "ad":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@24
    .line 70
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@27
    move-result v2

    #@28
    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@2a
    .line 64
    .end local v1    # "ad":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .locals 6
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const-wide/16 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .locals 10
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    .line 148
    const/4 v7, 0x1

    #@3
    return v7

    #@4
    .line 154
    :cond_0
    const/4 v7, 0x2

    #@5
    if-ne p1, v7, :cond_8

    #@7
    .line 156
    const/4 v3, 0x0

    #@8
    .line 157
    .local v3, "password":Ljava/lang/String;
    iget-object v7, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@a
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@d
    move-result-object v0

    #@e
    .line 160
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/net/SocksSocketImpl$2;

    #@10
    invoke-direct {v7, p0, v0}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    #@13
    .line 159
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/net/PasswordAuthentication;

    #@19
    .line 166
    .local v4, "pw":Ljava/net/PasswordAuthentication;
    if-eqz v4, :cond_1

    #@1b
    .line 167
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 168
    .local v6, "userName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    #@21
    .end local v3    # "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    #@24
    move-result-object v7

    #@25
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    #@28
    .line 173
    :goto_0
    if-nez v6, :cond_2

    #@2a
    .line 174
    const/4 v7, 0x0

    #@2b
    return v7

    #@2c
    .line 171
    .end local v6    # "userName":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    :cond_1
    new-instance v7, Lsun/security/action/GetPropertyAction;

    #@2e
    const-string/jumbo v8, "user.name"

    #@31
    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@34
    .line 170
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Ljava/lang/String;

    #@3a
    .restart local v6    # "userName":Ljava/lang/String;
    goto :goto_0

    #@3b
    .line 175
    .end local v3    # "password":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    #@3c
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    #@3f
    .line 176
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@42
    move-result v7

    #@43
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    #@46
    .line 178
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 182
    :cond_3
    if-eqz v3, :cond_6

    #@52
    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@55
    move-result v7

    #@56
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    #@59
    .line 185
    :try_start_1
    const-string/jumbo v7, "ISO-8859-1"

    #@5c
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@63
    .line 191
    :cond_4
    :goto_1
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    #@66
    .line 192
    const/4 v7, 0x2

    #@67
    new-array v1, v7, [B

    #@69
    .line 193
    .local v1, "data":[B
    invoke-direct {p0, p2, v1, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@6c
    move-result v2

    #@6d
    .line 194
    .local v2, "i":I
    const/4 v7, 0x2

    #@6e
    if-ne v2, v7, :cond_5

    #@70
    const/4 v7, 0x1

    #@71
    aget-byte v7, v1, v7

    #@73
    if-eqz v7, :cond_7

    #@75
    .line 197
    :cond_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    #@78
    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    #@7b
    .line 199
    const/4 v7, 0x0

    #@7c
    return v7

    #@7d
    .line 179
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    #@7e
    .line 180
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@80
    if-nez v7, :cond_3

    #@82
    new-instance v7, Ljava/lang/AssertionError;

    #@84
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@87
    throw v7

    #@88
    .line 186
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    #@89
    .line 187
    .restart local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@8b
    if-nez v7, :cond_4

    #@8d
    new-instance v7, Ljava/lang/AssertionError;

    #@8f
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@92
    throw v7

    #@93
    .line 190
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_6
    const/4 v7, 0x0

    #@94
    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    #@97
    goto :goto_1

    #@98
    .line 202
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_7
    const/4 v7, 0x1

    #@99
    return v7

    #@9a
    .line 258
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "data":[B
    .end local v2    # "i":I
    .end local v4    # "pw":Ljava/net/PasswordAuthentication;
    .end local v6    # "userName":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    #@9b
    return v7
.end method

.method private bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "baddr"    # Ljava/net/InetAddress;
    .param p4, "lport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    const/4 v9, 0x4

    #@3
    const/4 v8, 0x0

    #@4
    .line 513
    instance-of v7, p3, Ljava/net/Inet4Address;

    #@6
    if-nez v7, :cond_0

    #@8
    .line 514
    new-instance v7, Ljava/net/SocketException;

    #@a
    const-string/jumbo v8, "SOCKS V4 requires IPv4 only addresses"

    #@d
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v7

    #@11
    .line 516
    :cond_0
    invoke-super {p0, p3, p4}, Ljava/net/PlainSocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@14
    .line 517
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    #@17
    move-result-object v0

    #@18
    .line 519
    .local v0, "addr1":[B
    move-object v4, p3

    #@19
    .line 520
    .local v4, "naddr":Ljava/net/InetAddress;
    invoke-virtual {p3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_1

    #@1f
    .line 522
    new-instance v7, Ljava/net/SocksSocketImpl$3;

    #@21
    invoke-direct {v7, p0}, Ljava/net/SocksSocketImpl$3;-><init>(Ljava/net/SocksSocketImpl;)V

    #@24
    .line 521
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    .end local v4    # "naddr":Ljava/net/InetAddress;
    check-cast v4, Ljava/net/InetAddress;

    #@2a
    .line 528
    .restart local v4    # "naddr":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    #@2d
    move-result-object v0

    #@2e
    .line 530
    :cond_1
    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    #@31
    .line 531
    const/4 v7, 0x2

    #@32
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@35
    .line 532
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    #@38
    move-result v7

    #@39
    shr-int/lit8 v7, v7, 0x8

    #@3b
    and-int/lit16 v7, v7, 0xff

    #@3d
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@40
    .line 533
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    #@43
    move-result v7

    #@44
    shr-int/lit8 v7, v7, 0x0

    #@46
    and-int/lit16 v7, v7, 0xff

    #@48
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@4b
    .line 534
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    #@4e
    .line 535
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    .line 537
    .local v6, "userName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@58
    move-result-object v7

    #@59
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 541
    :cond_2
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    #@5f
    .line 542
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@62
    .line 543
    new-array v1, v10, [B

    #@64
    .line 544
    .local v1, "data":[B
    invoke-direct {p0, p1, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@67
    move-result v3

    #@68
    .line 545
    .local v3, "n":I
    if-eq v3, v10, :cond_3

    #@6a
    .line 546
    new-instance v7, Ljava/net/SocketException;

    #@6c
    new-instance v8, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v9, "Reply from SOCKS server has bad length: "

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@83
    throw v7

    #@84
    .line 538
    .end local v1    # "data":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v5

    #@85
    .line 539
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@87
    if-nez v7, :cond_2

    #@89
    new-instance v7, Ljava/lang/AssertionError;

    #@8b
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@8e
    throw v7

    #@8f
    .line 547
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "data":[B
    .restart local v3    # "n":I
    :cond_3
    aget-byte v7, v1, v8

    #@91
    if-eqz v7, :cond_4

    #@93
    aget-byte v7, v1, v8

    #@95
    if-eq v7, v9, :cond_4

    #@97
    .line 548
    new-instance v7, Ljava/net/SocketException;

    #@99
    const-string/jumbo v8, "Reply from SOCKS server has bad version"

    #@9c
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v7

    #@a0
    .line 549
    :cond_4
    const/4 v2, 0x0

    #@a1
    .line 550
    .local v2, "ex":Ljava/net/SocketException;
    const/4 v7, 0x1

    #@a2
    aget-byte v7, v1, v7

    #@a4
    packed-switch v7, :pswitch_data_0

    #@a7
    .line 565
    new-instance v2, Ljava/net/SocketException;

    #@a9
    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "Reply from SOCKS server contains bad status"

    #@ac
    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@af
    .line 568
    :goto_0
    if-eqz v2, :cond_5

    #@b1
    .line 569
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@b4
    .line 570
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    #@b7
    .line 571
    throw v2

    #@b8
    .line 553
    .restart local v2    # "ex":Ljava/net/SocketException;
    :pswitch_0
    new-instance v7, Ljava/net/InetSocketAddress;

    #@ba
    invoke-direct {v7, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@bd
    iput-object v7, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@bf
    goto :goto_0

    #@c0
    .line 556
    :pswitch_1
    new-instance v2, Ljava/net/SocketException;

    #@c2
    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS request rejected"

    #@c5
    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@c8
    .line 557
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@c9
    .line 559
    .local v2, "ex":Ljava/net/SocketException;
    :pswitch_2
    new-instance v2, Ljava/net/SocketException;

    #@cb
    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS server couldn\'t reach destination"

    #@ce
    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@d1
    .line 560
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@d2
    .line 562
    .local v2, "ex":Ljava/net/SocketException;
    :pswitch_3
    new-instance v2, Ljava/net/SocketException;

    #@d4
    .end local v2    # "ex":Ljava/net/SocketException;
    const-string/jumbo v7, "SOCKS authentication failed"

    #@d7
    invoke-direct {v2, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@da
    .line 563
    .local v2, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@db
    .line 512
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_5
    return-void

    #@dc
    .line 550
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "endpoint"    # Ljava/net/InetSocketAddress;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/4 v8, 0x4

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 264
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@8
    move-result-object v5

    #@9
    instance-of v5, v5, Ljava/net/Inet4Address;

    #@b
    if-nez v5, :cond_0

    #@d
    .line 265
    new-instance v5, Ljava/net/SocketException;

    #@f
    const-string/jumbo v6, "SOCKS V4 requires IPv4 only addresses"

    #@12
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 267
    :cond_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    #@19
    .line 268
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@1c
    .line 269
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    #@1f
    move-result v5

    #@20
    shr-int/lit8 v5, v5, 0x8

    #@22
    and-int/lit16 v5, v5, 0xff

    #@24
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@27
    .line 270
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    #@2a
    move-result v5

    #@2b
    shr-int/lit8 v5, v5, 0x0

    #@2d
    and-int/lit16 v5, v5, 0xff

    #@2f
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    #@32
    .line 271
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    #@3d
    .line 272
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 274
    .local v4, "userName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "ISO-8859-1"

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 278
    :cond_1
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    #@4e
    .line 279
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@51
    .line 280
    new-array v0, v9, [B

    #@53
    .line 281
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@56
    move-result v2

    #@57
    .line 282
    .local v2, "n":I
    if-eq v2, v9, :cond_2

    #@59
    .line 283
    new-instance v5, Ljava/net/SocketException;

    #@5b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v7, "Reply from SOCKS server has bad length: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@72
    throw v5

    #@73
    .line 275
    .end local v0    # "data":[B
    .end local v2    # "n":I
    :catch_0
    move-exception v3

    #@74
    .line 276
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@76
    if-nez v5, :cond_1

    #@78
    new-instance v5, Ljava/lang/AssertionError;

    #@7a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@7d
    throw v5

    #@7e
    .line 284
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "data":[B
    .restart local v2    # "n":I
    :cond_2
    aget-byte v5, v0, v6

    #@80
    if-eqz v5, :cond_3

    #@82
    aget-byte v5, v0, v6

    #@84
    if-eq v5, v8, :cond_3

    #@86
    .line 285
    new-instance v5, Ljava/net/SocketException;

    #@88
    const-string/jumbo v6, "Reply from SOCKS server has bad version"

    #@8b
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v5

    #@8f
    .line 286
    :cond_3
    const/4 v1, 0x0

    #@90
    .line 287
    .local v1, "ex":Ljava/net/SocketException;
    aget-byte v5, v0, v7

    #@92
    packed-switch v5, :pswitch_data_0

    #@95
    .line 302
    new-instance v1, Ljava/net/SocketException;

    #@97
    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "Reply from SOCKS server contains bad status"

    #@9a
    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@9d
    .line 305
    :goto_0
    if-eqz v1, :cond_4

    #@9f
    .line 306
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@a2
    .line 307
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    #@a5
    .line 308
    throw v1

    #@a6
    .line 290
    .restart local v1    # "ex":Ljava/net/SocketException;
    :pswitch_0
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@a8
    goto :goto_0

    #@a9
    .line 293
    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    #@ab
    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS request rejected"

    #@ae
    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@b1
    .line 294
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@b2
    .line 296
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_2
    new-instance v1, Ljava/net/SocketException;

    #@b4
    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS server couldn\'t reach destination"

    #@b7
    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@ba
    .line 297
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@bb
    .line 299
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    #@bd
    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS authentication failed"

    #@c0
    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@c3
    .line 300
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    #@c4
    .line 263
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_4
    return-void

    #@c5
    .line 287
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 890
    const-string/jumbo v1, ""

    #@3
    .line 891
    .local v1, "userName":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 893
    :try_start_0
    const-string/jumbo v2, "user.name"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    .line 899
    :goto_0
    return-object v1

    #@f
    .line 897
    :cond_0
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@11
    const-string/jumbo v3, "user.name"

    #@14
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@17
    .line 896
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    .end local v1    # "userName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@1d
    .restart local v1    # "userName":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 894
    :catch_0
    move-exception v0

    #@1f
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private declared-synchronized privilegedConnect(Ljava/lang/String;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    new-instance v1, Ljava/net/SocksSocketImpl$1;

    #@3
    invoke-direct {v1, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    #@6
    .line 84
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 81
    return-void

    #@b
    .line 93
    :catch_0
    move-exception v0

    #@c
    .line 94
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/io/IOException;

    #@12
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method private readSocksReply(Ljava/io/InputStream;[B)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private readSocksReply(Ljava/io/InputStream;[BJ)I
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .param p3, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    array-length v4, p2

    #@1
    .line 120
    .local v4, "len":I
    const/4 v5, 0x0

    #@2
    .line 121
    .local v5, "received":I
    const/4 v1, 0x0

    #@3
    .local v1, "attempts":I
    :goto_0
    if-ge v5, v4, :cond_1

    #@5
    const/4 v6, 0x3

    #@6
    if-ge v1, v6, :cond_1

    #@8
    .line 124
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Ljava/net/SocketInputStream;

    #@b
    move-object v6, v0

    #@c
    sub-int v7, v4, v5

    #@e
    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    #@11
    move-result v8

    #@12
    invoke-virtual {v6, p2, v5, v7, v8}, Ljava/net/SocketInputStream;->read([BIII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    .line 128
    .local v2, "count":I
    if-gez v2, :cond_0

    #@18
    .line 129
    new-instance v6, Ljava/net/SocketException;

    #@1a
    const-string/jumbo v7, "Malformed reply from SOCKS server"

    #@1d
    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6

    #@21
    .line 125
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    #@22
    .line 126
    .local v3, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Ljava/net/SocketTimeoutException;

    #@24
    const-string/jumbo v7, "Connect timed out"

    #@27
    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v6

    #@2b
    .line 130
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .restart local v2    # "count":I
    :cond_0
    add-int/2addr v5, v2

    #@2c
    .line 121
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 132
    .end local v2    # "count":I
    :cond_1
    return v5
.end method

.method private static remainingMillis(J)I
    .locals 6
    .param p0, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 104
    cmp-long v2, p0, v4

    #@4
    if-nez v2, :cond_0

    #@6
    .line 105
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v2

    #@c
    sub-long v0, p0, v2

    #@e
    .line 108
    .local v0, "remaining":J
    cmp-long v2, v0, v4

    #@10
    if-lez v2, :cond_1

    #@12
    .line 109
    long-to-int v2, v0

    #@13
    return v2

    #@14
    .line 111
    :cond_1
    new-instance v2, Ljava/net/SocketTimeoutException;

    #@16
    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    #@19
    throw v2
.end method

.method private superConnectServer(Ljava/lang/String;II)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@5
    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@8
    .line 99
    return-void
.end method


# virtual methods
.method protected close()V
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
    .line 883
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 884
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@a
    .line 885
    :cond_0
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@c
    .line 886
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    #@f
    .line 882
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 25
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    if-nez p2, :cond_1

    #@2
    .line 331
    const-wide/16 v6, 0x0

    #@4
    .line 337
    .local v6, "deadlineMillis":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@7
    move-result-object v23

    #@8
    .line 338
    .local v23, "security":Ljava/lang/SecurityManager;
    if-eqz p1, :cond_3

    #@a
    move-object/from16 v0, p1

    #@c
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    #@e
    if-eqz v2, :cond_3

    #@10
    move-object/from16 v5, p1

    #@12
    .line 340
    check-cast v5, Ljava/net/InetSocketAddress;

    #@14
    .line 341
    .local v5, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v23, :cond_0

    #@16
    .line 342
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_4

    #@1c
    .line 343
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 344
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@23
    move-result v8

    #@24
    .line 343
    move-object/from16 v0, v23

    #@26
    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@29
    .line 349
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@2d
    if-nez v2, :cond_5

    #@2f
    .line 356
    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    #@32
    move-result v2

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-super {v0, v5, v2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@38
    .line 357
    return-void

    #@39
    .line 333
    .end local v5    # "epoint":Ljava/net/InetSocketAddress;
    .end local v6    # "deadlineMillis":J
    .end local v23    # "security":Ljava/lang/SecurityManager;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3c
    move-result-wide v8

    #@3d
    move/from16 v0, p2

    #@3f
    int-to-long v10, v0

    #@40
    add-long v18, v8, v10

    #@42
    .line 334
    .local v18, "finish":J
    const-wide/16 v8, 0x0

    #@44
    cmp-long v2, v18, v8

    #@46
    if-gez v2, :cond_2

    #@48
    const-wide v6, 0x7fffffffffffffffL

    #@4d
    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    #@4e
    .end local v6    # "deadlineMillis":J
    :cond_2
    move-wide/from16 v6, v18

    #@50
    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    #@51
    .line 339
    .end local v18    # "finish":J
    .restart local v23    # "security":Ljava/lang/SecurityManager;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v8, "Unsupported address type"

    #@56
    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 346
    .restart local v5    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 347
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@65
    move-result v8

    #@66
    .line 346
    move-object/from16 v0, v23

    #@68
    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@6b
    goto :goto_1

    #@6c
    .line 361
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@70
    move-object/from16 v0, p0

    #@72
    iget v8, v0, Ljava/net/SocksSocketImpl;->serverPort:I

    #@74
    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    #@77
    move-result v9

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v2, v8, v9}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    .line 368
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@83
    const/16 v8, 0x200

    #@85
    invoke-direct {v4, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@88
    .line 369
    .local v4, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@8c
    .line 371
    .local v3, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@8e
    iget-boolean v2, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@90
    if-eqz v2, :cond_7

    #@92
    .line 374
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@95
    move-result v2

    #@96
    if-eqz v2, :cond_6

    #@98
    .line 375
    new-instance v2, Ljava/net/UnknownHostException;

    #@9a
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v2

    #@a2
    .line 362
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v16

    #@a3
    .line 363
    .local v16, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    #@a5
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v2

    #@ad
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    move-object/from16 v2, p0

    #@af
    .line 376
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    #@b2
    .line 377
    return-void

    #@b3
    .line 381
    :cond_7
    const/4 v2, 0x5

    #@b4
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@b7
    .line 382
    const/4 v2, 0x2

    #@b8
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@bb
    .line 383
    const/4 v2, 0x0

    #@bc
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@bf
    .line 384
    const/4 v2, 0x2

    #@c0
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@c3
    .line 385
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    #@c6
    .line 386
    const/4 v2, 0x2

    #@c7
    new-array v15, v2, [B

    #@c9
    .line 387
    .local v15, "data":[B
    move-object/from16 v0, p0

    #@cb
    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@ce
    move-result v21

    #@cf
    .line 388
    .local v21, "i":I
    const/4 v2, 0x2

    #@d0
    move/from16 v0, v21

    #@d2
    if-ne v0, v2, :cond_8

    #@d4
    const/4 v2, 0x0

    #@d5
    aget-byte v2, v15, v2

    #@d7
    const/4 v8, 0x5

    #@d8
    if-eq v2, v8, :cond_a

    #@da
    .line 393
    :cond_8
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_9

    #@e0
    .line 394
    new-instance v2, Ljava/net/UnknownHostException;

    #@e2
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    #@e5
    move-result-object v8

    #@e6
    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@e9
    throw v2

    #@ea
    :cond_9
    move-object/from16 v2, p0

    #@ec
    .line 395
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    #@ef
    .line 396
    return-void

    #@f0
    .line 398
    :cond_a
    const/4 v2, 0x1

    #@f1
    aget-byte v2, v15, v2

    #@f3
    const/4 v8, -0x1

    #@f4
    if-ne v2, v8, :cond_b

    #@f6
    .line 399
    new-instance v2, Ljava/net/SocketException;

    #@f8
    const-string/jumbo v8, "SOCKS : No acceptable methods"

    #@fb
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@fe
    throw v2

    #@ff
    .line 400
    :cond_b
    const/4 v2, 0x1

    #@100
    aget-byte v9, v15, v2

    #@102
    move-object/from16 v8, p0

    #@104
    move-object v10, v3

    #@105
    move-object v11, v4

    #@106
    move-wide v12, v6

    #@107
    invoke-direct/range {v8 .. v13}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    #@10a
    move-result v2

    #@10b
    if-nez v2, :cond_c

    #@10d
    .line 401
    new-instance v2, Ljava/net/SocketException;

    #@10f
    const-string/jumbo v8, "SOCKS : authentication failed"

    #@112
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@115
    throw v2

    #@116
    .line 403
    :cond_c
    const/4 v2, 0x5

    #@117
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@11a
    .line 404
    const/4 v2, 0x1

    #@11b
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@11e
    .line 405
    const/4 v2, 0x0

    #@11f
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@122
    .line 407
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@125
    move-result v2

    #@126
    if-eqz v2, :cond_e

    #@128
    .line 408
    const/4 v2, 0x3

    #@129
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@12c
    .line 409
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@133
    move-result v2

    #@134
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@137
    .line 411
    :try_start_1
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@13a
    move-result-object v2

    #@13b
    const-string/jumbo v8, "ISO-8859-1"

    #@13e
    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@141
    move-result-object v2

    #@142
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@145
    .line 415
    :cond_d
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@148
    move-result v2

    #@149
    shr-int/lit8 v2, v2, 0x8

    #@14b
    and-int/lit16 v2, v2, 0xff

    #@14d
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@150
    .line 416
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@153
    move-result v2

    #@154
    shr-int/lit8 v2, v2, 0x0

    #@156
    and-int/lit16 v2, v2, 0xff

    #@158
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@15b
    .line 428
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    #@15e
    .line 429
    const/4 v2, 0x4

    #@15f
    new-array v15, v2, [B

    #@161
    .line 430
    move-object/from16 v0, p0

    #@163
    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@166
    move-result v21

    #@167
    .line 431
    const/4 v2, 0x4

    #@168
    move/from16 v0, v21

    #@16a
    if-eq v0, v2, :cond_10

    #@16c
    .line 432
    new-instance v2, Ljava/net/SocketException;

    #@16e
    const-string/jumbo v8, "Reply from SOCKS server has bad length"

    #@171
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@174
    throw v2

    #@175
    .line 412
    :catch_1
    move-exception v24

    #@176
    .line 413
    .local v24, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@178
    if-nez v2, :cond_d

    #@17a
    new-instance v2, Ljava/lang/AssertionError;

    #@17c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@17f
    throw v2

    #@180
    .line 417
    .end local v24    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_e
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@183
    move-result-object v2

    #@184
    instance-of v2, v2, Ljava/net/Inet6Address;

    #@186
    if-eqz v2, :cond_f

    #@188
    .line 418
    const/4 v2, 0x4

    #@189
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@18c
    .line 419
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@18f
    move-result-object v2

    #@190
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@193
    move-result-object v2

    #@194
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    #@197
    .line 420
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@19a
    move-result v2

    #@19b
    shr-int/lit8 v2, v2, 0x8

    #@19d
    and-int/lit16 v2, v2, 0xff

    #@19f
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@1a2
    .line 421
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@1a5
    move-result v2

    #@1a6
    shr-int/lit8 v2, v2, 0x0

    #@1a8
    and-int/lit16 v2, v2, 0xff

    #@1aa
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@1ad
    goto :goto_2

    #@1ae
    .line 423
    :cond_f
    const/4 v2, 0x1

    #@1af
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@1b2
    .line 424
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@1b5
    move-result-object v2

    #@1b6
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@1b9
    move-result-object v2

    #@1ba
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    #@1bd
    .line 425
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@1c0
    move-result v2

    #@1c1
    shr-int/lit8 v2, v2, 0x8

    #@1c3
    and-int/lit16 v2, v2, 0xff

    #@1c5
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@1c8
    .line 426
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@1cb
    move-result v2

    #@1cc
    shr-int/lit8 v2, v2, 0x0

    #@1ce
    and-int/lit16 v2, v2, 0xff

    #@1d0
    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    #@1d3
    goto :goto_2

    #@1d4
    .line 433
    :cond_10
    const/16 v17, 0x0

    #@1d6
    .line 436
    .local v17, "ex":Ljava/net/SocketException;
    const/4 v2, 0x1

    #@1d7
    aget-byte v2, v15, v2

    #@1d9
    packed-switch v2, :pswitch_data_0

    #@1dc
    .line 502
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_11
    :goto_3
    if-eqz v17, :cond_15

    #@1de
    .line 503
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@1e1
    .line 504
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    #@1e4
    .line 505
    throw v17

    #@1e5
    .line 439
    .restart local v17    # "ex":Ljava/net/SocketException;
    :pswitch_0
    const/4 v2, 0x3

    #@1e6
    aget-byte v2, v15, v2

    #@1e8
    packed-switch v2, :pswitch_data_1

    #@1eb
    .line 473
    :pswitch_1
    new-instance v17, Ljava/net/SocketException;

    #@1ed
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "Reply from SOCKS server contains wrong code"

    #@1f0
    move-object/from16 v0, v17

    #@1f2
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1f5
    .line 474
    .local v17, "ex":Ljava/net/SocketException;
    goto :goto_3

    #@1f6
    .line 441
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2
    const/4 v2, 0x4

    #@1f7
    new-array v14, v2, [B

    #@1f9
    .line 442
    .local v14, "addr":[B
    move-object/from16 v0, p0

    #@1fb
    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@1fe
    move-result v21

    #@1ff
    .line 443
    const/4 v2, 0x4

    #@200
    move/from16 v0, v21

    #@202
    if-eq v0, v2, :cond_12

    #@204
    .line 444
    new-instance v2, Ljava/net/SocketException;

    #@206
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@209
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@20c
    throw v2

    #@20d
    .line 445
    :cond_12
    const/4 v2, 0x2

    #@20e
    new-array v15, v2, [B

    #@210
    .line 446
    move-object/from16 v0, p0

    #@212
    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@215
    move-result v21

    #@216
    .line 447
    const/4 v2, 0x2

    #@217
    move/from16 v0, v21

    #@219
    if-eq v0, v2, :cond_11

    #@21b
    .line 448
    new-instance v2, Ljava/net/SocketException;

    #@21d
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@220
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@223
    throw v2

    #@224
    .line 451
    .end local v14    # "addr":[B
    :pswitch_3
    const/4 v2, 0x1

    #@225
    aget-byte v22, v15, v2

    #@227
    .line 452
    .local v22, "len":I
    move/from16 v0, v22

    #@229
    new-array v0, v0, [B

    #@22b
    move-object/from16 v20, v0

    #@22d
    .line 453
    .local v20, "host":[B
    move-object/from16 v0, p0

    #@22f
    move-object/from16 v1, v20

    #@231
    invoke-direct {v0, v3, v1, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@234
    move-result v21

    #@235
    .line 454
    move/from16 v0, v21

    #@237
    move/from16 v1, v22

    #@239
    if-eq v0, v1, :cond_13

    #@23b
    .line 455
    new-instance v2, Ljava/net/SocketException;

    #@23d
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@240
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@243
    throw v2

    #@244
    .line 456
    :cond_13
    const/4 v2, 0x2

    #@245
    new-array v15, v2, [B

    #@247
    .line 457
    move-object/from16 v0, p0

    #@249
    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@24c
    move-result v21

    #@24d
    .line 458
    const/4 v2, 0x2

    #@24e
    move/from16 v0, v21

    #@250
    if-eq v0, v2, :cond_11

    #@252
    .line 459
    new-instance v2, Ljava/net/SocketException;

    #@254
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@257
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@25a
    throw v2

    #@25b
    .line 462
    .end local v20    # "host":[B
    .end local v22    # "len":I
    :pswitch_4
    const/4 v2, 0x1

    #@25c
    aget-byte v22, v15, v2

    #@25e
    .line 463
    .restart local v22    # "len":I
    move/from16 v0, v22

    #@260
    new-array v14, v0, [B

    #@262
    .line 464
    .restart local v14    # "addr":[B
    move-object/from16 v0, p0

    #@264
    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@267
    move-result v21

    #@268
    .line 465
    move/from16 v0, v21

    #@26a
    move/from16 v1, v22

    #@26c
    if-eq v0, v1, :cond_14

    #@26e
    .line 466
    new-instance v2, Ljava/net/SocketException;

    #@270
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@273
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@276
    throw v2

    #@277
    .line 467
    :cond_14
    const/4 v2, 0x2

    #@278
    new-array v15, v2, [B

    #@27a
    .line 468
    move-object/from16 v0, p0

    #@27c
    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    #@27f
    move-result v21

    #@280
    .line 469
    const/4 v2, 0x2

    #@281
    move/from16 v0, v21

    #@283
    if-eq v0, v2, :cond_11

    #@285
    .line 470
    new-instance v2, Ljava/net/SocketException;

    #@287
    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    #@28a
    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@28d
    throw v2

    #@28e
    .line 478
    .end local v14    # "addr":[B
    .end local v22    # "len":I
    :pswitch_5
    new-instance v17, Ljava/net/SocketException;

    #@290
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS server general failure"

    #@293
    move-object/from16 v0, v17

    #@295
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@298
    .line 479
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@29a
    .line 481
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_6
    new-instance v17, Ljava/net/SocketException;

    #@29c
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection not allowed by ruleset"

    #@29f
    move-object/from16 v0, v17

    #@2a1
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2a4
    .line 482
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2a6
    .line 484
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_7
    new-instance v17, Ljava/net/SocketException;

    #@2a8
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Network unreachable"

    #@2ab
    move-object/from16 v0, v17

    #@2ad
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2b0
    .line 485
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2b2
    .line 487
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_8
    new-instance v17, Ljava/net/SocketException;

    #@2b4
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Host unreachable"

    #@2b7
    move-object/from16 v0, v17

    #@2b9
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2bc
    .line 488
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2be
    .line 490
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_9
    new-instance v17, Ljava/net/SocketException;

    #@2c0
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection refused"

    #@2c3
    move-object/from16 v0, v17

    #@2c5
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c8
    .line 491
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2ca
    .line 493
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_a
    new-instance v17, Ljava/net/SocketException;

    #@2cc
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: TTL expired"

    #@2cf
    move-object/from16 v0, v17

    #@2d1
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2d4
    .line 494
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2d6
    .line 496
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_b
    new-instance v17, Ljava/net/SocketException;

    #@2d8
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Command not supported"

    #@2db
    move-object/from16 v0, v17

    #@2dd
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2e0
    .line 497
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2e2
    .line 499
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_c
    new-instance v17, Ljava/net/SocketException;

    #@2e4
    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: address type not supported"

    #@2e7
    move-object/from16 v0, v17

    #@2e9
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2ec
    .line 500
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    #@2ee
    .line 507
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_15
    move-object/from16 v0, p0

    #@2f0
    iput-object v5, v0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@2f2
    .line 327
    return-void

    #@2f3
    .line 436
    nop

    #@2f4
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    #@30a
    .line 439
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 852
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 854
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 873
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 874
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 875
    :cond_0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 876
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@f
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 878
    :cond_1
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method protected getPort()I
    .locals 1

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 866
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 868
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method setV4()V
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@3
    .line 74
    return-void
.end method

.method protected declared-synchronized socksBind(Ljava/net/InetSocketAddress;)V
    .locals 27
    .param p1, "saddr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 585
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    #@5
    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v24, :cond_0

    #@9
    monitor-exit p0

    #@a
    .line 588
    return-void

    #@b
    .line 593
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@f
    move-object/from16 v24, v0

    #@11
    if-nez v24, :cond_d

    #@13
    .line 598
    new-instance v24, Ljava/net/SocksSocketImpl$4;

    #@15
    move-object/from16 v0, v24

    #@17
    move-object/from16 v1, p0

    #@19
    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$4;-><init>(Ljava/net/SocksSocketImpl;)V

    #@1c
    .line 597
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1f
    move-result-object v21

    #@20
    check-cast v21, Ljava/net/ProxySelector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 603
    .local v21, "sel":Ljava/net/ProxySelector;
    if-nez v21, :cond_1

    #@24
    monitor-exit p0

    #@25
    .line 607
    return-void

    #@26
    .line 611
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .line 613
    .local v10, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2d
    move-result-object v24

    #@2e
    move-object/from16 v0, v24

    #@30
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@32
    move/from16 v24, v0

    #@34
    if-eqz v24, :cond_2

    #@36
    .line 614
    const-string/jumbo v24, "["

    #@39
    move-object/from16 v0, v24

    #@3b
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result v24

    #@3f
    if-eqz v24, :cond_4

    #@41
    .line 618
    :cond_2
    :goto_0
    :try_start_3
    new-instance v23, Ljava/net/URI;

    #@43
    new-instance v24, Ljava/lang/StringBuilder;

    #@45
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v25, "serversocket://"

    #@4b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v24

    #@4f
    invoke-static {v10}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v25

    #@53
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v24

    #@57
    const-string/jumbo v25, ":"

    #@5a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v24

    #@5e
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@61
    move-result v25

    #@62
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v24

    #@66
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v24

    #@6a
    invoke-direct/range {v23 .. v24}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 624
    :goto_1
    const/16 v19, 0x0

    #@6f
    .line 625
    .local v19, "p":Ljava/net/Proxy;
    const/16 v20, 0x0

    #@71
    .line 626
    .local v20, "savedExc":Ljava/lang/Exception;
    const/4 v13, 0x0

    #@72
    .line 627
    .local v13, "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :try_start_4
    move-object/from16 v0, v21

    #@74
    move-object/from16 v1, v23

    #@76
    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@79
    move-result-object v24

    #@7a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v13

    #@7e
    .line 628
    .local v13, "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    if-eqz v13, :cond_6

    #@80
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v24

    #@84
    if-eqz v24, :cond_6

    #@86
    .line 631
    .end local v19    # "p":Ljava/net/Proxy;
    .end local v20    # "savedExc":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@89
    move-result v24

    #@8a
    if-eqz v24, :cond_b

    #@8c
    .line 632
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8f
    move-result-object v19

    #@90
    check-cast v19, Ljava/net/Proxy;

    #@92
    .line 633
    .local v19, "p":Ljava/net/Proxy;
    if-eqz v19, :cond_3

    #@94
    sget-object v24, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@96
    move-object/from16 v0, v19

    #@98
    move-object/from16 v1, v24

    #@9a
    if-ne v0, v1, :cond_7

    #@9c
    :cond_3
    monitor-exit p0

    #@9d
    .line 634
    return-void

    #@9e
    .line 614
    .end local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v19    # "p":Ljava/net/Proxy;
    :cond_4
    :try_start_5
    const-string/jumbo v24, ":"

    #@a1
    move-object/from16 v0, v24

    #@a3
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a6
    move-result v24

    #@a7
    if-ltz v24, :cond_2

    #@a9
    .line 615
    new-instance v24, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v25, "["

    #@b1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v24

    #@b5
    move-object/from16 v0, v24

    #@b7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v24

    #@bb
    const-string/jumbo v25, "]"

    #@be
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v24

    #@c2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    goto/16 :goto_0

    #@c8
    .line 619
    :catch_0
    move-exception v8

    #@c9
    .line 621
    .local v8, "e":Ljava/net/URISyntaxException;
    sget-boolean v24, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@cb
    if-nez v24, :cond_5

    #@cd
    new-instance v24, Ljava/lang/AssertionError;

    #@cf
    move-object/from16 v0, v24

    #@d1
    invoke-direct {v0, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d4
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d5
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v10    # "host":Ljava/lang/String;
    .end local v21    # "sel":Ljava/net/ProxySelector;
    :catchall_0
    move-exception v24

    #@d6
    monitor-exit p0

    #@d7
    throw v24

    #@d8
    .line 622
    .restart local v8    # "e":Ljava/net/URISyntaxException;
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v21    # "sel":Ljava/net/ProxySelector;
    :cond_5
    const/16 v23, 0x0

    #@da
    .local v23, "uri":Ljava/net/URI;
    goto :goto_1

    #@db
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v23    # "uri":Ljava/net/URI;
    .restart local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .local v19, "p":Ljava/net/Proxy;
    .restart local v20    # "savedExc":Ljava/lang/Exception;
    :cond_6
    monitor-exit p0

    #@dc
    .line 629
    return-void

    #@dd
    .line 636
    .end local v20    # "savedExc":Ljava/lang/Exception;
    .local v19, "p":Ljava/net/Proxy;
    :cond_7
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@e0
    move-result-object v24

    #@e1
    sget-object v25, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@e3
    move-object/from16 v0, v24

    #@e5
    move-object/from16 v1, v25

    #@e7
    if-eq v0, v1, :cond_8

    #@e9
    .line 637
    new-instance v24, Ljava/net/SocketException;

    #@eb
    new-instance v25, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v26, "Unknown proxy type : "

    #@f3
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v25

    #@f7
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@fa
    move-result-object v26

    #@fb
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v25

    #@ff
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v25

    #@103
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@106
    throw v24

    #@107
    .line 638
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@10a
    move-result-object v24

    #@10b
    move-object/from16 v0, v24

    #@10d
    instance-of v0, v0, Ljava/net/InetSocketAddress;

    #@10f
    move/from16 v24, v0

    #@111
    if-nez v24, :cond_9

    #@113
    .line 639
    new-instance v24, Ljava/net/SocketException;

    #@115
    new-instance v25, Ljava/lang/StringBuilder;

    #@117
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v26, "Unknow address type for proxy: "

    #@11d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v25

    #@121
    move-object/from16 v0, v25

    #@123
    move-object/from16 v1, v19

    #@125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v25

    #@129
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v25

    #@12d
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@130
    throw v24

    #@131
    .line 641
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@134
    move-result-object v24

    #@135
    check-cast v24, Ljava/net/InetSocketAddress;

    #@137
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    #@13a
    move-result-object v24

    #@13b
    move-object/from16 v0, v24

    #@13d
    move-object/from16 v1, p0

    #@13f
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@141
    .line 642
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@144
    move-result-object v24

    #@145
    check-cast v24, Ljava/net/InetSocketAddress;

    #@147
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetSocketAddress;->getPort()I

    #@14a
    move-result v24

    #@14b
    move/from16 v0, v24

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput v0, v1, Ljava/net/SocksSocketImpl;->serverPort:I

    #@151
    .line 643
    move-object/from16 v0, v19

    #@153
    instance-of v0, v0, Lsun/net/SocksProxy;

    #@155
    move/from16 v24, v0

    #@157
    if-eqz v24, :cond_a

    #@159
    .line 644
    move-object/from16 v0, v19

    #@15b
    check-cast v0, Lsun/net/SocksProxy;

    #@15d
    move-object/from16 v24, v0

    #@15f
    invoke-virtual/range {v24 .. v24}, Lsun/net/SocksProxy;->protocolVersion()I

    #@162
    move-result v24

    #@163
    const/16 v25, 0x4

    #@165
    move/from16 v0, v24

    #@167
    move/from16 v1, v25

    #@169
    if-ne v0, v1, :cond_a

    #@16b
    .line 645
    const/16 v24, 0x1

    #@16d
    move/from16 v0, v24

    #@16f
    move-object/from16 v1, p0

    #@171
    iput-boolean v0, v1, Ljava/net/SocksSocketImpl;->useV4:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@173
    .line 652
    :cond_a
    :try_start_7
    new-instance v24, Ljava/net/SocksSocketImpl$5;

    #@175
    move-object/from16 v0, v24

    #@177
    move-object/from16 v1, p0

    #@179
    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$5;-><init>(Ljava/net/SocksSocketImpl;)V

    #@17c
    .line 651
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@17f
    goto/16 :goto_2

    #@181
    .line 661
    :catch_1
    move-exception v7

    #@182
    .line 663
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@185
    move-result-object v24

    #@186
    new-instance v25, Ljava/net/SocketException;

    #@188
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@18b
    move-result-object v26

    #@18c
    invoke-direct/range {v25 .. v26}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@18f
    move-object/from16 v0, v21

    #@191
    move-object/from16 v1, v23

    #@193
    move-object/from16 v2, v24

    #@195
    move-object/from16 v3, v25

    #@197
    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    #@19a
    .line 664
    const/16 v24, 0x0

    #@19c
    move-object/from16 v0, v24

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@1a2
    .line 665
    const/16 v24, -0x1

    #@1a4
    move/from16 v0, v24

    #@1a6
    move-object/from16 v1, p0

    #@1a8
    iput v0, v1, Ljava/net/SocksSocketImpl;->serverPort:I

    #@1aa
    .line 666
    const/16 v24, 0x0

    #@1ac
    move-object/from16 v0, v24

    #@1ae
    move-object/from16 v1, p0

    #@1b0
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@1b2
    .line 667
    move-object/from16 v20, v7

    #@1b4
    .local v20, "savedExc":Ljava/lang/Exception;
    goto/16 :goto_2

    #@1b6
    .line 676
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "p":Ljava/net/Proxy;
    .end local v20    # "savedExc":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    #@1ba
    move-object/from16 v24, v0

    #@1bc
    if-eqz v24, :cond_c

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@1c2
    move-object/from16 v24, v0

    #@1c4
    if-nez v24, :cond_e

    #@1c6
    .line 677
    :cond_c
    new-instance v24, Ljava/net/SocketException;

    #@1c8
    new-instance v25, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v26, "Can\'t connect to SOCKS proxy:"

    #@1d0
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v25

    #@1d4
    .line 678
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1d7
    move-result-object v26

    #@1d8
    .line 677
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v25

    #@1dc
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v25

    #@1e0
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1e3
    throw v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1e4
    .line 683
    .end local v10    # "host":Ljava/lang/String;
    .end local v13    # "iProxy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v21    # "sel":Ljava/net/ProxySelector;
    :cond_d
    :try_start_9
    new-instance v24, Ljava/net/SocksSocketImpl$6;

    #@1e6
    move-object/from16 v0, v24

    #@1e8
    move-object/from16 v1, p0

    #@1ea
    invoke-direct {v0, v1}, Ljava/net/SocksSocketImpl$6;-><init>(Ljava/net/SocksSocketImpl;)V

    #@1ed
    .line 682
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1f0
    .line 696
    :cond_e
    :try_start_a
    new-instance v18, Ljava/io/BufferedOutputStream;

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    #@1f6
    move-object/from16 v24, v0

    #@1f8
    const/16 v25, 0x200

    #@1fa
    move-object/from16 v0, v18

    #@1fc
    move-object/from16 v1, v24

    #@1fe
    move/from16 v2, v25

    #@200
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@203
    .line 697
    .local v18, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    #@205
    iget-object v14, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@207
    .line 698
    .local v14, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@209
    iget-boolean v0, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    #@20b
    move/from16 v24, v0

    #@20d
    if-eqz v24, :cond_f

    #@20f
    .line 699
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@212
    move-result-object v24

    #@213
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@216
    move-result v25

    #@217
    move-object/from16 v0, p0

    #@219
    move-object/from16 v1, v18

    #@21b
    move-object/from16 v2, v24

    #@21d
    move/from16 v3, v25

    #@21f
    invoke-direct {v0, v14, v1, v2, v3}, Ljava/net/SocksSocketImpl;->bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@222
    monitor-exit p0

    #@223
    .line 700
    return-void

    #@224
    .line 692
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v18    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v7

    #@225
    .line 693
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v24, Ljava/net/SocketException;

    #@227
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@22a
    move-result-object v25

    #@22b
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@22e
    throw v24

    #@22f
    .line 702
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v14    # "in":Ljava/io/InputStream;
    .restart local v18    # "out":Ljava/io/BufferedOutputStream;
    :cond_f
    const/16 v24, 0x5

    #@231
    move-object/from16 v0, v18

    #@233
    move/from16 v1, v24

    #@235
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@238
    .line 703
    const/16 v24, 0x2

    #@23a
    move-object/from16 v0, v18

    #@23c
    move/from16 v1, v24

    #@23e
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@241
    .line 704
    const/16 v24, 0x0

    #@243
    move-object/from16 v0, v18

    #@245
    move/from16 v1, v24

    #@247
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@24a
    .line 705
    const/16 v24, 0x2

    #@24c
    move-object/from16 v0, v18

    #@24e
    move/from16 v1, v24

    #@250
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@253
    .line 706
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    #@256
    .line 707
    const/16 v24, 0x2

    #@258
    move/from16 v0, v24

    #@25a
    new-array v6, v0, [B

    #@25c
    .line 708
    .local v6, "data":[B
    move-object/from16 v0, p0

    #@25e
    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@261
    move-result v12

    #@262
    .line 709
    .local v12, "i":I
    const/16 v24, 0x2

    #@264
    move/from16 v0, v24

    #@266
    if-ne v12, v0, :cond_10

    #@268
    const/16 v24, 0x0

    #@26a
    aget-byte v24, v6, v24

    #@26c
    const/16 v25, 0x5

    #@26e
    move/from16 v0, v24

    #@270
    move/from16 v1, v25

    #@272
    if-eq v0, v1, :cond_11

    #@274
    .line 712
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@277
    move-result-object v24

    #@278
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@27b
    move-result v25

    #@27c
    move-object/from16 v0, p0

    #@27e
    move-object/from16 v1, v18

    #@280
    move-object/from16 v2, v24

    #@282
    move/from16 v3, v25

    #@284
    invoke-direct {v0, v14, v1, v2, v3}, Ljava/net/SocksSocketImpl;->bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@287
    monitor-exit p0

    #@288
    .line 713
    return-void

    #@289
    .line 715
    :cond_11
    const/16 v24, 0x1

    #@28b
    :try_start_c
    aget-byte v24, v6, v24

    #@28d
    const/16 v25, -0x1

    #@28f
    move/from16 v0, v24

    #@291
    move/from16 v1, v25

    #@293
    if-ne v0, v1, :cond_12

    #@295
    .line 716
    new-instance v24, Ljava/net/SocketException;

    #@297
    const-string/jumbo v25, "SOCKS : No acceptable methods"

    #@29a
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@29d
    throw v24

    #@29e
    .line 717
    :cond_12
    const/16 v24, 0x1

    #@2a0
    aget-byte v24, v6, v24

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    move/from16 v1, v24

    #@2a6
    move-object/from16 v2, v18

    #@2a8
    invoke-direct {v0, v1, v14, v2}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z

    #@2ab
    move-result v24

    #@2ac
    if-nez v24, :cond_13

    #@2ae
    .line 718
    new-instance v24, Ljava/net/SocketException;

    #@2b0
    const-string/jumbo v25, "SOCKS : authentication failed"

    #@2b3
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2b6
    throw v24

    #@2b7
    .line 721
    :cond_13
    const/16 v24, 0x5

    #@2b9
    move-object/from16 v0, v18

    #@2bb
    move/from16 v1, v24

    #@2bd
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@2c0
    .line 722
    const/16 v24, 0x2

    #@2c2
    move-object/from16 v0, v18

    #@2c4
    move/from16 v1, v24

    #@2c6
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@2c9
    .line 723
    const/16 v24, 0x0

    #@2cb
    move-object/from16 v0, v18

    #@2cd
    move/from16 v1, v24

    #@2cf
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@2d2
    .line 724
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    #@2d5
    move-result v16

    #@2d6
    .line 725
    .local v16, "lport":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@2d9
    move-result v24

    #@2da
    if-eqz v24, :cond_15

    #@2dc
    .line 726
    const/16 v24, 0x3

    #@2de
    move-object/from16 v0, v18

    #@2e0
    move/from16 v1, v24

    #@2e2
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@2e5
    .line 727
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@2e8
    move-result-object v24

    #@2e9
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@2ec
    move-result v24

    #@2ed
    move-object/from16 v0, v18

    #@2ef
    move/from16 v1, v24

    #@2f1
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2f4
    .line 729
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@2f7
    move-result-object v24

    #@2f8
    const-string/jumbo v25, "ISO-8859-1"

    #@2fb
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@2fe
    move-result-object v24

    #@2ff
    move-object/from16 v0, v18

    #@301
    move-object/from16 v1, v24

    #@303
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@306
    .line 733
    :cond_14
    shr-int/lit8 v24, v16, 0x8

    #@308
    move/from16 v0, v24

    #@30a
    and-int/lit16 v0, v0, 0xff

    #@30c
    move/from16 v24, v0

    #@30e
    :try_start_e
    move-object/from16 v0, v18

    #@310
    move/from16 v1, v24

    #@312
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@315
    .line 734
    shr-int/lit8 v24, v16, 0x0

    #@317
    move/from16 v0, v24

    #@319
    and-int/lit16 v0, v0, 0xff

    #@31b
    move/from16 v24, v0

    #@31d
    move-object/from16 v0, v18

    #@31f
    move/from16 v1, v24

    #@321
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@324
    .line 753
    :goto_3
    const/16 v24, 0x4

    #@326
    move/from16 v0, v24

    #@328
    new-array v6, v0, [B

    #@32a
    .line 754
    move-object/from16 v0, p0

    #@32c
    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@32f
    move-result v12

    #@330
    .line 755
    const/4 v9, 0x0

    #@331
    .line 758
    .local v9, "ex":Ljava/net/SocketException;
    const/16 v24, 0x1

    #@333
    aget-byte v24, v6, v24

    #@335
    packed-switch v24, :pswitch_data_0

    #@338
    .line 832
    .end local v9    # "ex":Ljava/net/SocketException;
    :goto_4
    if-eqz v9, :cond_1e

    #@33a
    .line 833
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    #@33d
    .line 834
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V

    #@340
    .line 835
    move-object/from16 v0, p0

    #@342
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@344
    move-object/from16 v24, v0

    #@346
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->close()V

    #@349
    .line 836
    const/16 v24, 0x0

    #@34b
    move-object/from16 v0, v24

    #@34d
    move-object/from16 v1, p0

    #@34f
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@351
    .line 837
    throw v9

    #@352
    .line 730
    :catch_3
    move-exception v22

    #@353
    .line 731
    .local v22, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v24, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    #@355
    if-nez v24, :cond_14

    #@357
    new-instance v24, Ljava/lang/AssertionError;

    #@359
    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    #@35c
    throw v24

    #@35d
    .line 735
    .end local v22    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@360
    move-result-object v24

    #@361
    move-object/from16 v0, v24

    #@363
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@365
    move/from16 v24, v0

    #@367
    if-eqz v24, :cond_16

    #@369
    .line 736
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@36c
    move-result-object v24

    #@36d
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    #@370
    move-result-object v5

    #@371
    .line 737
    .local v5, "addr1":[B
    const/16 v24, 0x1

    #@373
    move-object/from16 v0, v18

    #@375
    move/from16 v1, v24

    #@377
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@37a
    .line 738
    move-object/from16 v0, v18

    #@37c
    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    #@37f
    .line 739
    shr-int/lit8 v24, v16, 0x8

    #@381
    move/from16 v0, v24

    #@383
    and-int/lit16 v0, v0, 0xff

    #@385
    move/from16 v24, v0

    #@387
    move-object/from16 v0, v18

    #@389
    move/from16 v1, v24

    #@38b
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@38e
    .line 740
    shr-int/lit8 v24, v16, 0x0

    #@390
    move/from16 v0, v24

    #@392
    and-int/lit16 v0, v0, 0xff

    #@394
    move/from16 v24, v0

    #@396
    move-object/from16 v0, v18

    #@398
    move/from16 v1, v24

    #@39a
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@39d
    .line 741
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    #@3a0
    goto :goto_3

    #@3a1
    .line 742
    .end local v5    # "addr1":[B
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@3a4
    move-result-object v24

    #@3a5
    move-object/from16 v0, v24

    #@3a7
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@3a9
    move/from16 v24, v0

    #@3ab
    if-eqz v24, :cond_17

    #@3ad
    .line 743
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@3b0
    move-result-object v24

    #@3b1
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getAddress()[B

    #@3b4
    move-result-object v5

    #@3b5
    .line 744
    .restart local v5    # "addr1":[B
    const/16 v24, 0x4

    #@3b7
    move-object/from16 v0, v18

    #@3b9
    move/from16 v1, v24

    #@3bb
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@3be
    .line 745
    move-object/from16 v0, v18

    #@3c0
    invoke-virtual {v0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    #@3c3
    .line 746
    shr-int/lit8 v24, v16, 0x8

    #@3c5
    move/from16 v0, v24

    #@3c7
    and-int/lit16 v0, v0, 0xff

    #@3c9
    move/from16 v24, v0

    #@3cb
    move-object/from16 v0, v18

    #@3cd
    move/from16 v1, v24

    #@3cf
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@3d2
    .line 747
    shr-int/lit8 v24, v16, 0x0

    #@3d4
    move/from16 v0, v24

    #@3d6
    and-int/lit16 v0, v0, 0xff

    #@3d8
    move/from16 v24, v0

    #@3da
    move-object/from16 v0, v18

    #@3dc
    move/from16 v1, v24

    #@3de
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    #@3e1
    .line 748
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    #@3e4
    goto/16 :goto_3

    #@3e6
    .line 750
    .end local v5    # "addr1":[B
    :cond_17
    move-object/from16 v0, p0

    #@3e8
    iget-object v0, v0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    #@3ea
    move-object/from16 v24, v0

    #@3ec
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->close()V

    #@3ef
    .line 751
    new-instance v24, Ljava/net/SocketException;

    #@3f1
    new-instance v25, Ljava/lang/StringBuilder;

    #@3f3
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@3f6
    const-string/jumbo v26, "unsupported address type : "

    #@3f9
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fc
    move-result-object v25

    #@3fd
    move-object/from16 v0, v25

    #@3ff
    move-object/from16 v1, p1

    #@401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@404
    move-result-object v25

    #@405
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@408
    move-result-object v25

    #@409
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@40c
    throw v24

    #@40d
    .line 761
    .restart local v9    # "ex":Ljava/net/SocketException;
    :pswitch_0
    const/16 v24, 0x3

    #@40f
    aget-byte v24, v6, v24

    #@411
    packed-switch v24, :pswitch_data_1

    #@414
    :pswitch_1
    goto/16 :goto_4

    #@416
    .line 763
    :pswitch_2
    const/16 v24, 0x4

    #@418
    move/from16 v0, v24

    #@41a
    new-array v4, v0, [B

    #@41c
    .line 764
    .local v4, "addr":[B
    move-object/from16 v0, p0

    #@41e
    invoke-direct {v0, v14, v4}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@421
    move-result v12

    #@422
    .line 765
    const/16 v24, 0x4

    #@424
    move/from16 v0, v24

    #@426
    if-eq v12, v0, :cond_18

    #@428
    .line 766
    new-instance v24, Ljava/net/SocketException;

    #@42a
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@42d
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@430
    throw v24

    #@431
    .line 767
    :cond_18
    const/16 v24, 0x2

    #@433
    move/from16 v0, v24

    #@435
    new-array v6, v0, [B

    #@437
    .line 768
    move-object/from16 v0, p0

    #@439
    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@43c
    move-result v12

    #@43d
    .line 769
    const/16 v24, 0x2

    #@43f
    move/from16 v0, v24

    #@441
    if-eq v12, v0, :cond_19

    #@443
    .line 770
    new-instance v24, Ljava/net/SocketException;

    #@445
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@448
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@44b
    throw v24

    #@44c
    .line 771
    :cond_19
    const/16 v24, 0x0

    #@44e
    aget-byte v24, v6, v24

    #@450
    move/from16 v0, v24

    #@452
    and-int/lit16 v0, v0, 0xff

    #@454
    move/from16 v24, v0

    #@456
    shl-int/lit8 v17, v24, 0x8

    #@458
    .line 772
    .local v17, "nport":I
    const/16 v24, 0x1

    #@45a
    aget-byte v24, v6, v24

    #@45c
    move/from16 v0, v24

    #@45e
    and-int/lit16 v0, v0, 0xff

    #@460
    move/from16 v24, v0

    #@462
    add-int v17, v17, v24

    #@464
    .line 774
    new-instance v24, Ljava/net/InetSocketAddress;

    #@466
    new-instance v25, Ljava/net/Inet4Address;

    #@468
    const-string/jumbo v26, ""

    #@46b
    move-object/from16 v0, v25

    #@46d
    move-object/from16 v1, v26

    #@46f
    invoke-direct {v0, v1, v4}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@472
    move-object/from16 v0, v24

    #@474
    move-object/from16 v1, v25

    #@476
    move/from16 v2, v17

    #@478
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@47b
    .line 773
    move-object/from16 v0, v24

    #@47d
    move-object/from16 v1, p0

    #@47f
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@481
    goto/16 :goto_4

    #@483
    .line 777
    .end local v4    # "addr":[B
    .end local v17    # "nport":I
    :pswitch_3
    const/16 v24, 0x1

    #@485
    aget-byte v15, v6, v24

    #@487
    .line 778
    .local v15, "len":I
    new-array v11, v15, [B

    #@489
    .line 779
    .local v11, "host":[B
    move-object/from16 v0, p0

    #@48b
    invoke-direct {v0, v14, v11}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@48e
    move-result v12

    #@48f
    .line 780
    if-eq v12, v15, :cond_1a

    #@491
    .line 781
    new-instance v24, Ljava/net/SocketException;

    #@493
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@496
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@499
    throw v24

    #@49a
    .line 782
    :cond_1a
    const/16 v24, 0x2

    #@49c
    move/from16 v0, v24

    #@49e
    new-array v6, v0, [B

    #@4a0
    .line 783
    move-object/from16 v0, p0

    #@4a2
    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@4a5
    move-result v12

    #@4a6
    .line 784
    const/16 v24, 0x2

    #@4a8
    move/from16 v0, v24

    #@4aa
    if-eq v12, v0, :cond_1b

    #@4ac
    .line 785
    new-instance v24, Ljava/net/SocketException;

    #@4ae
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@4b1
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@4b4
    throw v24

    #@4b5
    .line 786
    :cond_1b
    const/16 v24, 0x0

    #@4b7
    aget-byte v24, v6, v24

    #@4b9
    move/from16 v0, v24

    #@4bb
    and-int/lit16 v0, v0, 0xff

    #@4bd
    move/from16 v24, v0

    #@4bf
    shl-int/lit8 v17, v24, 0x8

    #@4c1
    .line 787
    .restart local v17    # "nport":I
    const/16 v24, 0x1

    #@4c3
    aget-byte v24, v6, v24

    #@4c5
    move/from16 v0, v24

    #@4c7
    and-int/lit16 v0, v0, 0xff

    #@4c9
    move/from16 v24, v0

    #@4cb
    add-int v17, v17, v24

    #@4cd
    .line 788
    new-instance v24, Ljava/net/InetSocketAddress;

    #@4cf
    new-instance v25, Ljava/lang/String;

    #@4d1
    move-object/from16 v0, v25

    #@4d3
    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    #@4d6
    move-object/from16 v0, v24

    #@4d8
    move-object/from16 v1, v25

    #@4da
    move/from16 v2, v17

    #@4dc
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@4df
    move-object/from16 v0, v24

    #@4e1
    move-object/from16 v1, p0

    #@4e3
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@4e5
    goto/16 :goto_4

    #@4e7
    .line 791
    .end local v11    # "host":[B
    .end local v15    # "len":I
    .end local v17    # "nport":I
    :pswitch_4
    const/16 v24, 0x1

    #@4e9
    aget-byte v15, v6, v24

    #@4eb
    .line 792
    .restart local v15    # "len":I
    new-array v4, v15, [B

    #@4ed
    .line 793
    .restart local v4    # "addr":[B
    move-object/from16 v0, p0

    #@4ef
    invoke-direct {v0, v14, v4}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@4f2
    move-result v12

    #@4f3
    .line 794
    if-eq v12, v15, :cond_1c

    #@4f5
    .line 795
    new-instance v24, Ljava/net/SocketException;

    #@4f7
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@4fa
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@4fd
    throw v24

    #@4fe
    .line 796
    :cond_1c
    const/16 v24, 0x2

    #@500
    move/from16 v0, v24

    #@502
    new-array v6, v0, [B

    #@504
    .line 797
    move-object/from16 v0, p0

    #@506
    invoke-direct {v0, v14, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[B)I

    #@509
    move-result v12

    #@50a
    .line 798
    const/16 v24, 0x2

    #@50c
    move/from16 v0, v24

    #@50e
    if-eq v12, v0, :cond_1d

    #@510
    .line 799
    new-instance v24, Ljava/net/SocketException;

    #@512
    const-string/jumbo v25, "Reply from SOCKS server badly formatted"

    #@515
    invoke-direct/range {v24 .. v25}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@518
    throw v24

    #@519
    .line 800
    :cond_1d
    const/16 v24, 0x0

    #@51b
    aget-byte v24, v6, v24

    #@51d
    move/from16 v0, v24

    #@51f
    and-int/lit16 v0, v0, 0xff

    #@521
    move/from16 v24, v0

    #@523
    shl-int/lit8 v17, v24, 0x8

    #@525
    .line 801
    .restart local v17    # "nport":I
    const/16 v24, 0x1

    #@527
    aget-byte v24, v6, v24

    #@529
    move/from16 v0, v24

    #@52b
    and-int/lit16 v0, v0, 0xff

    #@52d
    move/from16 v24, v0

    #@52f
    add-int v17, v17, v24

    #@531
    .line 803
    new-instance v24, Ljava/net/InetSocketAddress;

    #@533
    new-instance v25, Ljava/net/Inet6Address;

    #@535
    const-string/jumbo v26, ""

    #@538
    move-object/from16 v0, v25

    #@53a
    move-object/from16 v1, v26

    #@53c
    invoke-direct {v0, v1, v4}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[B)V

    #@53f
    move-object/from16 v0, v24

    #@541
    move-object/from16 v1, v25

    #@543
    move/from16 v2, v17

    #@545
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@548
    .line 802
    move-object/from16 v0, v24

    #@54a
    move-object/from16 v1, p0

    #@54c
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    #@54e
    goto/16 :goto_4

    #@550
    .line 808
    .end local v4    # "addr":[B
    .end local v15    # "len":I
    .end local v17    # "nport":I
    :pswitch_5
    new-instance v9, Ljava/net/SocketException;

    #@552
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS server general failure"

    #@555
    move-object/from16 v0, v24

    #@557
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@55a
    .line 809
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@55c
    .line 811
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_6
    new-instance v9, Ljava/net/SocketException;

    #@55e
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Bind not allowed by ruleset"

    #@561
    move-object/from16 v0, v24

    #@563
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@566
    .line 812
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@568
    .line 814
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_7
    new-instance v9, Ljava/net/SocketException;

    #@56a
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Network unreachable"

    #@56d
    move-object/from16 v0, v24

    #@56f
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@572
    .line 815
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@574
    .line 817
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_8
    new-instance v9, Ljava/net/SocketException;

    #@576
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Host unreachable"

    #@579
    move-object/from16 v0, v24

    #@57b
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@57e
    .line 818
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@580
    .line 820
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_9
    new-instance v9, Ljava/net/SocketException;

    #@582
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Connection refused"

    #@585
    move-object/from16 v0, v24

    #@587
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@58a
    .line 821
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@58c
    .line 823
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_a
    new-instance v9, Ljava/net/SocketException;

    #@58e
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: TTL expired"

    #@591
    move-object/from16 v0, v24

    #@593
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@596
    .line 824
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@598
    .line 826
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_b
    new-instance v9, Ljava/net/SocketException;

    #@59a
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: Command not supported"

    #@59d
    move-object/from16 v0, v24

    #@59f
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@5a2
    .line 827
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@5a4
    .line 829
    .local v9, "ex":Ljava/net/SocketException;
    :pswitch_c
    new-instance v9, Ljava/net/SocketException;

    #@5a6
    .end local v9    # "ex":Ljava/net/SocketException;
    const-string/jumbo v24, "SOCKS: address type not supported"

    #@5a9
    move-object/from16 v0, v24

    #@5ab
    invoke-direct {v9, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@5ae
    .line 830
    .local v9, "ex":Ljava/net/SocketException;
    goto/16 :goto_4

    #@5b0
    .line 839
    .end local v9    # "ex":Ljava/net/SocketException;
    :cond_1e
    move-object/from16 v0, p0

    #@5b2
    iput-object v14, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    #@5b4
    .line 840
    move-object/from16 v0, v18

    #@5b6
    move-object/from16 v1, p0

    #@5b8
    iput-object v0, v1, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@5ba
    monitor-exit p0

    #@5bb
    .line 584
    return-void

    #@5bc
    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    #@5d2
    .line 761
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

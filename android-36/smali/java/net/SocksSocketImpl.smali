.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist applicationSetProxy:Z

.field private blacklist cmdIn:Ljava/io/InputStream;

.field private blacklist cmdOut:Ljava/io/OutputStream;

.field private blacklist cmdsock:Ljava/net/Socket;

.field private blacklist external_address:Ljava/net/InetSocketAddress;

.field private blacklist server:Ljava/lang/String;

.field private blacklist serverPort:I

.field private blacklist useV4:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetserver(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserverPort(Ljava/net/SocksSocketImpl;)I
    .registers 1

    iget p0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcmdIn(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcmdOut(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msuperConnectServer(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 43
    return-void
.end method

.method constructor greylist <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v1, 0x438

    iput v1, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 59
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v1, 0x438

    iput v1, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 60
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, p2

    :goto_1a
    iput v1, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Proxy;)V
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 64
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v1, 0x438

    iput v1, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 65
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 66
    .local v0, "a":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2a

    .line 67
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 69
    .local v1, "ad":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 72
    .end local v1    # "ad":Ljava/net/InetSocketAddress;
    :cond_2a
    return-void
.end method

.method private blacklist authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .registers 10
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "method":B
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "method":B
    .local v2, "in":Ljava/io/InputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result p1

    return p1
.end method

.method private blacklist authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .registers 16
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const-string v0, "ISO-8859-1"

    const/4 v1, 0x1

    if-nez p1, :cond_6

    .line 148
    return v1

    .line 154
    :cond_6
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_80

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "password":Ljava/lang/String;
    iget-object v5, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 158
    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Ljava/net/SocksSocketImpl$2;

    invoke-direct {v6, p0, v5}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    .line 159
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/PasswordAuthentication;

    .line 166
    .local v6, "pw":Ljava/net/PasswordAuthentication;
    if-eqz v6, :cond_2d

    .line 167
    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "userName":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    move-object v4, v8

    goto :goto_3a

    .line 170
    .end local v7    # "userName":Ljava/lang/String;
    :cond_2d
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string v8, "user.name"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 173
    .restart local v7    # "userName":Ljava/lang/String;
    :goto_3a
    if-nez v7, :cond_3d

    .line 174
    return v3

    .line 175
    :cond_3d
    invoke-virtual {p3, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 176
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p3, v8}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 178
    :try_start_47
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4e} :catch_4f

    .line 181
    goto :goto_51

    .line 179
    :catch_4f
    move-exception v8

    .line 180
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    nop

    .line 182
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_51
    if-eqz v4, :cond_65

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p3, v8}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 185
    :try_start_5a
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_64

    .line 186
    :catch_62
    move-exception v0

    .line 187
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    nop

    .line 188
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_64
    goto :goto_68

    .line 190
    :cond_65
    invoke-virtual {p3, v3}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 191
    :goto_68
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 192
    new-array v0, v2, [B

    .line 193
    .local v0, "data":[B
    invoke-direct {p0, p2, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v8

    .line 194
    .local v8, "i":I
    if-ne v8, v2, :cond_79

    aget-byte v2, v0, v1

    if-eqz v2, :cond_78

    goto :goto_79

    .line 202
    :cond_78
    return v1

    .line 197
    :cond_79
    :goto_79
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 199
    return v3

    .line 258
    .end local v0    # "data":[B
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "pw":Ljava/net/PasswordAuthentication;
    .end local v7    # "userName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_80
    return v3
.end method

.method private blacklist connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .registers 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "endpoint"    # Ljava/net/InetSocketAddress;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_b1

    .line 267
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 269
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const/16 v3, 0x8

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 270
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const/4 v4, 0x0

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 271
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "userName":Ljava/lang/String;
    :try_start_36
    const-string v5, "ISO-8859-1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3f} :catch_40

    .line 277
    goto :goto_42

    .line 275
    :catch_40
    move-exception v5

    .line 276
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    nop

    .line 278
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_42
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 279
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 280
    new-array v5, v3, [B

    .line 281
    .local v5, "data":[B
    invoke-direct {p0, p1, v5, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v6

    .line 282
    .local v6, "n":I
    if-ne v6, v3, :cond_98

    .line 284
    aget-byte v3, v5, v4

    if-eqz v3, :cond_61

    aget-byte v3, v5, v4

    if-ne v3, v0, :cond_59

    goto :goto_61

    .line 285
    :cond_59
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Reply from SOCKS server has bad version"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_61
    :goto_61
    const/4 v0, 0x0

    .line 287
    .local v0, "ex":Ljava/net/SocketException;
    aget-byte v1, v5, v1

    packed-switch v1, :pswitch_data_ba

    .line 302
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "Reply from SOCKS server contains bad status"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_8e

    .line 299
    :pswitch_70
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "SOCKS authentication failed"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 300
    goto :goto_8e

    .line 296
    :pswitch_79
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "SOCKS server couldn\'t reach destination"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 297
    goto :goto_8e

    .line 293
    :pswitch_82
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "SOCKS request rejected"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 294
    goto :goto_8e

    .line 290
    :pswitch_8b
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    .line 291
    nop

    .line 305
    :goto_8e
    if-nez v0, :cond_91

    .line 310
    return-void

    .line 306
    :cond_91
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 307
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 308
    throw v0

    .line 283
    .end local v0    # "ex":Ljava/net/SocketException;
    :cond_98
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reply from SOCKS server has bad length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local v2    # "userName":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "n":I
    :cond_b1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_ba
    .packed-switch 0x5a
        :pswitch_8b
        :pswitch_82
        :pswitch_79
        :pswitch_70
    .end packed-switch
.end method

.method private blacklist getUserName()Ljava/lang/String;
    .registers 4

    .line 1093
    const-string v0, ""

    .line 1094
    .local v0, "userName":Ljava/lang/String;
    iget-boolean v1, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    const-string v2, "user.name"

    if-eqz v1, :cond_10

    .line 1096
    :try_start_8
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_f

    .line 1097
    :catch_e
    move-exception v1

    :goto_f
    goto :goto_1c

    .line 1099
    :cond_10
    new-instance v1, Lsun/security/action/GetPropertyAction;

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1102
    :goto_1c
    return-object v0
.end method

.method private declared-synchronized blacklist privilegedConnect(Ljava/lang/String;II)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    new-instance v0, Ljava/net/SocksSocketImpl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_9} :catch_e
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 95
    nop

    .line 96
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Ljava/net/SocksSocketImpl;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    :catchall_c
    move-exception p1

    goto :goto_16

    .line 93
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "timeout":I
    :catch_e
    move-exception v0

    .line 94
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_f
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 83
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_c

    throw p1
.end method

.method private blacklist readSocksReply(Ljava/io/InputStream;[B)I
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v0

    return v0
.end method

.method private blacklist readSocksReply(Ljava/io/InputStream;[BJ)I
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .param p3, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    array-length v0, p2

    .line 120
    .local v0, "len":I
    const/4 v1, 0x0

    .line 121
    .local v1, "received":I
    :goto_2
    if-ge v1, v0, :cond_27

    .line 124
    :try_start_4
    move-object v2, p1

    check-cast v2, Ljava/net/SocketInputStream;

    sub-int v3, v0, v1

    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v4

    invoke-virtual {v2, p2, v1, v3, v4}, Ljava/net/SocketInputStream;->read([BIII)I

    move-result v2
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_11} :catch_1e

    .line 127
    .local v2, "count":I
    nop

    .line 128
    if-ltz v2, :cond_16

    .line 130
    add-int/2addr v1, v2

    .line 131
    .end local v2    # "count":I
    goto :goto_2

    .line 129
    .restart local v2    # "count":I
    :cond_16
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Malformed reply from SOCKS server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v2    # "count":I
    :catch_1e
    move-exception v2

    .line 126
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v4, "Connect timed out"

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_27
    return v1
.end method

.method private static blacklist remainingMillis(J)I
    .registers 6
    .param p0, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_8

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, p0, v2

    .line 108
    .local v2, "remaining":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_14

    .line 109
    long-to-int v0, v2

    return v0

    .line 111
    :cond_14
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
.end method

.method private blacklist superConnectServer(Ljava/lang/String;II)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 1087
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1088
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 1089
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    .line 1090
    return-void
.end method

.method protected whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 21
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    if-nez v8, :cond_c

    .line 331
    const-wide/16 v2, 0x0

    move-wide v5, v2

    .local v2, "deadlineMillis":J
    goto :goto_20

    .line 333
    .end local v2    # "deadlineMillis":J
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v8

    add-long/2addr v2, v4

    .line 334
    .local v2, "finish":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1e

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1f

    :cond_1e
    move-wide v4, v2

    :goto_1f
    move-wide v5, v4

    .line 337
    .end local v2    # "finish":J
    .local v5, "deadlineMillis":J
    :goto_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 338
    .local v9, "security":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_2b3

    instance-of v0, v7, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2b3

    .line 340
    move-object v4, v7

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 341
    .local v4, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v9, :cond_50

    .line 342
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 343
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 343
    invoke-virtual {v9, v0, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_50

    .line 346
    :cond_41
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 346
    invoke-virtual {v9, v0, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 349
    :cond_50
    :goto_50
    iget-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    if-nez v0, :cond_5c

    .line 436
    invoke-static {v5, v6}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v0

    invoke-super {v1, v4, v0}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 437
    return-void

    .line 441
    :cond_5c
    :try_start_5c
    iget-object v0, v1, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    iget v2, v1, Ljava/net/SocksSocketImpl;->serverPort:I

    invoke-static {v5, v6}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_67} :catch_2a8

    .line 444
    nop

    .line 448
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v0, v1, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    const/16 v2, 0x200

    invoke-direct {v3, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 449
    .local v3, "out":Ljava/io/BufferedOutputStream;
    iget-object v2, v1, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 451
    .local v2, "in":Ljava/io/InputStream;
    iget-boolean v0, v1, Ljava/net/SocksSocketImpl;->useV4:Z

    if-eqz v0, :cond_8d

    .line 454
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_82

    .line 456
    invoke-direct/range {v1 .. v6}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 457
    move-object v10, v4

    .end local v4    # "epoint":Ljava/net/InetSocketAddress;
    .local v10, "epoint":Ljava/net/InetSocketAddress;
    return-void

    .line 455
    .end local v10    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v4    # "epoint":Ljava/net/InetSocketAddress;
    :cond_82
    move-object v10, v4

    .end local v4    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v10    # "epoint":Ljava/net/InetSocketAddress;
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    .end local v10    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v4    # "epoint":Ljava/net/InetSocketAddress;
    :cond_8d
    move-object v10, v4

    .end local v4    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v10    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 462
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 463
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 464
    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 465
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 466
    new-array v13, v11, [B

    .line 467
    .local v13, "data":[B
    invoke-direct {v1, v2, v13, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v14

    .line 468
    .local v14, "i":I
    if-ne v14, v11, :cond_28e

    aget-byte v4, v13, v12

    if-eq v4, v0, :cond_b0

    move-object/from16 v16, v3

    goto/16 :goto_290

    .line 478
    :cond_b0
    const/4 v15, 0x1

    aget-byte v4, v13, v15

    const/4 v11, -0x1

    if-eq v4, v11, :cond_284

    .line 480
    move-object v4, v3

    move-object v3, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    aget-byte v2, v13, v15

    invoke-direct/range {v1 .. v6}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v2

    move-object/from16 v17, v4

    move v4, v2

    move-object v2, v3

    move-object/from16 v3, v17

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    if-eqz v4, :cond_27a

    .line 483
    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 484
    invoke-virtual {v3, v15}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 485
    invoke-virtual {v3, v12}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 487
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    const/4 v4, 0x3

    const/4 v11, 0x4

    if-eqz v0, :cond_111

    .line 488
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 489
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 491
    :try_start_e5
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_e9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e5 .. :try_end_e9} :catch_f7

    move/from16 v16, v4

    :try_start_eb
    const-string v4, "ISO-8859-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_f4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_eb .. :try_end_f4} :catch_f5

    .line 494
    goto :goto_fb

    .line 492
    :catch_f5
    move-exception v0

    goto :goto_fa

    :catch_f7
    move-exception v0

    move/from16 v16, v4

    .line 493
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_fa
    nop

    .line 495
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_fb
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 496
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/2addr v0, v12

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_162

    .line 497
    :cond_111
    move/from16 v16, v4

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_13f

    .line 498
    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 499
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 500
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 501
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/2addr v0, v12

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_162

    .line 503
    :cond_13f
    invoke-virtual {v3, v15}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 504
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 505
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 506
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    shr-int/2addr v0, v12

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 508
    :goto_162
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 509
    new-array v0, v11, [B

    .line 510
    .end local v13    # "data":[B
    .local v0, "data":[B
    invoke-direct {v1, v2, v0, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 511
    .end local v14    # "i":I
    .local v4, "i":I
    if-ne v4, v11, :cond_270

    .line 513
    const/4 v13, 0x0

    .line 516
    .local v13, "ex":Ljava/net/SocketException;
    aget-byte v14, v0, v15

    packed-switch v14, :pswitch_data_2bc

    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v16, "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_264

    .line 583
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_177
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: address type not supported"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 580
    :pswitch_183
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: Command not supported"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 581
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 577
    :pswitch_18f
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: TTL expired"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 578
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 574
    :pswitch_19b
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: Connection refused"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 575
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 571
    :pswitch_1a7
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: Host unreachable"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 572
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 568
    :pswitch_1b3
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: Network unreachable"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 569
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 565
    :pswitch_1bf
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS: Connection not allowed by ruleset"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 566
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 562
    :pswitch_1cb
    new-instance v11, Ljava/net/SocketException;

    const-string v12, "SOCKS server general failure"

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v11

    .line 563
    move-object/from16 v16, v3

    goto/16 :goto_264

    .line 519
    :pswitch_1d7
    aget-byte v14, v0, v16

    move/from16 v16, v12

    const-string v12, "Reply from SOCKS server badly formatted"

    packed-switch v14, :pswitch_data_2d2

    .line 557
    :pswitch_1e0
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/net/SocketException;

    const-string v11, "Reply from SOCKS server contains wrong code"

    invoke-direct {v3, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    .line 558
    goto/16 :goto_264

    .line 546
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_1ec
    const/16 v11, 0x10

    .line 547
    .local v11, "len":I
    new-array v14, v11, [B

    .line 548
    .local v14, "addr":[B
    invoke-direct {v1, v2, v14, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 549
    if-ne v4, v11, :cond_208

    .line 551
    const/4 v15, 0x2

    new-array v0, v15, [B

    .line 552
    invoke-direct {v1, v2, v0, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 553
    if-ne v4, v15, :cond_202

    move-object/from16 v16, v3

    goto :goto_264

    .line 554
    :cond_202
    new-instance v15, Ljava/net/SocketException;

    invoke-direct {v15, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 550
    :cond_208
    new-instance v15, Ljava/net/SocketException;

    invoke-direct {v15, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 531
    .end local v11    # "len":I
    .end local v14    # "addr":[B
    :pswitch_20e
    new-array v11, v15, [B

    .line 532
    .local v11, "lenByte":[B
    invoke-direct {v1, v2, v11, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 533
    if-ne v4, v15, :cond_23c

    .line 535
    aget-byte v14, v11, v16

    and-int/lit16 v14, v14, 0xff

    .line 536
    .local v14, "len":I
    new-array v15, v14, [B

    .line 537
    .local v15, "host":[B
    invoke-direct {v1, v2, v15, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 538
    if-ne v4, v14, :cond_234

    .line 540
    move-object/from16 v16, v3

    const/4 v3, 0x2

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-array v0, v3, [B

    .line 541
    invoke-direct {v1, v2, v0, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 542
    if-ne v4, v3, :cond_22e

    goto :goto_264

    .line 543
    :cond_22e
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 539
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :cond_234
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    .end local v14    # "len":I
    .end local v15    # "host":[B
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :cond_23c
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    .end local v11    # "lenByte":[B
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_244
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-array v3, v11, [B

    .line 522
    .local v3, "addr":[B
    invoke-direct {v1, v2, v3, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 523
    if-ne v4, v11, :cond_25e

    .line 525
    const/4 v15, 0x2

    new-array v0, v15, [B

    .line 526
    invoke-direct {v1, v2, v0, v5, v6}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v4

    .line 527
    if-ne v4, v15, :cond_258

    goto :goto_264

    .line 528
    :cond_258
    new-instance v11, Ljava/net/SocketException;

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 524
    :cond_25e
    new-instance v11, Ljava/net/SocketException;

    invoke-direct {v11, v12}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 586
    .end local v3    # "addr":[B
    :goto_264
    if-nez v13, :cond_269

    .line 591
    iput-object v10, v1, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    .line 592
    return-void

    .line 587
    :cond_269
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 588
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedOutputStream;->close()V

    .line 589
    throw v13

    .line 512
    .end local v13    # "ex":Ljava/net/SocketException;
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :cond_270
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/net/SocketException;

    const-string v11, "Reply from SOCKS server has bad length"

    invoke-direct {v3, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    .end local v0    # "data":[B
    .end local v4    # "i":I
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v13, "data":[B
    .local v14, "i":I
    :cond_27a
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/net/SocketException;

    const-string v3, "SOCKS : authentication failed"

    invoke-direct {v0, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :cond_284
    move-object/from16 v16, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    new-instance v0, Ljava/net/SocketException;

    const-string v3, "SOCKS : No acceptable methods"

    invoke-direct {v0, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :cond_28e
    move-object/from16 v16, v3

    .line 473
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    :goto_290
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_29d

    .line 475
    move-object v4, v10

    move-object/from16 v3, v16

    .end local v10    # "epoint":Ljava/net/InetSocketAddress;
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "epoint":Ljava/net/InetSocketAddress;
    invoke-direct/range {v1 .. v6}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 476
    return-void

    .line 474
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v10    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v16    # "out":Ljava/io/BufferedOutputStream;
    :cond_29d
    move-object v4, v10

    .end local v10    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v4    # "epoint":Ljava/net/InetSocketAddress;
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v13    # "data":[B
    .end local v14    # "i":I
    .end local v16    # "out":Ljava/io/BufferedOutputStream;
    :catch_2a8
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "epoint":Ljava/net/InetSocketAddress;
    :cond_2b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2bc
    .packed-switch 0x0
        :pswitch_1d7
        :pswitch_1cb
        :pswitch_1bf
        :pswitch_1b3
        :pswitch_1a7
        :pswitch_19b
        :pswitch_18f
        :pswitch_183
        :pswitch_177
    .end packed-switch

    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_244
        :pswitch_1e0
        :pswitch_20e
        :pswitch_1ec
    .end packed-switch
.end method

.method protected whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1054
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_b

    .line 1055
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 1057
    :cond_b
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api getLocalPort()I
    .registers 2

    .line 1076
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 1077
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    .line 1078
    :cond_9
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_14

    .line 1079
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 1081
    :cond_14
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api getPort()I
    .registers 2

    .line 1068
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_b

    .line 1069
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 1071
    :cond_b
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method blacklist setV4()V
    .registers 2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 76
    return-void
.end method

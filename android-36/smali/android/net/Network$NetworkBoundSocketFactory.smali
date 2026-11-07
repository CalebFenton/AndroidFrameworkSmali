.class Landroid/net/Network$NetworkBoundSocketFactory;
.super Ljavax/net/SocketFactory;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoundSocketFactory"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/Network;


# direct methods
.method private constructor blacklist <init>(Landroid/net/Network;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Network;Landroid/net/Network-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;)V

    return-void
.end method

.method private greylist-max-o connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 206
    .local v0, "hostAddresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 208
    :try_start_a
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_2e

    .line 209
    .local v2, "socket":Ljava/net/Socket;
    const/4 v3, 0x1

    .line 211
    .local v3, "failed":Z
    if-eqz p3, :cond_14

    :try_start_11
    invoke-virtual {v2, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 212
    :cond_14
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v1

    invoke-direct {v4, v5, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_26

    .line 213
    const/4 v3, 0x0

    .line 214
    nop

    .line 216
    if-eqz v3, :cond_25

    :try_start_22
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 214
    :cond_25
    return-object v2

    .line 216
    :catchall_26
    move-exception v4

    if-eqz v3, :cond_2c

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 217
    :cond_2c
    nop

    .end local v0    # "hostAddresses":[Ljava/net/InetAddress;
    .end local v1    # "i":I
    .end local p0    # "this":Landroid/net/Network$NetworkBoundSocketFactory;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "localAddress":Ljava/net/SocketAddress;
    throw v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_2e

    .line 218
    .end local v2    # "socket":Ljava/net/Socket;
    .end local v3    # "failed":Z
    .restart local v0    # "hostAddresses":[Ljava/net/InetAddress;
    .restart local v1    # "i":I
    .restart local p0    # "this":Landroid/net/Network$NetworkBoundSocketFactory;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "localAddress":Ljava/net/SocketAddress;
    :catch_2e
    move-exception v2

    .line 219
    .local v2, "e":Ljava/io/IOException;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_37

    .line 206
    .end local v2    # "e":Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 219
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_37
    throw v2

    .line 222
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_38
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 267
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 269
    .local v1, "failed":Z
    :try_start_6
    iget-object v2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v2, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_12

    .line 270
    const/4 v1, 0x0

    .line 272
    if-eqz v1, :cond_11

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 274
    :cond_11
    return-object v0

    .line 272
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 273
    :cond_18
    throw v2
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 249
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 251
    .local v1, "failed":Z
    :try_start_5
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_14

    .line 252
    const/4 v1, 0x0

    .line 254
    if-eqz v1, :cond_13

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 256
    :cond_13
    return-object v0

    .line 254
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1a

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 255
    :cond_1a
    throw v2
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 235
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 237
    .local v1, "failed":Z
    :try_start_5
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 238
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    .line 239
    const/4 v1, 0x0

    .line 241
    if-eqz v1, :cond_1b

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 243
    :cond_1b
    return-object v0

    .line 241
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_22

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 242
    :cond_22
    throw v2
.end method

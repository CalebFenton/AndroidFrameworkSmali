.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# static fields
.field private static final blacklist serverSocketOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist socketOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected whitelist test-api address:Ljava/net/InetAddress;

.field protected whitelist test-api fd:Ljava/io/FileDescriptor;

.field protected whitelist test-api localport:I

.field protected whitelist test-api port:I

.field greylist serverSocket:Ljava/net/ServerSocket;

.field greylist socket:Ljava/net/Socket;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 464
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    sget-object v6, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-static/range {v0 .. v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/net/SocketImpl;->socketOptions:Ljava/util/Set;

    .line 472
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/net/SocketImpl;->serverSocketOptions:Ljava/util/Set;

    .line 475
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 51
    iput-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public greylist-max-o test-api getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .line 240
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist test-api getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 228
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 250
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract whitelist test-api getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api getLocalPort()I
    .registers 2

    .line 293
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method protected whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_11

    .line 434
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 435
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 436
    :cond_11
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_22

    .line 437
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 438
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 439
    :cond_22
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2d

    .line 440
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 441
    :cond_2d
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_37

    .line 442
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 443
    :cond_37
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEPORT:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4c

    .line 444
    invoke-virtual {p0}, Ljava/net/SocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 445
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 446
    :cond_4c
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5d

    .line 447
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 448
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 449
    :cond_5d
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_67

    .line 450
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 451
    :cond_67
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_77

    .line 452
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 455
    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api getPort()I
    .registers 2

    .line 260
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method greylist-max-o getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 309
    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method greylist-max-o getSocket()Ljava/net/Socket;
    .registers 2

    .line 301
    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract whitelist test-api listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/SocketImpl;->port:I

    .line 325
    iput v0, p0, Ljava/net/SocketImpl;->localport:I

    .line 326
    return-void
.end method

.method protected abstract whitelist test-api sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_10

    .line 391
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 392
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 393
    :cond_10
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_20

    .line 394
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 395
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 396
    :cond_20
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2a

    .line 397
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 398
    :cond_2a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_33

    .line 399
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 400
    :cond_33
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEPORT:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_47

    .line 401
    invoke-virtual {p0}, Ljava/net/SocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 402
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 403
    :cond_47
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_57

    .line 404
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 405
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 406
    :cond_57
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_60

    .line 407
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_6e

    .line 408
    :cond_60
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6f

    .line 409
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 414
    :goto_6e
    return-void

    .line 412
    :cond_6f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 371
    return-void
.end method

.method greylist-max-o setServerSocket(Ljava/net/ServerSocket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/ServerSocket;

    .line 305
    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 306
    return-void
.end method

.method greylist-max-o setSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/Socket;

    .line 297
    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 298
    return-void
.end method

.method protected whitelist test-api shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 487
    sget-object v0, Ljava/net/SocketImpl;->socketOptions:Ljava/util/Set;

    return-object v0

    .line 489
    :cond_9
    sget-object v0, Ljava/net/SocketImpl;->serverSocketOptions:Ljava/util/Set;

    return-object v0
.end method

.method protected whitelist test-api supportsUrgentData()Z
    .registers 2

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    return-object v0
.end method

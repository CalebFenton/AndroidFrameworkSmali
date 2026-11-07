.class Ljava/net/SocketSecrets;
.super Ljava/lang/Object;
.source "SocketSecrets.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getOption(Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 53
    move-object v0, p0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .local v0, "impl":Ljava/net/SocketImpl;
    goto :goto_17

    .line 54
    .end local v0    # "impl":Ljava/net/SocketImpl;
    :cond_c
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_1c

    .line 55
    move-object v0, p0

    check-cast v0, Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .line 59
    .restart local v0    # "impl":Ljava/net/SocketImpl;
    :goto_17
    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 57
    .end local v0    # "impl":Ljava/net/SocketImpl;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static blacklist getOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 3
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist setOption(Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 40
    move-object v0, p0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .local v0, "impl":Ljava/net/SocketImpl;
    goto :goto_17

    .line 41
    .end local v0    # "impl":Ljava/net/SocketImpl;
    :cond_c
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_1b

    .line 42
    move-object v0, p0

    check-cast v0, Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    .line 46
    .restart local v0    # "impl":Ljava/net/SocketImpl;
    :goto_17
    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 47
    return-void

    .line 44
    .end local v0    # "impl":Ljava/net/SocketImpl;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static blacklist setOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 4
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.class public abstract Ljava/nio/channels/AsynchronousSocketChannel;
.super Ljava/lang/Object;
.source "AsynchronousSocketChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousByteChannel;
.implements Ljava/nio/channels/NetworkChannel;


# instance fields
.field private final greylist-max-o provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/nio/channels/AsynchronousSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 137
    return-void
.end method

.method public static whitelist test-api open()Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 3
    .param p0, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-nez p0, :cond_7

    .line 173
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/nio/channels/AsynchronousChannelGroup;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 174
    .local v0, "provider":Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :goto_b
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider;->openAsynchronousSocketChannel(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Ljava/nio/channels/AsynchronousSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api connect(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api connect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Void;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getRemoteAddress()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 2

    .line 145
    iget-object v0, p0, Ljava/nio/channels/AsynchronousSocketChannel;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final whitelist test-api read(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 425
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v1, "dst":Ljava/nio/ByteBuffer;
    .local v5, "attachment":Ljava/lang/Object;, "TA;"
    .local v6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    .line 426
    return-void
.end method

.method public abstract whitelist test-api read([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/AsynchronousSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api shutdownInput()Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final whitelist test-api write(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 582
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v1, "src":Ljava/nio/ByteBuffer;
    .local v5, "attachment":Ljava/lang/Object;, "TA;"
    .local v6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    .line 583
    return-void
.end method

.method public abstract whitelist test-api write([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.class Lsun/nio/ch/SocketAdaptor$SocketInputStream;
.super Lsun/nio/ch/ChannelInputStream;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method private constructor blacklist <init>(Lsun/nio/ch/SocketAdaptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    .line 199
    invoke-static {p1}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object p1

    invoke-direct {p0, p1}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 200
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    return-void
.end method


# virtual methods
.method protected blacklist read(Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v0}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 206
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v1}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 208
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v1}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgettimeout(Lsun/nio/ch/SocketAdaptor;)I

    move-result v1

    if-nez v1, :cond_2b

    .line 209
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v1}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 210
    :cond_2b
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v1}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_dc

    .line 214
    const/4 v1, 0x1

    :try_start_36
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_be

    move v3, v2

    .local v3, "n":I
    if-eqz v2, :cond_5b

    .line 215
    nop

    .line 231
    :try_start_44
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 232
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_dc

    .line 215
    return v3

    .line 216
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgettimeout(Lsun/nio/ch/SocketAdaptor;)I

    move-result v2

    int-to-long v4, v2

    .line 218
    .local v4, "to":J
    :goto_62
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 221
    .local v6, "st":J
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v2}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v2

    sget-short v8, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v2, v8, v4, v5}, Lsun/nio/ch/SocketChannelImpl;->poll(IJ)I

    move-result v2

    .line 222
    .local v2, "result":I
    if-lez v2, :cond_a5

    .line 223
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v8}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v8

    invoke-virtual {v8, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_be

    move v3, v8

    if-eqz v8, :cond_a5

    .line 224
    nop

    .line 231
    :try_start_8e
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v8}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v8

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 232
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v8}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v8

    invoke-virtual {v8, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_dc

    .line 224
    return v3

    .line 226
    :cond_a5
    :try_start_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 227
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_b2

    .line 229
    .end local v2    # "result":I
    .end local v6    # "st":J
    goto :goto_62

    .line 228
    .restart local v2    # "result":I
    .restart local v6    # "st":J
    :cond_b2
    new-instance v8, Ljava/net/SocketTimeoutException;

    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v8

    .line 219
    .end local v2    # "result":I
    .end local v6    # "st":J
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :cond_b8
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_be
    .catchall {:try_start_a5 .. :try_end_be} :catchall_be

    .line 231
    .end local v3    # "n":I
    .end local v4    # "to":J
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :catchall_be
    move-exception v2

    :try_start_bf
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 232
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 233
    :cond_d4
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v2

    .line 207
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :cond_d6
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v1

    .line 235
    .restart local p0    # "this":Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :catchall_dc
    move-exception v1

    monitor-exit v0
    :try_end_de
    .catchall {:try_start_bf .. :try_end_de} :catchall_dc

    throw v1
.end method

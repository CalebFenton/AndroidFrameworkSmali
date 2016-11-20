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
.field final synthetic this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method private constructor <init>(Lsun/nio/ch/SocketAdaptor;)V
    .locals 1
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@2
    .line 210
    invoke-static {p1}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    #@9
    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor$SocketInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    #@3
    return-void
.end method


# virtual methods
.method protected read(Ljava/nio/ByteBuffer;)I
    .locals 18
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@4
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    #@b
    move-result-object v17

    #@c
    monitor-enter v17

    #@d
    .line 217
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@11
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 218
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    #@1d
    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@20
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 216
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v17

    #@23
    throw v3

    #@24
    .line 219
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@28
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 220
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@32
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@35
    move-result-object v3

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v3

    #@3c
    monitor-exit v17

    #@3d
    return v3

    #@3e
    .line 223
    :cond_1
    const/4 v11, 0x0

    #@3f
    .line 224
    .local v11, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v10, 0x0

    #@40
    .line 225
    .local v10, "sel":Ljava/nio/channels/Selector;
    :try_start_2
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@44
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@47
    move-result-object v3

    #@48
    const/4 v4, 0x0

    #@49
    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@4c
    .line 226
    const/4 v8, 0x0

    #@4d
    .line 227
    .local v8, "n":I
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    move-result-object v2

    #@51
    .line 229
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_3
    move-object/from16 v0, p0

    #@53
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@55
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@58
    move-result-object v3

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5e
    move-result v8

    #@5f
    if-eqz v8, :cond_4

    #@61
    .line 249
    :try_start_4
    move-object/from16 v0, p0

    #@63
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@65
    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    #@68
    move-result-object v3

    #@69
    .line 250
    move-object/from16 v0, p0

    #@6b
    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@6d
    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    #@70
    move-result v4

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@75
    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    #@78
    move-result v5

    #@79
    if-lez v8, :cond_3

    #@7b
    move v6, v8

    #@7c
    :goto_0
    int-to-long v6, v6

    #@7d
    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@80
    .line 253
    move-object/from16 v0, p0

    #@82
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@84
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@8b
    move-result v3

    #@8c
    if-eqz v3, :cond_2

    #@8e
    .line 254
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@92
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@95
    move-result-object v3

    #@96
    const/4 v4, 0x1

    #@97
    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9a
    :cond_2
    monitor-exit v17

    #@9b
    .line 230
    return v8

    #@9c
    .line 250
    :cond_3
    const/4 v6, 0x0

    #@9d
    goto :goto_0

    #@9e
    .line 231
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@a2
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@a5
    move-result-object v3

    #@a6
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    #@a9
    move-result-object v10

    #@aa
    .line 232
    .local v10, "sel":Ljava/nio/channels/Selector;
    move-object/from16 v0, p0

    #@ac
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@ae
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@b1
    move-result-object v3

    #@b2
    const/4 v4, 0x1

    #@b3
    invoke-virtual {v3, v10, v4}, Lsun/nio/ch/SocketChannelImpl;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    #@b6
    move-result-object v11

    #@b7
    .line 233
    .local v11, "sk":Ljava/nio/channels/SelectionKey;
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@bb
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    #@be
    move-result v3

    #@bf
    int-to-long v14, v3

    #@c0
    .line 235
    .local v14, "to":J
    :cond_5
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@c4
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@cb
    move-result v3

    #@cc
    if-nez v3, :cond_9

    #@ce
    .line 236
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    #@d0
    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@d3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@d4
    .line 248
    .end local v10    # "sel":Ljava/nio/channels/Selector;
    .end local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v14    # "to":J
    :catchall_1
    move-exception v3

    #@d5
    move-object/from16 v16, v3

    #@d7
    .line 249
    :try_start_6
    move-object/from16 v0, p0

    #@d9
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@db
    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    #@de
    move-result-object v3

    #@df
    .line 250
    move-object/from16 v0, p0

    #@e1
    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@e3
    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    #@e6
    move-result v4

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@eb
    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    #@ee
    move-result v5

    #@ef
    if-lez v8, :cond_f

    #@f1
    .end local v8    # "n":I
    :goto_1
    int-to-long v6, v8

    #@f2
    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@f5
    .line 251
    if-eqz v11, :cond_6

    #@f7
    .line 252
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@fa
    .line 253
    :cond_6
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@fe
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@101
    move-result-object v3

    #@102
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_7

    #@108
    .line 254
    move-object/from16 v0, p0

    #@10a
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@10c
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@10f
    move-result-object v3

    #@110
    const/4 v4, 0x1

    #@111
    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@114
    .line 255
    :cond_7
    if-eqz v10, :cond_8

    #@116
    .line 256
    invoke-static {v10}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    #@119
    .line 248
    :cond_8
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@11a
    .line 237
    .restart local v8    # "n":I
    .restart local v10    # "sel":Ljava/nio/channels/Selector;
    .restart local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v14    # "to":J
    :cond_9
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11d
    move-result-wide v12

    #@11e
    .line 238
    .local v12, "st":J
    invoke-virtual {v10, v14, v15}, Ljava/nio/channels/Selector;->select(J)I

    #@121
    move-result v9

    #@122
    .line 239
    .local v9, "ns":I
    if-lez v9, :cond_e

    #@124
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    #@127
    move-result v3

    #@128
    if-eqz v3, :cond_e

    #@12a
    .line 240
    move-object/from16 v0, p0

    #@12c
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@12e
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@131
    move-result-object v3

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@137
    move-result v8

    #@138
    if-eqz v8, :cond_e

    #@13a
    .line 249
    :try_start_8
    move-object/from16 v0, p0

    #@13c
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@13e
    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    #@141
    move-result-object v3

    #@142
    .line 250
    move-object/from16 v0, p0

    #@144
    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@146
    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    #@149
    move-result v4

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@14e
    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    #@151
    move-result v5

    #@152
    if-lez v8, :cond_d

    #@154
    move v6, v8

    #@155
    :goto_2
    int-to-long v6, v6

    #@156
    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@159
    .line 251
    if-eqz v11, :cond_a

    #@15b
    .line 252
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@15e
    .line 253
    :cond_a
    move-object/from16 v0, p0

    #@160
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@162
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@169
    move-result v3

    #@16a
    if-eqz v3, :cond_b

    #@16c
    .line 254
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@170
    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@173
    move-result-object v3

    #@174
    const/4 v4, 0x1

    #@175
    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    #@178
    .line 255
    :cond_b
    if-eqz v10, :cond_c

    #@17a
    .line 256
    invoke-static {v10}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@17d
    :cond_c
    monitor-exit v17

    #@17e
    .line 241
    return v8

    #@17f
    .line 250
    :cond_d
    const/4 v6, 0x0

    #@180
    goto :goto_2

    #@181
    .line 243
    :cond_e
    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    #@184
    move-result-object v3

    #@185
    invoke-interface {v3, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@188
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18b
    move-result-wide v4

    #@18c
    sub-long/2addr v4, v12

    #@18d
    sub-long/2addr v14, v4

    #@18e
    .line 245
    const-wide/16 v4, 0x0

    #@190
    cmp-long v3, v14, v4

    #@192
    if-gtz v3, :cond_5

    #@194
    .line 246
    new-instance v3, Ljava/net/SocketTimeoutException;

    #@196
    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    #@199
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@19a
    .line 250
    .end local v9    # "ns":I
    .end local v10    # "sel":Ljava/nio/channels/Selector;
    .end local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v12    # "st":J
    .end local v14    # "to":J
    :cond_f
    const/4 v8, 0x0

    #@19b
    goto/16 :goto_1
.end method

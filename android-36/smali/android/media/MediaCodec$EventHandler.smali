.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private greylist-max-o mCodec:Landroid/media/MediaCodec;

.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .registers 4
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1864
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    .line 1865
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1866
    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    .line 1867
    return-void
.end method

.method private greylist-max-o handleCallback(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1917
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1918
    return-void

    .line 1921
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_206

    :pswitch_10
    goto/16 :goto_205

    .line 2042
    :pswitch_12
    invoke-static {}, Landroid/media/codec/Flags;->codecAvailability()Z

    move-result v0

    if-eqz v0, :cond_205

    .line 2043
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$Callback;->onRequiredResourcesChanged(Landroid/media/MediaCodec;)V

    goto/16 :goto_205

    .line 2035
    :pswitch_25
    new-instance v0, Landroid/media/MediaCodec$EventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaCodec$EventHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 2036
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onMetricsFlushed(Landroid/media/MediaCodec;Landroid/os/PersistableBundle;)V

    goto/16 :goto_205

    .line 1983
    :pswitch_41
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1984
    .local v0, "index":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    .line 1985
    .local v3, "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1986
    :try_start_4e
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v5

    packed-switch v5, :pswitch_data_21c

    .line 2004
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_ae

    .line 1992
    :goto_5a
    :pswitch_5a
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v0, :cond_70

    .line 1993
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1995
    :cond_70
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 1996
    .local v2, "frame":Landroid/media/MediaCodec$OutputFrame;
    if-nez v2, :cond_8d

    .line 1997
    new-instance v5, Landroid/media/MediaCodec$OutputFrame;

    invoke-direct {v5, v0}, Landroid/media/MediaCodec$OutputFrame;-><init>(I)V

    move-object v2, v5

    .line 1998
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2000
    :cond_8d
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$OutputFrame;->setBufferInfos(Ljava/util/ArrayDeque;)V

    .line 2001
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 2002
    goto :goto_a0

    .line 1988
    .end local v2    # "frame":Landroid/media/MediaCodec$OutputFrame;
    :pswitch_94
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaCodec;->-$$Nest$mvalidateOutputByteBuffersLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILjava/util/ArrayDeque;)V

    .line 1990
    nop

    .line 2007
    :goto_a0
    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_4e .. :try_end_a1} :catchall_b4

    .line 2008
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaCodec$Callback;->onOutputBuffersAvailable(Landroid/media/MediaCodec;ILjava/util/ArrayDeque;)V

    .line 2011
    goto/16 :goto_205

    .line 2004
    :goto_ae
    :try_start_ae
    const-string v2, "Unrecognized buffer mode: for large frame output"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v3    # "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .end local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1

    .line 2007
    .restart local v0    # "index":I
    .restart local v3    # "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    .restart local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_b4
    move-exception v1

    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_b4

    throw v1

    .line 2022
    .end local v0    # "index":I
    .end local v3    # "infos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/MediaCodec$BufferInfo;>;"
    :pswitch_b7
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V

    .line 2023
    goto/16 :goto_205

    .line 2028
    :pswitch_c8
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v2, Landroid/media/MediaFormat;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 2030
    goto/16 :goto_205

    .line 2016
    :pswitch_de
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    .line 2017
    goto/16 :goto_205

    .line 1952
    :pswitch_ef
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1953
    .restart local v0    # "index":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    .line 1954
    .local v3, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1955
    :try_start_fc
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v5

    packed-switch v5, :pswitch_data_224

    .line 1972
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_15c

    .line 1960
    :goto_108
    :pswitch_108
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v0, :cond_11e

    .line 1961
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    .line 1963
    :cond_11e
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 1964
    .restart local v2    # "frame":Landroid/media/MediaCodec$OutputFrame;
    if-nez v2, :cond_13b

    .line 1965
    new-instance v5, Landroid/media/MediaCodec$OutputFrame;

    invoke-direct {v5, v0}, Landroid/media/MediaCodec$OutputFrame;-><init>(I)V

    move-object v2, v5

    .line 1966
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1968
    :cond_13b
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$OutputFrame;->setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V

    .line 1969
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 1970
    goto :goto_14e

    .line 1957
    .end local v2    # "frame":Landroid/media/MediaCodec$OutputFrame;
    :pswitch_142
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaCodec;->-$$Nest$mvalidateOutputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1958
    nop

    .line 1975
    :goto_14e
    monitor-exit v4
    :try_end_14f
    .catchall {:try_start_fc .. :try_end_14f} :catchall_179

    .line 1976
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1978
    goto/16 :goto_205

    .line 1972
    :goto_15c
    :try_start_15c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized buffer mode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1

    .line 1975
    .restart local v0    # "index":I
    .restart local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_179
    move-exception v1

    monitor-exit v4
    :try_end_17b
    .catchall {:try_start_15c .. :try_end_17b} :catchall_179

    throw v1

    .line 1924
    .end local v0    # "index":I
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    :pswitch_17c
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1925
    .restart local v0    # "index":I
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1926
    :try_start_185
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    packed-switch v4, :pswitch_data_22c

    .line 1942
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_1e5

    .line 1931
    :goto_191
    :pswitch_191
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v0, :cond_1a7

    .line 1932
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_191

    .line 1934
    :cond_1a7
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$QueueRequest;

    .line 1935
    .local v4, "request":Landroid/media/MediaCodec$QueueRequest;
    if-nez v4, :cond_1c8

    .line 1936
    new-instance v5, Landroid/media/MediaCodec$QueueRequest;

    iget-object v6, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v7, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-direct {v5, v6, v7, v0, v2}, Landroid/media/MediaCodec$QueueRequest;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;ILandroid/media/MediaCodec-IA;)V

    move-object v4, v5

    .line 1937
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1939
    :cond_1c8
    invoke-virtual {v4, v1}, Landroid/media/MediaCodec$QueueRequest;->setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;

    .line 1940
    goto :goto_1d8

    .line 1928
    .end local v4    # "request":Landroid/media/MediaCodec$QueueRequest;
    :pswitch_1cc
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/media/MediaCodec;->-$$Nest$mvalidateInputByteBufferLocked(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V

    .line 1929
    nop

    .line 1945
    :goto_1d8
    monitor-exit v3
    :try_end_1d9
    .catchall {:try_start_185 .. :try_end_1d9} :catchall_202

    .line 1946
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    .line 1947
    goto :goto_205

    .line 1942
    :goto_1e5
    :try_start_1e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized buffer mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1

    .line 1945
    .restart local v0    # "index":I
    .restart local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_202
    move-exception v1

    monitor-exit v3
    :try_end_204
    .catchall {:try_start_1e5 .. :try_end_204} :catchall_202

    throw v1

    .line 2053
    .end local v0    # "index":I
    :cond_205
    :goto_205
    return-void

    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_ef
        :pswitch_de
        :pswitch_c8
        :pswitch_10
        :pswitch_b7
        :pswitch_41
        :pswitch_25
        :pswitch_12
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_94
        :pswitch_5a
    .end packed-switch

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_142
        :pswitch_108
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_191
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleCallback$0()Ljava/lang/Boolean;
    .registers 1

    .line 2035
    invoke-static {}, Landroid/media/codec/Flags;->subsessionMetrics()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1871
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_96

    .line 1901
    :pswitch_7
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1902
    :try_start_e
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    move-result-object v0

    .line 1903
    .local v0, "onFirstTunnelFrameReadyListener":Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_20

    .line 1904
    if-nez v0, :cond_19

    .line 1905
    goto/16 :goto_96

    .line 1907
    :cond_19
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-interface {v0, v1}, Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;->onFirstTunnelFrameReady(Landroid/media/MediaCodec;)V

    .line 1908
    goto/16 :goto_96

    .line 1903
    .end local v0    # "onFirstTunnelFrameReadyListener":Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 1883
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 1884
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    move v2, v0

    .line 1885
    .local v2, "i":I
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-media-time-us"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1886
    .local v3, "mediaTimeUs":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-system-nano"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1888
    .local v4, "systemNano":Ljava/lang/Object;
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1889
    :try_start_5f
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v0

    move-object v6, v0

    .line 1890
    .local v6, "onFrameRenderedListener":Landroid/media/MediaCodec$OnFrameRenderedListener;
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_85

    .line 1891
    if-eqz v3, :cond_84

    if-eqz v4, :cond_84

    if-nez v6, :cond_6e

    .line 1893
    goto :goto_84

    .line 1895
    :cond_6e
    iget-object v7, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1895
    invoke-interface/range {v6 .. v11}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V

    .line 1884
    .end local v3    # "mediaTimeUs":Ljava/lang/Object;
    .end local v4    # "systemNano":Ljava/lang/Object;
    .end local v6    # "onFrameRenderedListener":Landroid/media/MediaCodec$OnFrameRenderedListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1898
    .end local v2    # "i":I
    :cond_84
    :goto_84
    goto :goto_96

    .line 1890
    .restart local v2    # "i":I
    .restart local v3    # "mediaTimeUs":Ljava/lang/Object;
    .restart local v4    # "systemNano":Ljava/lang/Object;
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0

    .line 1879
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i":I
    .end local v3    # "mediaTimeUs":Ljava/lang/Object;
    .end local v4    # "systemNano":Ljava/lang/Object;
    :pswitch_88
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$Callback;

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V

    .line 1880
    goto :goto_96

    .line 1874
    :pswitch_92
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    .line 1875
    nop

    .line 1914
    :goto_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_92
        :pswitch_88
        :pswitch_23
        :pswitch_7
    .end packed-switch
.end method

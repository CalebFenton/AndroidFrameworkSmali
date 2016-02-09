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
.field private mCodec:Landroid/media/MediaCodec;

.field final synthetic this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1495
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@2
    .line 1496
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1497
    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@7
    .line 1495
    return-void
.end method

.method private handleCallback(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1536
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@2
    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    #@5
    move-result-object v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1537
    return-void

    #@9
    .line 1540
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@b
    packed-switch v2, :pswitch_data_0

    #@e
    .line 1535
    :goto_0
    return-void

    #@f
    .line 1543
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@11
    .line 1544
    .local v0, "index":I
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@13
    invoke-static {v2}, Landroid/media/MediaCodec;->-get0(Landroid/media/MediaCodec;)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    monitor-enter v3

    #@18
    .line 1545
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@1a
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@1c
    invoke-static {v4}, Landroid/media/MediaCodec;->-get1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v2, v4, v0}, Landroid/media/MediaCodec;->-wrap1(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 1547
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@26
    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@2c
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    #@2f
    goto :goto_0

    #@30
    .line 1544
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2

    #@33
    .line 1553
    .end local v0    # "index":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@35
    .line 1554
    .restart local v0    # "index":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    #@39
    .line 1555
    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@3b
    invoke-static {v2}, Landroid/media/MediaCodec;->-get0(Landroid/media/MediaCodec;)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    monitor-enter v3

    #@40
    .line 1556
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@42
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@44
    invoke-static {v4}, Landroid/media/MediaCodec;->-get2(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    #@47
    move-result-object v4

    #@48
    invoke-static {v2, v4, v0, v1}, Landroid/media/MediaCodec;->-wrap2(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4b
    monitor-exit v3

    #@4c
    .line 1558
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@4e
    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    #@51
    move-result-object v2

    #@52
    .line 1559
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@54
    .line 1558
    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    #@57
    goto :goto_0

    #@58
    .line 1555
    :catchall_1
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2

    #@5b
    .line 1565
    .end local v0    # "index":I
    .end local v1    # "info":Landroid/media/MediaCodec$BufferInfo;
    :pswitch_2
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@5d
    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    #@60
    move-result-object v3

    #@61
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@63
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    check-cast v2, Landroid/media/MediaCodec$CodecException;

    #@67
    invoke-virtual {v3, v4, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    #@6a
    goto :goto_0

    #@6b
    .line 1571
    :pswitch_3
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@6d
    invoke-static {v2}, Landroid/media/MediaCodec;->-get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    #@70
    move-result-object v3

    #@71
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@73
    .line 1572
    new-instance v5, Landroid/media/MediaFormat;

    #@75
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v2, Ljava/util/Map;

    #@79
    invoke-direct {v5, v2}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@7c
    .line 1571
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    #@7f
    goto :goto_0

    #@80
    .line 1540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1502
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1501
    :goto_0
    return-void

    #@6
    .line 1505
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    #@9
    goto :goto_0

    #@a
    .line 1510
    :pswitch_1
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v0, Landroid/media/MediaCodec$Callback;

    #@10
    invoke-static {v1, v0}, Landroid/media/MediaCodec;->-set0(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;

    #@13
    goto :goto_0

    #@14
    .line 1514
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@16
    invoke-static {v0}, Landroid/media/MediaCodec;->-get4(Landroid/media/MediaCodec;)Ljava/lang/Object;

    #@19
    move-result-object v10

    #@1a
    monitor-enter v10

    #@1b
    .line 1515
    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v7, Ljava/util/Map;

    #@1f
    .line 1516
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    #@20
    .line 1517
    .local v6, "i":I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "-media-time-us"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    .line 1518
    .local v8, "mediaTimeUs":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "-system-nano"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    move-result-object v9

    #@50
    .line 1519
    .local v9, "systemNano":Ljava/lang/Object;
    if-eqz v8, :cond_0

    #@52
    if-nez v9, :cond_1

    #@54
    :cond_0
    monitor-exit v10

    #@55
    goto :goto_0

    #@56
    .line 1520
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@58
    invoke-static {v0}, Landroid/media/MediaCodec;->-get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    #@5b
    move-result-object v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 1523
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    #@60
    invoke-static {v0}, Landroid/media/MediaCodec;->-get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    #@63
    move-result-object v0

    #@64
    .line 1524
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    #@66
    check-cast v8, Ljava/lang/Long;

    #@68
    .end local v8    # "mediaTimeUs":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@6b
    move-result-wide v2

    #@6c
    check-cast v9, Ljava/lang/Long;

    #@6e
    .end local v9    # "systemNano":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@71
    move-result-wide v4

    #@72
    .line 1523
    invoke-interface/range {v0 .. v5}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 1516
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 1514
    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    #@79
    monitor-exit v10

    #@7a
    throw v0

    #@7b
    .line 1502
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

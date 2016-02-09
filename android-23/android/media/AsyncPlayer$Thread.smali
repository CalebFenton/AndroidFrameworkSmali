.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor <init>(Landroid/media/AsyncPlayer;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AsyncPlayer;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@2
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "AsyncPlayer-"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-static {p1}, Landroid/media/AsyncPlayer;->-get2(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@1d
    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 86
    :goto_0
    const/4 v0, 0x0

    #@2
    .line 88
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@4
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get0(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    #@7
    move-result-object v4

    #@8
    monitor-enter v4

    #@9
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@b
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get0(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    check-cast v0, Landroid/media/AsyncPlayer$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    monitor-exit v4

    #@16
    .line 93
    iget v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    #@18
    packed-switch v1, :pswitch_data_0

    #@1b
    .line 114
    :goto_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@1d
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get0(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    #@20
    move-result-object v4

    #@21
    monitor-enter v4

    #@22
    .line 115
    :try_start_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@24
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get0(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 120
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@30
    const/4 v5, 0x0

    #@31
    invoke-static {v1, v5}, Landroid/media/AsyncPlayer;->-set1(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;

    #@34
    .line 121
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@36
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-wrap0(Landroid/media/AsyncPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@39
    monitor-exit v4

    #@3a
    .line 122
    return-void

    #@3b
    .line 88
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v4

    #@3d
    throw v1

    #@3e
    .line 96
    .restart local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :pswitch_0
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@40
    invoke-static {v1, v0}, Landroid/media/AsyncPlayer;->-wrap1(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V

    #@43
    goto :goto_1

    #@44
    .line 100
    :pswitch_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@46
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get1(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    #@49
    move-result-object v1

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4f
    move-result-wide v4

    #@50
    iget-wide v6, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    #@52
    sub-long v2, v4, v6

    #@54
    .line 102
    .local v2, "delay":J
    const-wide/16 v4, 0x3e8

    #@56
    cmp-long v1, v2, v4

    #@58
    if-lez v1, :cond_0

    #@5a
    .line 103
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@5c
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get2(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v5, "Notification stop delayed by "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    const-string/jumbo v5, "msecs"

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 105
    :cond_0
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@80
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get1(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    #@87
    .line 106
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@89
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get1(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    #@90
    .line 107
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@92
    invoke-static {v1, v8}, Landroid/media/AsyncPlayer;->-set0(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    #@95
    goto :goto_1

    #@96
    .line 109
    .end local v2    # "delay":J
    :cond_1
    iget-object v1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #@98
    invoke-static {v1}, Landroid/media/AsyncPlayer;->-get2(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    const-string/jumbo v4, "STOP command without a player"

    #@9f
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    goto/16 :goto_1

    #@a4
    :cond_2
    monitor-exit v4

    #@a5
    goto/16 :goto_0

    #@a7
    .line 114
    :catchall_1
    move-exception v1

    #@a8
    monitor-exit v4

    #@a9
    throw v1

    #@aa
    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

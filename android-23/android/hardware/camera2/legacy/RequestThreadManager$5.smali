.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@0
    .prologue
    .line 655
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 656
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@8
    .line 657
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@a
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    #@d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@f
    .line 655
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 661
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 662
    const/4 v3, 0x1

    #@7
    return v3

    #@8
    .line 668
    :cond_0
    const-wide/16 v22, 0x0

    #@a
    .line 672
    .local v22, "startTime":J
    move-object/from16 v0, p1

    #@c
    iget v3, v0, Landroid/os/Message;->what:I

    #@e
    packed-switch v3, :pswitch_data_0

    #@11
    .line 937
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Unhandled message "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    move-object/from16 v0, p1

    #@21
    iget v6, v0, Landroid/os/Message;->what:I

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 938
    const-string/jumbo v6, " on RequestThread."

    #@2a
    .line 937
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@35
    throw v3

    #@36
    .line 674
    :pswitch_1
    move-object/from16 v0, p1

    #@38
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    #@3c
    .line 675
    .local v2, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@3e
    if-eqz v3, :cond_3

    #@40
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@42
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@45
    move-result v21

    #@46
    .line 676
    .local v21, "sizes":I
    :goto_0
    move-object/from16 v0, p0

    #@48
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4a
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "Configure outputs: "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    move/from16 v0, v21

    #@5c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    const-string/jumbo v6, " surfaces configured."

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 679
    :try_start_0
    move-object/from16 v0, p0

    #@70
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@72
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@75
    move-result-object v3

    #@76
    const-wide/16 v6, 0xfa0

    #@78
    .line 680
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7a
    .line 679
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@7d
    move-result v24

    #@7e
    .line 681
    .local v24, "success":Z
    if-nez v24, :cond_1

    #@80
    .line 682
    move-object/from16 v0, p0

    #@82
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@84
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    const-string/jumbo v5, "Timed out while queueing configure request."

    #@8b
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 683
    move-object/from16 v0, p0

    #@90
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@92
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@99
    .line 692
    :cond_1
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@9d
    iget-object v5, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@9f
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    #@a2
    .line 693
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    #@a4
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    #@a7
    .line 940
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v21    # "sizes":I
    .end local v24    # "success":Z
    :cond_2
    :goto_1
    :pswitch_2
    const/4 v3, 0x1

    #@a8
    return v3

    #@a9
    .line 675
    .restart local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    :cond_3
    const/16 v21, 0x0

    #@ab
    .restart local v21    # "sizes":I
    goto :goto_0

    #@ac
    .line 685
    :catch_0
    move-exception v10

    #@ad
    .line 686
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@b1
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    const-string/jumbo v5, "Interrupted while waiting for requests to complete."

    #@b8
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 687
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@bf
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@c2
    move-result-object v3

    #@c3
    .line 688
    const/4 v5, 0x1

    #@c4
    .line 687
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@c7
    goto :goto_1

    #@c8
    .line 700
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "sizes":I
    :pswitch_3
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@cc
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    #@d3
    move-result-object v12

    #@d4
    .line 703
    .local v12, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@d8
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    #@db
    move-result-object v3

    #@dc
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    #@df
    move-result-object v15

    #@e0
    .line 705
    .local v15, "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    if-nez v15, :cond_6

    #@e2
    .line 709
    :try_start_1
    move-object/from16 v0, p0

    #@e4
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@e6
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@e9
    move-result-object v3

    #@ea
    const-wide/16 v6, 0xfa0

    #@ec
    .line 710
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@ee
    .line 709
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@f1
    move-result v24

    #@f2
    .line 711
    .restart local v24    # "success":Z
    if-nez v24, :cond_4

    #@f4
    .line 712
    move-object/from16 v0, p0

    #@f6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@f8
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    .line 713
    const-string/jumbo v5, "Timed out while waiting for prior requests to complete."

    #@ff
    .line 712
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    .line 714
    move-object/from16 v0, p0

    #@104
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@106
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@109
    move-result-object v3

    #@10a
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@10d
    .line 723
    :cond_4
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@111
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    #@114
    move-result-object v5

    #@115
    monitor-enter v5

    #@116
    .line 725
    :try_start_2
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@11a
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    #@11d
    move-result-object v3

    #@11e
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    #@121
    move-result-object v15

    #@122
    .line 728
    if-nez v15, :cond_5

    #@124
    .line 729
    move-object/from16 v0, p0

    #@126
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@128
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@12b
    move-result-object v3

    #@12c
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12f
    monitor-exit v5

    #@130
    goto/16 :goto_1

    #@132
    .line 716
    .end local v24    # "success":Z
    :catch_1
    move-exception v10

    #@133
    .line 717
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@135
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@137
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@13a
    move-result-object v3

    #@13b
    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    #@13e
    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    .line 718
    move-object/from16 v0, p0

    #@143
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@145
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@148
    move-result-object v3

    #@149
    .line 719
    const/4 v5, 0x1

    #@14a
    .line 718
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@14d
    goto/16 :goto_1

    #@14f
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_5
    monitor-exit v5

    #@150
    .line 735
    .end local v24    # "success":Z
    :cond_6
    if-eqz v15, :cond_7

    #@152
    .line 737
    const/4 v3, 0x2

    #@153
    invoke-virtual {v12, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@156
    .line 742
    :cond_7
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@158
    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    #@15a
    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@15c
    check-cast v5, Ljava/lang/Long;

    #@15e
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@161
    move-result-wide v6

    #@162
    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    #@165
    move-result-object v19

    #@166
    .line 743
    .local v19, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@169
    move-result-object v13

    #@16a
    .local v13, "holder$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@16d
    move-result v3

    #@16e
    if-eqz v3, :cond_2

    #@170
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@173
    move-result-object v4

    #@174
    check-cast v4, Landroid/hardware/camera2/legacy/RequestHolder;

    #@176
    .line 744
    .local v4, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    #@179
    move-result-object v18

    #@17a
    .line 746
    .local v18, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v16, 0x0

    #@17c
    .line 749
    .local v16, "paramsChanged":Z
    move-object/from16 v0, p0

    #@17e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@180
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@183
    move-result-object v3

    #@184
    if-eqz v3, :cond_9

    #@186
    move-object/from16 v0, p0

    #@188
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@18a
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@18d
    move-result-object v3

    #@18e
    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@190
    move-object/from16 v0, v18

    #@192
    if-eq v3, v0, :cond_b

    #@194
    .line 753
    :cond_9
    move-object/from16 v0, p0

    #@196
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@198
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@19b
    move-result-object v3

    #@19c
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@19f
    move-result-object v3

    #@1a0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    #@1a3
    move-result-object v17

    #@1a4
    .line 755
    .local v17, "previewSize":Landroid/util/Size;
    new-instance v14, Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1aa
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    #@1ad
    move-result-object v3

    #@1ae
    .line 756
    move-object/from16 v0, p0

    #@1b0
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1b2
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@1b5
    move-result-object v5

    #@1b6
    .line 755
    move-object/from16 v0, v18

    #@1b8
    move-object/from16 v1, v17

    #@1ba
    invoke-direct {v14, v3, v0, v1, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    #@1bd
    .line 760
    .local v14, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@1c0
    .line 763
    move-object/from16 v0, p0

    #@1c2
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1c4
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@1c7
    move-result-object v3

    #@1c8
    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1ca
    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    #@1cd
    move-result v3

    #@1ce
    if-nez v3, :cond_a

    #@1d0
    .line 765
    :try_start_3
    move-object/from16 v0, p0

    #@1d2
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1d4
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@1d7
    move-result-object v3

    #@1d8
    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1da
    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    #@1dd
    .line 776
    const/16 v16, 0x1

    #@1df
    .line 777
    move-object/from16 v0, p0

    #@1e1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1e3
    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1e5
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    #@1e8
    .line 780
    :cond_a
    move-object/from16 v0, p0

    #@1ea
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1ec
    invoke-static {v3, v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1ef
    .line 784
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    #@1f1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1f3
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@1f6
    move-result-object v3

    #@1f7
    .line 785
    move-object/from16 v0, p0

    #@1f9
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1fb
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1fe
    move-result-object v5

    #@1ff
    const-wide/16 v6, 0xfa0

    #@201
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@203
    .line 784
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    #@206
    move-result v24

    #@207
    .line 787
    .restart local v24    # "success":Z
    if-nez v24, :cond_c

    #@209
    .line 789
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@20d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@210
    move-result-object v3

    #@211
    const-string/jumbo v5, "Timed out while queueing capture request."

    #@214
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@217
    .line 790
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@21a
    .line 791
    move-object/from16 v0, p0

    #@21c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@21e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@221
    move-result-object v3

    #@222
    const-wide/16 v6, 0x0

    #@224
    .line 792
    const/4 v5, 0x3

    #@225
    .line 791
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    #@228
    goto/16 :goto_2

    #@22a
    .line 834
    .end local v24    # "success":Z
    :catch_2
    move-exception v9

    #@22b
    .line 835
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@22d
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@22f
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@232
    move-result-object v3

    #@233
    const-string/jumbo v5, "Received device exception during capture call: "

    #@236
    invoke-static {v3, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@239
    .line 836
    move-object/from16 v0, p0

    #@23b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@23d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@240
    move-result-object v3

    #@241
    .line 837
    const/4 v5, 0x1

    #@242
    .line 836
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@245
    goto/16 :goto_1

    #@247
    .line 723
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .restart local v24    # "success":Z
    :catchall_0
    move-exception v3

    #@248
    monitor-exit v5

    #@249
    throw v3

    #@24a
    .line 766
    .end local v24    # "success":Z
    .restart local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    .restart local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .restart local v16    # "paramsChanged":Z
    .restart local v17    # "previewSize":Landroid/util/Size;
    .restart local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    :catch_3
    move-exception v11

    #@24b
    .line 769
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@24d
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@24f
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@252
    move-result-object v3

    #@253
    const-string/jumbo v5, "Exception while setting camera parameters: "

    #@256
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@259
    .line 770
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@25c
    .line 771
    move-object/from16 v0, p0

    #@25e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@260
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@263
    move-result-object v3

    #@264
    const-wide/16 v6, 0x0

    #@266
    .line 772
    const/4 v5, 0x3

    #@267
    .line 771
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@26a
    goto/16 :goto_2

    #@26c
    .line 799
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    .restart local v24    # "success":Z
    :cond_c
    :try_start_5
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    #@26f
    move-result v3

    #@270
    if-eqz v3, :cond_d

    #@272
    .line 800
    move-object/from16 v0, p0

    #@274
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@276
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@279
    .line 802
    :cond_d
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    #@27c
    move-result v3

    #@27d
    if-eqz v3, :cond_f

    #@27f
    .line 803
    :goto_3
    move-object/from16 v0, p0

    #@281
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@283
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@286
    move-result-object v3

    #@287
    const-wide/16 v6, 0x3e8

    #@289
    .line 804
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@28b
    .line 803
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@28e
    move-result v3

    #@28f
    if-nez v3, :cond_e

    #@291
    .line 806
    move-object/from16 v0, p0

    #@293
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@295
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@298
    move-result-object v3

    #@299
    const-string/jumbo v5, "Timed out while waiting for preview requests to complete."

    #@29c
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29f
    .line 808
    move-object/from16 v0, p0

    #@2a1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2a3
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2a6
    move-result-object v3

    #@2a7
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    #@2aa
    goto :goto_3

    #@2ab
    .line 839
    .end local v24    # "success":Z
    :catch_4
    move-exception v10

    #@2ac
    .line 840
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@2ae
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2b0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@2b3
    move-result-object v3

    #@2b4
    const-string/jumbo v5, "Interrupted during capture: "

    #@2b7
    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2ba
    .line 841
    move-object/from16 v0, p0

    #@2bc
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2be
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2c1
    move-result-object v3

    #@2c2
    .line 842
    const/4 v5, 0x1

    #@2c3
    .line 841
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@2c6
    goto/16 :goto_1

    #@2c8
    .line 810
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    #@2ca
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2cc
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    #@2cf
    move-result-object v3

    #@2d0
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    #@2d3
    .line 811
    move-object/from16 v0, p0

    #@2d5
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2d7
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@2da
    .line 820
    :cond_f
    move-object/from16 v0, p0

    #@2dc
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2de
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@2e1
    move-result-object v3

    #@2e2
    move-object/from16 v0, p0

    #@2e4
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2e6
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@2e9
    move-result-object v5

    #@2ea
    move-object/from16 v0, v18

    #@2ec
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@2ef
    .line 824
    move-object/from16 v0, p0

    #@2f1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2f3
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@2f6
    move-result-object v3

    #@2f7
    move-object/from16 v0, p0

    #@2f9
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2fb
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@2fe
    move-result-object v5

    #@2ff
    move-object/from16 v0, v18

    #@301
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@304
    .line 826
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    #@307
    move-result v3

    #@308
    if-eqz v3, :cond_10

    #@30a
    .line 827
    move-object/from16 v0, p0

    #@30c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@30e
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@311
    .line 828
    move-object/from16 v0, p0

    #@313
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@315
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    #@318
    move-result-object v3

    #@319
    const-wide/16 v6, 0xfa0

    #@31b
    invoke-virtual {v3, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    #@31e
    move-result v3

    #@31f
    if-nez v3, :cond_10

    #@321
    .line 829
    move-object/from16 v0, p0

    #@323
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@325
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@328
    move-result-object v3

    #@329
    const-string/jumbo v5, "Hit timeout for jpeg callback!"

    #@32c
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32f
    .line 830
    move-object/from16 v0, p0

    #@331
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@333
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@336
    move-result-object v3

    #@337
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    #@33a
    .line 851
    :cond_10
    if-eqz v16, :cond_11

    #@33c
    .line 856
    :try_start_7
    move-object/from16 v0, p0

    #@33e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@340
    move-object/from16 v0, p0

    #@342
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@344
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@347
    move-result-object v5

    #@348
    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@34b
    move-result-object v5

    #@34c
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    #@34f
    .line 865
    move-object/from16 v0, p0

    #@351
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@353
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@356
    move-result-object v3

    #@357
    move-object/from16 v0, p0

    #@359
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@35b
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@35e
    move-result-object v5

    #@35f
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    #@362
    .line 868
    :cond_11
    new-instance v8, Landroid/util/MutableLong;

    #@364
    const-wide/16 v6, 0x0

    #@366
    invoke-direct {v8, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    #@369
    .line 870
    .local v8, "timestampMutable":Landroid/util/MutableLong;
    :try_start_8
    move-object/from16 v0, p0

    #@36b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@36d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@370
    move-result-object v3

    #@371
    .line 871
    const-wide/16 v5, 0xfa0

    #@373
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@375
    .line 870
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    #@378
    move-result v24

    #@379
    .line 874
    if-nez v24, :cond_12

    #@37b
    .line 875
    move-object/from16 v0, p0

    #@37d
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@37f
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@382
    move-result-object v3

    #@383
    const-string/jumbo v5, "Timed out while waiting for request to complete."

    #@386
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@389
    .line 876
    move-object/from16 v0, p0

    #@38b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@38d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@390
    move-result-object v3

    #@391
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    #@394
    .line 885
    :cond_12
    move-object/from16 v0, p0

    #@396
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@398
    .line 886
    move-object/from16 v0, p0

    #@39a
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@39c
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@39f
    move-result-object v5

    #@3a0
    iget-wide v6, v8, Landroid/util/MutableLong;->value:J

    #@3a2
    .line 885
    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3a5
    move-result-object v20

    #@3a6
    .line 894
    .local v20, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    #@3a8
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3aa
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@3ad
    move-result-object v3

    #@3ae
    move-object/from16 v0, v20

    #@3b0
    invoke-virtual {v3, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@3b3
    .line 896
    move-object/from16 v0, p0

    #@3b5
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3b7
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@3ba
    move-result-object v3

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3bf
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@3c2
    move-result-object v5

    #@3c3
    move-object/from16 v0, v20

    #@3c5
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@3c8
    .line 898
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    #@3cb
    move-result v3

    #@3cc
    if-nez v3, :cond_8

    #@3ce
    .line 899
    move-object/from16 v0, p0

    #@3d0
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3d2
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3d5
    move-result-object v3

    #@3d6
    .line 900
    const/4 v5, -0x1

    #@3d7
    .line 899
    move-object/from16 v0, v20

    #@3d9
    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    #@3dc
    goto/16 :goto_2

    #@3de
    .line 844
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v20    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v24    # "success":Z
    :catch_5
    move-exception v11

    #@3df
    .line 845
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@3e1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3e3
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@3e6
    move-result-object v3

    #@3e7
    const-string/jumbo v5, "Received device exception during capture call: "

    #@3ea
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3ed
    .line 846
    move-object/from16 v0, p0

    #@3ef
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3f1
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@3f4
    move-result-object v3

    #@3f5
    .line 847
    const/4 v5, 0x1

    #@3f6
    .line 846
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@3f9
    goto/16 :goto_1

    #@3fb
    .line 857
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v24    # "success":Z
    :catch_6
    move-exception v11

    #@3fc
    .line 858
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@3fe
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@400
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@403
    move-result-object v3

    #@404
    const-string/jumbo v5, "Received device exception: "

    #@407
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40a
    .line 859
    move-object/from16 v0, p0

    #@40c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@40e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@411
    move-result-object v3

    #@412
    .line 860
    const/4 v5, 0x1

    #@413
    .line 859
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@416
    goto/16 :goto_1

    #@418
    .line 878
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampMutable":Landroid/util/MutableLong;
    :catch_7
    move-exception v10

    #@419
    .line 879
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@41b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@41d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@420
    move-result-object v3

    #@421
    const-string/jumbo v5, "Interrupted waiting for request completion: "

    #@424
    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@427
    .line 880
    move-object/from16 v0, p0

    #@429
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@42b
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@42e
    move-result-object v3

    #@42f
    .line 881
    const/4 v5, 0x1

    #@430
    .line 880
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@433
    goto/16 :goto_1

    #@435
    .line 910
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "handler":Landroid/os/Handler;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v15    # "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .end local v24    # "success":Z
    :pswitch_4
    const/4 v3, 0x1

    #@436
    move-object/from16 v0, p0

    #@438
    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@43a
    .line 912
    :try_start_9
    move-object/from16 v0, p0

    #@43c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@43e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@441
    move-result-object v3

    #@442
    const-wide/16 v6, 0xfa0

    #@444
    .line 913
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@446
    .line 912
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@449
    move-result v24

    #@44a
    .line 914
    .restart local v24    # "success":Z
    if-nez v24, :cond_13

    #@44c
    .line 915
    move-object/from16 v0, p0

    #@44e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@450
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@453
    move-result-object v3

    #@454
    const-string/jumbo v5, "Timed out while queueing cleanup request."

    #@457
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45a
    .line 916
    move-object/from16 v0, p0

    #@45c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@45e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@461
    move-result-object v3

    #@462
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    #@465
    .line 923
    .end local v24    # "success":Z
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    #@467
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@469
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@46c
    move-result-object v3

    #@46d
    if-eqz v3, :cond_14

    #@46f
    .line 924
    move-object/from16 v0, p0

    #@471
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@473
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@476
    move-result-object v3

    #@477
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    #@47a
    .line 925
    move-object/from16 v0, p0

    #@47c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@47e
    const/4 v5, 0x0

    #@47f
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@482
    .line 927
    :cond_14
    move-object/from16 v0, p0

    #@484
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@486
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@489
    move-result-object v3

    #@48a
    if-eqz v3, :cond_15

    #@48c
    .line 928
    move-object/from16 v0, p0

    #@48e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@490
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@493
    move-result-object v3

    #@494
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    #@497
    .line 929
    move-object/from16 v0, p0

    #@499
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@49b
    const/4 v5, 0x0

    #@49c
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    #@49f
    .line 931
    :cond_15
    move-object/from16 v0, p0

    #@4a1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4a3
    move-object/from16 v0, p0

    #@4a5
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4a7
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    #@4aa
    move-result-object v5

    #@4ab
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    #@4ae
    goto/16 :goto_1

    #@4b0
    .line 918
    :catch_8
    move-exception v10

    #@4b1
    .line 919
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@4b3
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4b5
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@4b8
    move-result-object v3

    #@4b9
    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    #@4bc
    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4bf
    .line 920
    move-object/from16 v0, p0

    #@4c1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4c3
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@4c6
    move-result-object v3

    #@4c7
    .line 921
    const/4 v5, 0x1

    #@4c8
    .line 920
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@4cb
    goto :goto_4

    #@4cc
    .line 672
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

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
    .line 667
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 668
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@8
    .line 669
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@a
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    #@d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@f
    .line 667
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 673
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 674
    const/4 v3, 0x1

    #@7
    return v3

    #@8
    .line 680
    :cond_0
    const-wide/16 v26, 0x0

    #@a
    .line 684
    .local v26, "startTime":J
    move-object/from16 v0, p1

    #@c
    iget v3, v0, Landroid/os/Message;->what:I

    #@e
    packed-switch v3, :pswitch_data_0

    #@11
    .line 964
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
    .line 965
    const-string/jumbo v6, " on RequestThread."

    #@2a
    .line 964
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
    .line 686
    :pswitch_1
    move-object/from16 v0, p1

    #@38
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a
    check-cast v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    #@3c
    .line 687
    .local v9, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@3e
    if-eqz v3, :cond_3

    #@40
    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@42
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@45
    move-result v24

    #@46
    .line 688
    .local v24, "sizes":I
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
    move/from16 v0, v24

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
    .line 691
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
    .line 692
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7a
    .line 691
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@7d
    move-result v25

    #@7e
    .line 693
    .local v25, "success":Z
    if-nez v25, :cond_1

    #@80
    .line 694
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
    .line 695
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
    .line 704
    :cond_1
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@9d
    iget-object v5, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    #@9f
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    #@a2
    .line 705
    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    #@a4
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    #@a7
    .line 967
    .end local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v24    # "sizes":I
    .end local v25    # "success":Z
    :cond_2
    :goto_1
    :pswitch_2
    const/4 v3, 0x1

    #@a8
    return v3

    #@a9
    .line 687
    .restart local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    :cond_3
    const/16 v24, 0x0

    #@ab
    .restart local v24    # "sizes":I
    goto :goto_0

    #@ac
    .line 697
    :catch_0
    move-exception v11

    #@ad
    .line 698
    .local v11, "e":Ljava/lang/InterruptedException;
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
    .line 699
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@bf
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@c2
    move-result-object v3

    #@c3
    .line 700
    const/4 v5, 0x1

    #@c4
    .line 699
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@c7
    goto :goto_1

    #@c8
    .line 712
    .end local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "sizes":I
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
    move-result-object v13

    #@d4
    .line 713
    .local v13, "handler":Landroid/os/Handler;
    const/4 v2, 0x0

    #@d5
    .line 716
    .local v2, "anyRequestOutputAbandoned":Z
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@d9
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    #@e0
    move-result-object v18

    #@e1
    .line 718
    .local v18, "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    if-nez v18, :cond_6

    #@e3
    .line 722
    :try_start_1
    move-object/from16 v0, p0

    #@e5
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@e7
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@ea
    move-result-object v3

    #@eb
    const-wide/16 v6, 0xfa0

    #@ed
    .line 723
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@ef
    .line 722
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@f2
    move-result v25

    #@f3
    .line 724
    .restart local v25    # "success":Z
    if-nez v25, :cond_4

    #@f5
    .line 725
    move-object/from16 v0, p0

    #@f7
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@f9
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@fc
    move-result-object v3

    #@fd
    .line 726
    const-string/jumbo v5, "Timed out while waiting for prior requests to complete."

    #@100
    .line 725
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@103
    .line 727
    move-object/from16 v0, p0

    #@105
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@107
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@10e
    .line 736
    :cond_4
    move-object/from16 v0, p0

    #@110
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@112
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    #@115
    move-result-object v5

    #@116
    monitor-enter v5

    #@117
    .line 738
    :try_start_2
    move-object/from16 v0, p0

    #@119
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@11b
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    #@11e
    move-result-object v3

    #@11f
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    #@122
    move-result-object v18

    #@123
    .line 741
    if-nez v18, :cond_5

    #@125
    .line 742
    move-object/from16 v0, p0

    #@127
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@129
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@12c
    move-result-object v3

    #@12d
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@130
    monitor-exit v5

    #@131
    goto/16 :goto_1

    #@133
    .line 729
    .end local v25    # "success":Z
    :catch_1
    move-exception v11

    #@134
    .line 730
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@136
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@138
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@13b
    move-result-object v3

    #@13c
    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    #@13f
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@142
    .line 731
    move-object/from16 v0, p0

    #@144
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@146
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@149
    move-result-object v3

    #@14a
    .line 732
    const/4 v5, 0x1

    #@14b
    .line 731
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@14e
    goto/16 :goto_1

    #@150
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v25    # "success":Z
    :cond_5
    monitor-exit v5

    #@151
    .line 748
    .end local v25    # "success":Z
    :cond_6
    if-eqz v18, :cond_7

    #@153
    .line 750
    const/4 v3, 0x2

    #@154
    invoke-virtual {v13, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@157
    .line 755
    :cond_7
    move-object/from16 v0, v18

    #@159
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@15b
    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    #@15d
    move-object/from16 v0, v18

    #@15f
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@161
    check-cast v5, Ljava/lang/Long;

    #@163
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@166
    move-result-wide v6

    #@167
    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    #@16a
    move-result-object v22

    #@16b
    .line 756
    .local v22, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16e
    move-result-object v14

    #@16f
    .local v14, "holder$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@172
    move-result v3

    #@173
    if-eqz v3, :cond_c

    #@175
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@178
    move-result-object v4

    #@179
    check-cast v4, Landroid/hardware/camera2/legacy/RequestHolder;

    #@17b
    .line 757
    .local v4, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    #@17e
    move-result-object v21

    #@17f
    .line 759
    .local v21, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v19, 0x0

    #@181
    .line 762
    .local v19, "paramsChanged":Z
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@185
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@188
    move-result-object v3

    #@189
    if-eqz v3, :cond_9

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@18f
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@192
    move-result-object v3

    #@193
    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    #@195
    move-object/from16 v0, v21

    #@197
    if-eq v3, v0, :cond_b

    #@199
    .line 766
    :cond_9
    move-object/from16 v0, p0

    #@19b
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@19d
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@1a0
    move-result-object v3

    #@1a1
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    #@1a4
    move-result-object v3

    #@1a5
    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    #@1a8
    move-result-object v20

    #@1a9
    .line 768
    .local v20, "previewSize":Landroid/util/Size;
    new-instance v15, Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1af
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    #@1b2
    move-result-object v3

    #@1b3
    .line 769
    move-object/from16 v0, p0

    #@1b5
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1b7
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@1ba
    move-result-object v5

    #@1bb
    .line 768
    move-object/from16 v0, v21

    #@1bd
    move-object/from16 v1, v20

    #@1bf
    invoke-direct {v15, v3, v0, v1, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    #@1c2
    .line 773
    .local v15, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v15}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@1c5
    .line 776
    move-object/from16 v0, p0

    #@1c7
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1c9
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@1cc
    move-result-object v3

    #@1cd
    iget-object v5, v15, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1cf
    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    #@1d2
    move-result v3

    #@1d3
    if-nez v3, :cond_a

    #@1d5
    .line 778
    :try_start_3
    move-object/from16 v0, p0

    #@1d7
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1d9
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@1dc
    move-result-object v3

    #@1dd
    iget-object v5, v15, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1df
    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    #@1e2
    .line 789
    const/16 v19, 0x1

    #@1e4
    .line 790
    move-object/from16 v0, p0

    #@1e6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1e8
    iget-object v5, v15, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    #@1ea
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    #@1ed
    .line 793
    :cond_a
    move-object/from16 v0, p0

    #@1ef
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1f1
    invoke-static {v3, v15}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@1f4
    .line 797
    .end local v15    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v20    # "previewSize":Landroid/util/Size;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    #@1f6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1f8
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@1fb
    move-result-object v3

    #@1fc
    .line 798
    move-object/from16 v0, p0

    #@1fe
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@200
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@203
    move-result-object v5

    #@204
    const-wide/16 v6, 0xfa0

    #@206
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@208
    .line 797
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    #@20b
    move-result v25

    #@20c
    .line 800
    .restart local v25    # "success":Z
    if-nez v25, :cond_d

    #@20e
    .line 802
    move-object/from16 v0, p0

    #@210
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@212
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@215
    move-result-object v3

    #@216
    const-string/jumbo v5, "Timed out while queueing capture request."

    #@219
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21c
    .line 803
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@21f
    .line 804
    move-object/from16 v0, p0

    #@221
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@223
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@226
    move-result-object v3

    #@227
    const-wide/16 v6, 0x0

    #@229
    .line 805
    const/4 v5, 0x3

    #@22a
    .line 804
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    #@22d
    goto/16 :goto_2

    #@22f
    .line 847
    .end local v25    # "success":Z
    :catch_2
    move-exception v10

    #@230
    .line 848
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@232
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@234
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@237
    move-result-object v3

    #@238
    const-string/jumbo v5, "Received device exception during capture call: "

    #@23b
    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23e
    .line 849
    move-object/from16 v0, p0

    #@240
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@242
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@245
    move-result-object v3

    #@246
    .line 850
    const/4 v5, 0x1

    #@247
    .line 849
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@24a
    .line 921
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v19    # "paramsChanged":Z
    .end local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_c
    :goto_3
    if-eqz v2, :cond_2

    #@24c
    move-object/from16 v0, v18

    #@24e
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@250
    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    #@252
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    #@255
    move-result v3

    #@256
    if-eqz v3, :cond_2

    #@258
    .line 922
    move-object/from16 v0, p0

    #@25a
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@25c
    move-object/from16 v0, v18

    #@25e
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@260
    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    #@262
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    #@265
    move-result v3

    #@266
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    #@269
    move-result-wide v16

    #@26a
    .line 927
    .local v16, "lastFrameNumber":J
    move-object/from16 v0, p0

    #@26c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@26e
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@271
    move-result-object v3

    #@272
    move-wide/from16 v0, v16

    #@274
    invoke-virtual {v3, v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setRepeatingRequestError(J)V

    #@277
    goto/16 :goto_1

    #@279
    .line 736
    .end local v14    # "holder$iterator":Ljava/util/Iterator;
    .end local v16    # "lastFrameNumber":J
    .end local v22    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .restart local v25    # "success":Z
    :catchall_0
    move-exception v3

    #@27a
    monitor-exit v5

    #@27b
    throw v3

    #@27c
    .line 779
    .end local v25    # "success":Z
    .restart local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v14    # "holder$iterator":Ljava/util/Iterator;
    .restart local v15    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .restart local v19    # "paramsChanged":Z
    .restart local v20    # "previewSize":Landroid/util/Size;
    .restart local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v22    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    :catch_3
    move-exception v12

    #@27d
    .line 782
    .local v12, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@27f
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@281
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@284
    move-result-object v3

    #@285
    const-string/jumbo v5, "Exception while setting camera parameters: "

    #@288
    invoke-static {v3, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28b
    .line 783
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    #@28e
    .line 784
    move-object/from16 v0, p0

    #@290
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@292
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@295
    move-result-object v3

    #@296
    const-wide/16 v6, 0x0

    #@298
    .line 785
    const/4 v5, 0x3

    #@299
    .line 784
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    #@29c
    goto/16 :goto_2

    #@29e
    .line 812
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v20    # "previewSize":Landroid/util/Size;
    .restart local v25    # "success":Z
    :cond_d
    :try_start_5
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    #@2a1
    move-result v3

    #@2a2
    if-eqz v3, :cond_e

    #@2a4
    .line 813
    move-object/from16 v0, p0

    #@2a6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2a8
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@2ab
    .line 815
    :cond_e
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    #@2ae
    move-result v3

    #@2af
    if-eqz v3, :cond_10

    #@2b1
    .line 816
    :goto_4
    move-object/from16 v0, p0

    #@2b3
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2b5
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2b8
    move-result-object v3

    #@2b9
    const-wide/16 v6, 0x3e8

    #@2bb
    .line 817
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2bd
    .line 816
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@2c0
    move-result v3

    #@2c1
    if-nez v3, :cond_f

    #@2c3
    .line 819
    move-object/from16 v0, p0

    #@2c5
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2c7
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@2ca
    move-result-object v3

    #@2cb
    const-string/jumbo v5, "Timed out while waiting for preview requests to complete."

    #@2ce
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d1
    .line 821
    move-object/from16 v0, p0

    #@2d3
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2d5
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@2d8
    move-result-object v3

    #@2d9
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    #@2dc
    goto :goto_4

    #@2dd
    .line 852
    .end local v25    # "success":Z
    :catch_4
    move-exception v11

    #@2de
    .line 853
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@2e0
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2e2
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@2e5
    move-result-object v3

    #@2e6
    const-string/jumbo v5, "Interrupted during capture: "

    #@2e9
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2ec
    .line 854
    move-object/from16 v0, p0

    #@2ee
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2f0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2f3
    move-result-object v3

    #@2f4
    .line 855
    const/4 v5, 0x1

    #@2f5
    .line 854
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@2f8
    goto/16 :goto_3

    #@2fa
    .line 823
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .restart local v25    # "success":Z
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    #@2fc
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2fe
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    #@301
    move-result-object v3

    #@302
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    #@305
    .line 824
    move-object/from16 v0, p0

    #@307
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@309
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@30c
    .line 833
    :cond_10
    move-object/from16 v0, p0

    #@30e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@310
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@313
    move-result-object v3

    #@314
    move-object/from16 v0, p0

    #@316
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@318
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@31b
    move-result-object v5

    #@31c
    move-object/from16 v0, v21

    #@31e
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@321
    .line 837
    move-object/from16 v0, p0

    #@323
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@325
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@328
    move-result-object v3

    #@329
    move-object/from16 v0, p0

    #@32b
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@32d
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@330
    move-result-object v5

    #@331
    move-object/from16 v0, v21

    #@333
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    #@336
    .line 839
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    #@339
    move-result v3

    #@33a
    if-eqz v3, :cond_11

    #@33c
    .line 840
    move-object/from16 v0, p0

    #@33e
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@340
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    #@343
    .line 841
    move-object/from16 v0, p0

    #@345
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@347
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    #@34a
    move-result-object v3

    #@34b
    const-wide/16 v6, 0xfa0

    #@34d
    invoke-virtual {v3, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    #@350
    move-result v3

    #@351
    if-nez v3, :cond_11

    #@353
    .line 842
    move-object/from16 v0, p0

    #@355
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@357
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@35a
    move-result-object v3

    #@35b
    const-string/jumbo v5, "Hit timeout for jpeg callback!"

    #@35e
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@361
    .line 843
    move-object/from16 v0, p0

    #@363
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@365
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@368
    move-result-object v3

    #@369
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    #@36c
    .line 864
    :cond_11
    if-eqz v19, :cond_12

    #@36e
    .line 869
    :try_start_7
    move-object/from16 v0, p0

    #@370
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@372
    move-object/from16 v0, p0

    #@374
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@376
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@379
    move-result-object v5

    #@37a
    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    #@37d
    move-result-object v5

    #@37e
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    #@381
    .line 878
    move-object/from16 v0, p0

    #@383
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@385
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@388
    move-result-object v3

    #@389
    move-object/from16 v0, p0

    #@38b
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@38d
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    #@390
    move-result-object v5

    #@391
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    #@394
    .line 881
    :cond_12
    new-instance v8, Landroid/util/MutableLong;

    #@396
    const-wide/16 v6, 0x0

    #@398
    invoke-direct {v8, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    #@39b
    .line 883
    .local v8, "timestampMutable":Landroid/util/MutableLong;
    :try_start_8
    move-object/from16 v0, p0

    #@39d
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@39f
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@3a2
    move-result-object v3

    #@3a3
    .line 884
    const-wide/16 v5, 0xfa0

    #@3a5
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@3a7
    .line 883
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    #@3aa
    move-result v25

    #@3ab
    .line 887
    if-nez v25, :cond_13

    #@3ad
    .line 888
    move-object/from16 v0, p0

    #@3af
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3b1
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@3b4
    move-result-object v3

    #@3b5
    const-string/jumbo v5, "Timed out while waiting for request to complete."

    #@3b8
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3bb
    .line 889
    move-object/from16 v0, p0

    #@3bd
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3bf
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@3c2
    move-result-object v3

    #@3c3
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    #@3c6
    .line 898
    :cond_13
    move-object/from16 v0, p0

    #@3c8
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    #@3ca
    .line 899
    move-object/from16 v0, p0

    #@3cc
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3ce
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@3d1
    move-result-object v5

    #@3d2
    iget-wide v6, v8, Landroid/util/MutableLong;->value:J

    #@3d4
    .line 898
    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3d7
    move-result-object v23

    #@3d8
    .line 907
    .local v23, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    #@3da
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3dc
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    #@3df
    move-result-object v3

    #@3e0
    move-object/from16 v0, v23

    #@3e2
    invoke-virtual {v3, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@3e5
    .line 909
    move-object/from16 v0, p0

    #@3e7
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3e9
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    #@3ec
    move-result-object v3

    #@3ed
    move-object/from16 v0, p0

    #@3ef
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@3f1
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    #@3f4
    move-result-object v5

    #@3f5
    move-object/from16 v0, v23

    #@3f7
    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@3fa
    .line 911
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    #@3fd
    move-result v3

    #@3fe
    if-nez v3, :cond_14

    #@400
    .line 912
    move-object/from16 v0, p0

    #@402
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@404
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@407
    move-result-object v3

    #@408
    move-object/from16 v0, v23

    #@40a
    invoke-virtual {v3, v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    #@40d
    .line 915
    :cond_14
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->isOutputAbandoned()Z

    #@410
    move-result v3

    #@411
    if-eqz v3, :cond_8

    #@413
    .line 916
    const/4 v2, 0x1

    #@414
    goto/16 :goto_2

    #@416
    .line 857
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v25    # "success":Z
    :catch_5
    move-exception v12

    #@417
    .line 858
    .restart local v12    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@419
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@41b
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@41e
    move-result-object v3

    #@41f
    const-string/jumbo v5, "Received device exception during capture call: "

    #@422
    invoke-static {v3, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@425
    .line 859
    move-object/from16 v0, p0

    #@427
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@429
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@42c
    move-result-object v3

    #@42d
    .line 860
    const/4 v5, 0x1

    #@42e
    .line 859
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@431
    goto/16 :goto_3

    #@433
    .line 870
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .restart local v25    # "success":Z
    :catch_6
    move-exception v12

    #@434
    .line 871
    .restart local v12    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    #@436
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@438
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@43b
    move-result-object v3

    #@43c
    const-string/jumbo v5, "Received device exception: "

    #@43f
    invoke-static {v3, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@442
    .line 872
    move-object/from16 v0, p0

    #@444
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@446
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@449
    move-result-object v3

    #@44a
    .line 873
    const/4 v5, 0x1

    #@44b
    .line 872
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@44e
    goto/16 :goto_3

    #@450
    .line 891
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampMutable":Landroid/util/MutableLong;
    :catch_7
    move-exception v11

    #@451
    .line 892
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@453
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@455
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@458
    move-result-object v3

    #@459
    const-string/jumbo v5, "Interrupted waiting for request completion: "

    #@45c
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45f
    .line 893
    move-object/from16 v0, p0

    #@461
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@463
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@466
    move-result-object v3

    #@467
    .line 894
    const/4 v5, 0x1

    #@468
    .line 893
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@46b
    goto/16 :goto_3

    #@46d
    .line 937
    .end local v2    # "anyRequestOutputAbandoned":Z
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "handler":Landroid/os/Handler;
    .end local v14    # "holder$iterator":Ljava/util/Iterator;
    .end local v18    # "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    .end local v19    # "paramsChanged":Z
    .end local v21    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v22    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .end local v25    # "success":Z
    :pswitch_4
    const/4 v3, 0x1

    #@46e
    move-object/from16 v0, p0

    #@470
    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    #@472
    .line 939
    :try_start_9
    move-object/from16 v0, p0

    #@474
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@476
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@479
    move-result-object v3

    #@47a
    const-wide/16 v6, 0xfa0

    #@47c
    .line 940
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@47e
    .line 939
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    #@481
    move-result v25

    #@482
    .line 941
    .restart local v25    # "success":Z
    if-nez v25, :cond_15

    #@484
    .line 942
    move-object/from16 v0, p0

    #@486
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@488
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@48b
    move-result-object v3

    #@48c
    const-string/jumbo v5, "Timed out while queueing cleanup request."

    #@48f
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@492
    .line 943
    move-object/from16 v0, p0

    #@494
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@496
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@499
    move-result-object v3

    #@49a
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    #@49d
    .line 950
    .end local v25    # "success":Z
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    #@49f
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4a1
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@4a4
    move-result-object v3

    #@4a5
    if-eqz v3, :cond_16

    #@4a7
    .line 951
    move-object/from16 v0, p0

    #@4a9
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4ab
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@4ae
    move-result-object v3

    #@4af
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    #@4b2
    .line 952
    move-object/from16 v0, p0

    #@4b4
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4b6
    const/4 v5, 0x0

    #@4b7
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    #@4ba
    .line 954
    :cond_16
    move-object/from16 v0, p0

    #@4bc
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4be
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@4c1
    move-result-object v3

    #@4c2
    if-eqz v3, :cond_17

    #@4c4
    .line 955
    move-object/from16 v0, p0

    #@4c6
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4c8
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    #@4cb
    move-result-object v3

    #@4cc
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    #@4cf
    .line 956
    move-object/from16 v0, p0

    #@4d1
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4d3
    const/4 v5, 0x0

    #@4d4
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    #@4d7
    .line 958
    :cond_17
    move-object/from16 v0, p0

    #@4d9
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4db
    move-object/from16 v0, p0

    #@4dd
    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4df
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    #@4e2
    move-result-object v5

    #@4e3
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    #@4e6
    goto/16 :goto_1

    #@4e8
    .line 945
    :catch_8
    move-exception v11

    #@4e9
    .line 946
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    #@4eb
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4ed
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@4f0
    move-result-object v3

    #@4f1
    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    #@4f4
    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f7
    .line 947
    move-object/from16 v0, p0

    #@4f9
    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4fb
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@4fe
    move-result-object v3

    #@4ff
    .line 948
    const/4 v5, 0x1

    #@500
    .line 947
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    #@503
    goto :goto_5

    #@504
    .line 684
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

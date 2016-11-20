.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    #@0
    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 792
    const/16 v0, 0x265

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 770
    const-string/jumbo v0, "NetworkManagement"

    #@4
    const-string/jumbo v1, "onDaemonConnected()"

    #@7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 773
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@c
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 775
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@14
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@1b
    .line 776
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@1d
    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    #@20
    .line 769
    :goto_0
    return-void

    #@21
    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@23
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    #@26
    move-result-object v0

    #@27
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    #@29
    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 797
    const-string/jumbo v5, "Invalid event from daemon (%s)"

    #@3
    const/4 v6, 0x1

    #@4
    new-array v6, v6, [Ljava/lang/Object;

    #@6
    const/4 v7, 0x0

    #@7
    aput-object p2, v6, v7

    #@9
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v15

    #@d
    .line 798
    .local v15, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    #@10
    .line 966
    :goto_0
    const/4 v5, 0x0

    #@11
    return v5

    #@12
    .line 807
    :sswitch_0
    move-object/from16 v0, p3

    #@14
    array-length v5, v0

    #@15
    const/4 v6, 0x4

    #@16
    if-lt v5, v6, :cond_0

    #@18
    const/4 v5, 0x1

    #@19
    aget-object v5, p3, v5

    #@1b
    const-string/jumbo v6, "Iface"

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 810
    const/4 v5, 0x2

    #@25
    aget-object v5, p3, v5

    #@27
    const-string/jumbo v6, "added"

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 811
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@34
    const/4 v6, 0x3

    #@35
    aget-object v6, p3, v6

    #@37
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    #@3a
    .line 812
    const/4 v5, 0x1

    #@3b
    return v5

    #@3c
    .line 808
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@3e
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v5

    #@42
    .line 813
    :cond_1
    const/4 v5, 0x2

    #@43
    aget-object v5, p3, v5

    #@45
    const-string/jumbo v6, "removed"

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_2

    #@4e
    .line 814
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@52
    const/4 v6, 0x3

    #@53
    aget-object v6, p3, v6

    #@55
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    #@58
    .line 815
    const/4 v5, 0x1

    #@59
    return v5

    #@5a
    .line 816
    :cond_2
    const/4 v5, 0x2

    #@5b
    aget-object v5, p3, v5

    #@5d
    const-string/jumbo v6, "changed"

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_3

    #@66
    move-object/from16 v0, p3

    #@68
    array-length v5, v0

    #@69
    const/4 v6, 0x5

    #@6a
    if-ne v5, v6, :cond_3

    #@6c
    .line 817
    move-object/from16 v0, p0

    #@6e
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@70
    const/4 v6, 0x3

    #@71
    aget-object v6, p3, v6

    #@73
    const/4 v7, 0x4

    #@74
    aget-object v7, p3, v7

    #@76
    const-string/jumbo v11, "up"

    #@79
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    #@80
    .line 818
    const/4 v5, 0x1

    #@81
    return v5

    #@82
    .line 819
    :cond_3
    const/4 v5, 0x2

    #@83
    aget-object v5, p3, v5

    #@85
    const-string/jumbo v6, "linkstate"

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_4

    #@8e
    move-object/from16 v0, p3

    #@90
    array-length v5, v0

    #@91
    const/4 v6, 0x5

    #@92
    if-ne v5, v6, :cond_4

    #@94
    .line 820
    move-object/from16 v0, p0

    #@96
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@98
    const/4 v6, 0x3

    #@99
    aget-object v6, p3, v6

    #@9b
    const/4 v7, 0x4

    #@9c
    aget-object v7, p3, v7

    #@9e
    const-string/jumbo v11, "up"

    #@a1
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v7

    #@a5
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    #@a8
    .line 821
    const/4 v5, 0x1

    #@a9
    return v5

    #@aa
    .line 823
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@ac
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@af
    throw v5

    #@b0
    .line 830
    :sswitch_1
    move-object/from16 v0, p3

    #@b2
    array-length v5, v0

    #@b3
    const/4 v6, 0x5

    #@b4
    if-lt v5, v6, :cond_5

    #@b6
    const/4 v5, 0x1

    #@b7
    aget-object v5, p3, v5

    #@b9
    const-string/jumbo v6, "limit"

    #@bc
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v5

    #@c0
    if-eqz v5, :cond_5

    #@c2
    .line 833
    const/4 v5, 0x2

    #@c3
    aget-object v5, p3, v5

    #@c5
    const-string/jumbo v6, "alert"

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v5

    #@cc
    if-eqz v5, :cond_6

    #@ce
    .line 834
    move-object/from16 v0, p0

    #@d0
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@d2
    const/4 v6, 0x3

    #@d3
    aget-object v6, p3, v6

    #@d5
    const/4 v7, 0x4

    #@d6
    aget-object v7, p3, v7

    #@d8
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    #@db
    .line 835
    const/4 v5, 0x1

    #@dc
    return v5

    #@dd
    .line 831
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    #@df
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e2
    throw v5

    #@e3
    .line 837
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    #@e5
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v5

    #@e9
    .line 844
    :sswitch_2
    move-object/from16 v0, p3

    #@eb
    array-length v5, v0

    #@ec
    const/4 v6, 0x4

    #@ed
    if-lt v5, v6, :cond_8

    #@ef
    const/4 v5, 0x1

    #@f0
    aget-object v5, p3, v5

    #@f2
    const-string/jumbo v6, "IfaceClass"

    #@f5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_8

    #@fb
    .line 847
    const-wide/16 v8, 0x0

    #@fd
    .line 848
    .local v8, "timestampNanos":J
    const/4 v10, -0x1

    #@fe
    .line 849
    .local v10, "processUid":I
    move-object/from16 v0, p3

    #@100
    array-length v5, v0

    #@101
    const/4 v6, 0x5

    #@102
    if-lt v5, v6, :cond_9

    #@104
    .line 851
    const/4 v5, 0x4

    #@105
    :try_start_0
    aget-object v5, p3, v5

    #@107
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@10a
    move-result-wide v8

    #@10b
    .line 852
    move-object/from16 v0, p3

    #@10d
    array-length v5, v0

    #@10e
    const/4 v6, 0x6

    #@10f
    if-ne v5, v6, :cond_7

    #@111
    .line 853
    const/4 v5, 0x5

    #@112
    aget-object v5, p3, v5

    #@114
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    #@117
    move-result v10

    #@118
    .line 859
    :cond_7
    :goto_1
    const/4 v5, 0x2

    #@119
    aget-object v5, p3, v5

    #@11b
    const-string/jumbo v6, "active"

    #@11e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v22

    #@122
    .line 860
    .local v22, "isActive":Z
    move-object/from16 v0, p0

    #@124
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@126
    const/4 v6, 0x3

    #@127
    aget-object v6, p3, v6

    #@129
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12c
    move-result v6

    #@12d
    .line 861
    if-eqz v22, :cond_a

    #@12f
    const/4 v7, 0x3

    #@130
    .line 863
    :goto_2
    const/4 v11, 0x0

    #@131
    .line 860
    invoke-static/range {v5 .. v11}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V

    #@134
    .line 864
    const/4 v5, 0x1

    #@135
    return v5

    #@136
    .line 845
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    #@138
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13b
    throw v5

    #@13c
    .line 857
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@13f
    move-result-wide v8

    #@140
    goto :goto_1

    #@141
    .line 862
    .restart local v22    # "isActive":Z
    :cond_a
    const/4 v7, 0x1

    #@142
    goto :goto_2

    #@143
    .line 872
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :sswitch_3
    move-object/from16 v0, p3

    #@145
    array-length v5, v0

    #@146
    const/4 v6, 0x7

    #@147
    if-lt v5, v6, :cond_b

    #@149
    const/4 v5, 0x1

    #@14a
    aget-object v5, p3, v5

    #@14c
    const-string/jumbo v6, "Address"

    #@14f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@152
    move-result v5

    #@153
    if-eqz v5, :cond_b

    #@155
    .line 876
    const/4 v5, 0x4

    #@156
    aget-object v20, p3, v5

    #@158
    .line 879
    .local v20, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    #@159
    :try_start_1
    aget-object v5, p3, v5

    #@15b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15e
    move-result v17

    #@15f
    .line 880
    .local v17, "flags":I
    const/4 v5, 0x6

    #@160
    aget-object v5, p3, v5

    #@162
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@165
    move-result v27

    #@166
    .line 881
    .local v27, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    #@168
    const/4 v5, 0x3

    #@169
    aget-object v5, p3, v5

    #@16b
    move/from16 v0, v17

    #@16d
    move/from16 v1, v27

    #@16f
    invoke-direct {v4, v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@172
    .line 888
    .local v4, "address":Landroid/net/LinkAddress;
    const/4 v5, 0x2

    #@173
    aget-object v5, p3, v5

    #@175
    const-string/jumbo v6, "updated"

    #@178
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17b
    move-result v5

    #@17c
    if-eqz v5, :cond_c

    #@17e
    .line 889
    move-object/from16 v0, p0

    #@180
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@182
    move-object/from16 v0, v20

    #@184
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@187
    .line 893
    :goto_3
    const/4 v5, 0x1

    #@188
    return v5

    #@189
    .line 873
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    #@18b
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18e
    throw v5

    #@18f
    .line 884
    .restart local v20    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@190
    .line 885
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@192
    invoke-direct {v5, v15, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@195
    throw v5

    #@196
    .line 882
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v14

    #@197
    .line 883
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@199
    invoke-direct {v5, v15, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19c
    throw v5

    #@19d
    .line 891
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "address":Landroid/net/LinkAddress;
    .restart local v17    # "flags":I
    .restart local v27    # "scope":I
    :cond_c
    move-object/from16 v0, p0

    #@19f
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@1a1
    move-object/from16 v0, v20

    #@1a3
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@1a6
    goto :goto_3

    #@1a7
    .line 902
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :sswitch_4
    move-object/from16 v0, p3

    #@1a9
    array-length v5, v0

    #@1aa
    const/4 v6, 0x6

    #@1ab
    if-ne v5, v6, :cond_d

    #@1ad
    .line 903
    const/4 v5, 0x1

    #@1ae
    aget-object v5, p3, v5

    #@1b0
    const-string/jumbo v6, "DnsInfo"

    #@1b3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v5

    #@1b7
    .line 902
    if-eqz v5, :cond_d

    #@1b9
    .line 904
    const/4 v5, 0x2

    #@1ba
    aget-object v5, p3, v5

    #@1bc
    const-string/jumbo v6, "servers"

    #@1bf
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c2
    move-result v5

    #@1c3
    .line 902
    if-eqz v5, :cond_d

    #@1c5
    .line 906
    const/4 v5, 0x4

    #@1c6
    :try_start_2
    aget-object v5, p3, v5

    #@1c8
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@1cb
    move-result-wide v24

    #@1cc
    .line 910
    .local v24, "lifetime":J
    const/4 v5, 0x5

    #@1cd
    aget-object v5, p3, v5

    #@1cf
    const-string/jumbo v6, ","

    #@1d2
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d5
    move-result-object v28

    #@1d6
    .line 911
    .local v28, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1d8
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@1da
    const/4 v6, 0x3

    #@1db
    aget-object v6, p3, v6

    #@1dd
    move-wide/from16 v0, v24

    #@1df
    move-object/from16 v2, v28

    #@1e1
    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    #@1e4
    .line 913
    .end local v24    # "lifetime":J
    .end local v28    # "servers":[Ljava/lang/String;
    :cond_d
    const/4 v5, 0x1

    #@1e5
    return v5

    #@1e6
    .line 907
    :catch_2
    move-exception v14

    #@1e7
    .line 908
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@1e9
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1ec
    throw v5

    #@1ed
    .line 920
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    const/4 v5, 0x1

    #@1ee
    aget-object v5, p3, v5

    #@1f0
    const-string/jumbo v6, "Route"

    #@1f3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v5

    #@1f7
    if-eqz v5, :cond_e

    #@1f9
    move-object/from16 v0, p3

    #@1fb
    array-length v5, v0

    #@1fc
    const/4 v6, 0x6

    #@1fd
    if-ge v5, v6, :cond_f

    #@1ff
    .line 921
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    #@201
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@204
    throw v5

    #@205
    .line 924
    :cond_f
    const/16 v31, 0x0

    #@207
    .line 925
    .local v31, "via":Ljava/lang/String;
    const/4 v12, 0x0

    #@208
    .line 926
    .local v12, "dev":Ljava/lang/String;
    const/16 v30, 0x1

    #@20a
    .line 927
    .local v30, "valid":Z
    const/16 v19, 0x4

    #@20c
    .end local v12    # "dev":Ljava/lang/String;
    .end local v31    # "via":Ljava/lang/String;
    .local v19, "i":I
    :goto_4
    add-int/lit8 v5, v19, 0x1

    #@20e
    move-object/from16 v0, p3

    #@210
    array-length v6, v0

    #@211
    if-ge v5, v6, :cond_14

    #@213
    if-eqz v30, :cond_14

    #@215
    .line 928
    aget-object v5, p3, v19

    #@217
    const-string/jumbo v6, "dev"

    #@21a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21d
    move-result v5

    #@21e
    if-eqz v5, :cond_11

    #@220
    .line 929
    if-nez v12, :cond_10

    #@222
    .line 930
    add-int/lit8 v5, v19, 0x1

    #@224
    aget-object v12, p3, v5

    #@226
    .line 927
    :goto_5
    add-int/lit8 v19, v19, 0x2

    #@228
    goto :goto_4

    #@229
    .line 932
    :cond_10
    const/16 v30, 0x0

    #@22b
    goto :goto_5

    #@22c
    .line 934
    :cond_11
    aget-object v5, p3, v19

    #@22e
    const-string/jumbo v6, "via"

    #@231
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v5

    #@235
    if-eqz v5, :cond_13

    #@237
    .line 935
    if-nez v31, :cond_12

    #@239
    .line 936
    add-int/lit8 v5, v19, 0x1

    #@23b
    aget-object v31, p3, v5

    #@23d
    .local v31, "via":Ljava/lang/String;
    goto :goto_5

    #@23e
    .line 938
    .end local v31    # "via":Ljava/lang/String;
    :cond_12
    const/16 v30, 0x0

    #@240
    goto :goto_5

    #@241
    .line 941
    :cond_13
    const/16 v30, 0x0

    #@243
    goto :goto_5

    #@244
    .line 944
    :cond_14
    if-eqz v30, :cond_16

    #@246
    .line 947
    const/16 v18, 0x0

    #@248
    .line 948
    .local v18, "gateway":Ljava/net/InetAddress;
    if-eqz v31, :cond_15

    #@24a
    :try_start_3
    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@24d
    move-result-object v18

    #@24e
    .line 949
    .end local v18    # "gateway":Ljava/net/InetAddress;
    :cond_15
    new-instance v26, Landroid/net/RouteInfo;

    #@250
    new-instance v5, Landroid/net/IpPrefix;

    #@252
    const/4 v6, 0x3

    #@253
    aget-object v6, p3, v6

    #@255
    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    #@258
    move-object/from16 v0, v26

    #@25a
    move-object/from16 v1, v18

    #@25c
    invoke-direct {v0, v5, v1, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@25f
    .line 950
    .local v26, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    #@261
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@263
    const/4 v6, 0x2

    #@264
    aget-object v6, p3, v6

    #@266
    move-object/from16 v0, v26

    #@268
    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    #@26b
    .line 951
    const/4 v5, 0x1

    #@26c
    return v5

    #@26d
    .line 952
    .end local v26    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v13

    #@26e
    .line 954
    :cond_16
    new-instance v5, Ljava/lang/IllegalStateException;

    #@270
    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@273
    throw v5

    #@274
    .line 957
    .end local v19    # "i":I
    .end local v30    # "valid":Z
    :sswitch_6
    const/4 v5, 0x1

    #@275
    aget-object v5, p3, v5

    #@277
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27a
    move-result v29

    #@27b
    .line 958
    .local v29, "uid":I
    const/4 v5, 0x2

    #@27c
    aget-object v5, p3, v5

    #@27e
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@281
    move-result-object v16

    #@282
    .line 960
    .local v16, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@285
    move-result-object v5

    #@286
    move/from16 v0, v29

    #@288
    move-object/from16 v1, v16

    #@28a
    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@28d
    goto/16 :goto_0

    #@28f
    .line 961
    :catch_4
    move-exception v21

    #@290
    .local v21, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@292
    .line 855
    .end local v16    # "firstPacket":[B
    .end local v21    # "ignored":Landroid/os/RemoteException;
    .end local v29    # "uid":I
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :catch_5
    move-exception v23

    #@293
    .local v23, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@295
    .line 798
    nop

    #@296
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x267 -> :sswitch_4
        0x268 -> :sswitch_5
        0x269 -> :sswitch_6
    .end sparse-switch
.end method

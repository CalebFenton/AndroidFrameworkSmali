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
    .line 725
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
    .line 745
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
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 730
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@3
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 731
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@b
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@12
    .line 732
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@14
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    #@17
    .line 727
    :goto_0
    return-void

    #@18
    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@1a
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get2(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    #@20
    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@26
    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 750
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
    move-result-object v14

    #@d
    .line 751
    .local v14, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    #@10
    .line 914
    :goto_0
    const/4 v5, 0x0

    #@11
    return v5

    #@12
    .line 760
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
    .line 763
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
    .line 764
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@34
    const/4 v6, 0x3

    #@35
    aget-object v6, p3, v6

    #@37
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    #@3a
    .line 765
    const/4 v5, 0x1

    #@3b
    return v5

    #@3c
    .line 761
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@3e
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v5

    #@42
    .line 766
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
    .line 767
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@52
    const/4 v6, 0x3

    #@53
    aget-object v6, p3, v6

    #@55
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    #@58
    .line 768
    const/4 v5, 0x1

    #@59
    return v5

    #@5a
    .line 769
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
    .line 770
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
    const-string/jumbo v10, "up"

    #@79
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    #@80
    .line 771
    const/4 v5, 0x1

    #@81
    return v5

    #@82
    .line 772
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
    .line 773
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
    const-string/jumbo v10, "up"

    #@a1
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v7

    #@a5
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    #@a8
    .line 774
    const/4 v5, 0x1

    #@a9
    return v5

    #@aa
    .line 776
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@ac
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@af
    throw v5

    #@b0
    .line 783
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
    .line 786
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
    .line 787
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
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    #@db
    .line 788
    const/4 v5, 0x1

    #@dc
    return v5

    #@dd
    .line 784
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    #@df
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e2
    throw v5

    #@e3
    .line 790
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    #@e5
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v5

    #@e9
    .line 797
    :sswitch_2
    move-object/from16 v0, p3

    #@eb
    array-length v5, v0

    #@ec
    const/4 v6, 0x4

    #@ed
    if-lt v5, v6, :cond_7

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
    if-eqz v5, :cond_7

    #@fb
    .line 800
    const-wide/16 v8, 0x0

    #@fd
    .line 801
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    #@ff
    array-length v5, v0

    #@100
    const/4 v6, 0x5

    #@101
    if-ne v5, v6, :cond_8

    #@103
    .line 803
    const/4 v5, 0x4

    #@104
    :try_start_0
    aget-object v5, p3, v5

    #@106
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    #@109
    move-result-wide v8

    #@10a
    .line 808
    :goto_1
    const/4 v5, 0x2

    #@10b
    aget-object v5, p3, v5

    #@10d
    const-string/jumbo v6, "active"

    #@110
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v21

    #@114
    .line 809
    .local v21, "isActive":Z
    move-object/from16 v0, p0

    #@116
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@118
    const/4 v6, 0x3

    #@119
    aget-object v6, p3, v6

    #@11b
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11e
    move-result v6

    #@11f
    .line 810
    if-eqz v21, :cond_9

    #@121
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@123
    .line 811
    :goto_2
    const/4 v10, 0x0

    #@124
    .line 809
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    #@127
    .line 812
    const/4 v5, 0x1

    #@128
    return v5

    #@129
    .line 798
    .end local v8    # "timestampNanos":J
    .end local v21    # "isActive":Z
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    #@12b
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v5

    #@12f
    .line 806
    .restart local v8    # "timestampNanos":J
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@132
    move-result-wide v8

    #@133
    goto :goto_1

    #@134
    .line 811
    .restart local v21    # "isActive":Z
    :cond_9
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@136
    goto :goto_2

    #@137
    .line 820
    .end local v8    # "timestampNanos":J
    .end local v21    # "isActive":Z
    :sswitch_3
    move-object/from16 v0, p3

    #@139
    array-length v5, v0

    #@13a
    const/4 v6, 0x7

    #@13b
    if-lt v5, v6, :cond_a

    #@13d
    const/4 v5, 0x1

    #@13e
    aget-object v5, p3, v5

    #@140
    const-string/jumbo v6, "Address"

    #@143
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v5

    #@147
    if-eqz v5, :cond_a

    #@149
    .line 824
    const/4 v5, 0x4

    #@14a
    aget-object v19, p3, v5

    #@14c
    .line 827
    .local v19, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    #@14d
    :try_start_1
    aget-object v5, p3, v5

    #@14f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@152
    move-result v16

    #@153
    .line 828
    .local v16, "flags":I
    const/4 v5, 0x6

    #@154
    aget-object v5, p3, v5

    #@156
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@159
    move-result v26

    #@15a
    .line 829
    .local v26, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    #@15c
    const/4 v5, 0x3

    #@15d
    aget-object v5, p3, v5

    #@15f
    move/from16 v0, v16

    #@161
    move/from16 v1, v26

    #@163
    invoke-direct {v4, v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@166
    .line 836
    .local v4, "address":Landroid/net/LinkAddress;
    const/4 v5, 0x2

    #@167
    aget-object v5, p3, v5

    #@169
    const-string/jumbo v6, "updated"

    #@16c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16f
    move-result v5

    #@170
    if-eqz v5, :cond_b

    #@172
    .line 837
    move-object/from16 v0, p0

    #@174
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@176
    move-object/from16 v0, v19

    #@178
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@17b
    .line 841
    :goto_3
    const/4 v5, 0x1

    #@17c
    return v5

    #@17d
    .line 821
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v16    # "flags":I
    .end local v19    # "iface":Ljava/lang/String;
    .end local v26    # "scope":I
    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    #@17f
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@182
    throw v5

    #@183
    .line 832
    .restart local v19    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@184
    .line 833
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@186
    invoke-direct {v5, v14, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@189
    throw v5

    #@18a
    .line 830
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    #@18b
    .line 831
    .local v13, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@18d
    invoke-direct {v5, v14, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@190
    throw v5

    #@191
    .line 839
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "address":Landroid/net/LinkAddress;
    .restart local v16    # "flags":I
    .restart local v26    # "scope":I
    :cond_b
    move-object/from16 v0, p0

    #@193
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@195
    move-object/from16 v0, v19

    #@197
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@19a
    goto :goto_3

    #@19b
    .line 850
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v16    # "flags":I
    .end local v19    # "iface":Ljava/lang/String;
    .end local v26    # "scope":I
    :sswitch_4
    move-object/from16 v0, p3

    #@19d
    array-length v5, v0

    #@19e
    const/4 v6, 0x6

    #@19f
    if-ne v5, v6, :cond_c

    #@1a1
    .line 851
    const/4 v5, 0x1

    #@1a2
    aget-object v5, p3, v5

    #@1a4
    const-string/jumbo v6, "DnsInfo"

    #@1a7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1aa
    move-result v5

    #@1ab
    .line 850
    if-eqz v5, :cond_c

    #@1ad
    .line 852
    const/4 v5, 0x2

    #@1ae
    aget-object v5, p3, v5

    #@1b0
    const-string/jumbo v6, "servers"

    #@1b3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v5

    #@1b7
    .line 850
    if-eqz v5, :cond_c

    #@1b9
    .line 854
    const/4 v5, 0x4

    #@1ba
    :try_start_2
    aget-object v5, p3, v5

    #@1bc
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@1bf
    move-result-wide v22

    #@1c0
    .line 858
    .local v22, "lifetime":J
    const/4 v5, 0x5

    #@1c1
    aget-object v5, p3, v5

    #@1c3
    const-string/jumbo v6, ","

    #@1c6
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c9
    move-result-object v27

    #@1ca
    .line 859
    .local v27, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cc
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@1ce
    const/4 v6, 0x3

    #@1cf
    aget-object v6, p3, v6

    #@1d1
    move-wide/from16 v0, v22

    #@1d3
    move-object/from16 v2, v27

    #@1d5
    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    #@1d8
    .line 861
    .end local v22    # "lifetime":J
    .end local v27    # "servers":[Ljava/lang/String;
    :cond_c
    const/4 v5, 0x1

    #@1d9
    return v5

    #@1da
    .line 855
    :catch_2
    move-exception v13

    #@1db
    .line 856
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@1dd
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e0
    throw v5

    #@1e1
    .line 868
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    const/4 v5, 0x1

    #@1e2
    aget-object v5, p3, v5

    #@1e4
    const-string/jumbo v6, "Route"

    #@1e7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ea
    move-result v5

    #@1eb
    if-eqz v5, :cond_d

    #@1ed
    move-object/from16 v0, p3

    #@1ef
    array-length v5, v0

    #@1f0
    const/4 v6, 0x6

    #@1f1
    if-ge v5, v6, :cond_e

    #@1f3
    .line 869
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    #@1f5
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f8
    throw v5

    #@1f9
    .line 872
    :cond_e
    const/16 v30, 0x0

    #@1fb
    .line 873
    .local v30, "via":Ljava/lang/String;
    const/4 v11, 0x0

    #@1fc
    .line 874
    .local v11, "dev":Ljava/lang/String;
    const/16 v29, 0x1

    #@1fe
    .line 875
    .local v29, "valid":Z
    const/16 v18, 0x4

    #@200
    .end local v11    # "dev":Ljava/lang/String;
    .end local v30    # "via":Ljava/lang/String;
    .local v18, "i":I
    :goto_4
    add-int/lit8 v5, v18, 0x1

    #@202
    move-object/from16 v0, p3

    #@204
    array-length v6, v0

    #@205
    if-ge v5, v6, :cond_13

    #@207
    if-eqz v29, :cond_13

    #@209
    .line 876
    aget-object v5, p3, v18

    #@20b
    const-string/jumbo v6, "dev"

    #@20e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@211
    move-result v5

    #@212
    if-eqz v5, :cond_10

    #@214
    .line 877
    if-nez v11, :cond_f

    #@216
    .line 878
    add-int/lit8 v5, v18, 0x1

    #@218
    aget-object v11, p3, v5

    #@21a
    .line 875
    :goto_5
    add-int/lit8 v18, v18, 0x2

    #@21c
    goto :goto_4

    #@21d
    .line 880
    :cond_f
    const/16 v29, 0x0

    #@21f
    goto :goto_5

    #@220
    .line 882
    :cond_10
    aget-object v5, p3, v18

    #@222
    const-string/jumbo v6, "via"

    #@225
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@228
    move-result v5

    #@229
    if-eqz v5, :cond_12

    #@22b
    .line 883
    if-nez v30, :cond_11

    #@22d
    .line 884
    add-int/lit8 v5, v18, 0x1

    #@22f
    aget-object v30, p3, v5

    #@231
    .local v30, "via":Ljava/lang/String;
    goto :goto_5

    #@232
    .line 886
    .end local v30    # "via":Ljava/lang/String;
    :cond_11
    const/16 v29, 0x0

    #@234
    goto :goto_5

    #@235
    .line 889
    :cond_12
    const/16 v29, 0x0

    #@237
    goto :goto_5

    #@238
    .line 892
    :cond_13
    if-eqz v29, :cond_15

    #@23a
    .line 895
    const/16 v17, 0x0

    #@23c
    .line 896
    .local v17, "gateway":Ljava/net/InetAddress;
    if-eqz v30, :cond_14

    #@23e
    :try_start_3
    invoke-static/range {v30 .. v30}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@241
    move-result-object v17

    #@242
    .line 897
    .end local v17    # "gateway":Ljava/net/InetAddress;
    :cond_14
    new-instance v25, Landroid/net/RouteInfo;

    #@244
    new-instance v5, Landroid/net/IpPrefix;

    #@246
    const/4 v6, 0x3

    #@247
    aget-object v6, p3, v6

    #@249
    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    #@24c
    move-object/from16 v0, v25

    #@24e
    move-object/from16 v1, v17

    #@250
    invoke-direct {v0, v5, v1, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@253
    .line 898
    .local v25, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    #@255
    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #@257
    const/4 v6, 0x2

    #@258
    aget-object v6, p3, v6

    #@25a
    move-object/from16 v0, v25

    #@25c
    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    #@25f
    .line 899
    const/4 v5, 0x1

    #@260
    return v5

    #@261
    .line 900
    .end local v25    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v12

    #@262
    .line 902
    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    #@264
    invoke-direct {v5, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@267
    throw v5

    #@268
    .line 905
    .end local v18    # "i":I
    .end local v29    # "valid":Z
    :sswitch_6
    const/4 v5, 0x1

    #@269
    aget-object v5, p3, v5

    #@26b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@26e
    move-result v28

    #@26f
    .line 906
    .local v28, "uid":I
    const/4 v5, 0x2

    #@270
    aget-object v5, p3, v5

    #@272
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@275
    move-result-object v15

    #@276
    .line 908
    .local v15, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@279
    move-result-object v5

    #@27a
    move/from16 v0, v28

    #@27c
    invoke-interface {v5, v0, v15}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@27f
    goto/16 :goto_0

    #@281
    .line 909
    :catch_4
    move-exception v20

    #@282
    .local v20, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@284
    .line 804
    .end local v15    # "firstPacket":[B
    .end local v20    # "ignored":Landroid/os/RemoteException;
    .end local v28    # "uid":I
    .restart local v8    # "timestampNanos":J
    :catch_5
    move-exception v24

    #@285
    .local v24, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@287
    .line 751
    nop

    #@288
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

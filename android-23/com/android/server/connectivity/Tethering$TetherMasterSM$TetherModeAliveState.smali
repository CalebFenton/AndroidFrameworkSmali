.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@0
    .prologue
    .line 1535
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@5
    .line 1536
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@8
    .line 1535
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1539
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    #@4
    .line 1540
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@6
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@9
    .line 1542
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@b
    .line 1544
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@d
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@10
    .line 1545
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x0

    #@15
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@17
    .line 1538
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()Z

    #@3
    .line 1550
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@5
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@8
    .line 1551
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    #@c
    .line 1548
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 1555
    const-string/jumbo v7, "Tethering"

    #@5
    new-instance v8, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v9, "TetherModeAliveState.processMessage what="

    #@d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v8

    #@11
    iget v9, p1, Landroid/os/Message;->what:I

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1556
    const/4 v3, 0x1

    #@1f
    .line 1557
    .local v3, "retValue":Z
    iget v7, p1, Landroid/os/Message;->what:I

    #@21
    packed-switch v7, :pswitch_data_0

    #@24
    .line 1607
    const/4 v3, 0x0

    #@25
    .line 1610
    :cond_0
    :goto_0
    return v3

    #@26
    .line 1559
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@2a
    .line 1561
    .local v4, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2c
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 1563
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get11(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 1562
    const/16 v6, 0xc

    #@3b
    invoke-virtual {v4, v6, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1566
    .end local v4    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@43
    .line 1568
    .restart local v4    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@45
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    .line 1569
    .local v0, "index":I
    const/4 v5, -0x1

    #@4e
    if-eq v0, v5, :cond_2

    #@50
    .line 1570
    const-string/jumbo v5, "Tethering"

    #@53
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v7, "TetherModeAlive removing notifyee "

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1571
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@6c
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@73
    .line 1572
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@75
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@7c
    move-result v5

    #@7d
    if-eqz v5, :cond_1

    #@7f
    .line 1573
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    #@82
    goto :goto_0

    #@83
    .line 1576
    :cond_1
    const-string/jumbo v5, "Tethering"

    #@86
    new-instance v6, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v7, "TetherModeAlive still has "

    #@8e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@94
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@9b
    move-result v7

    #@9c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    .line 1577
    const-string/jumbo v7, " live requests:"

    #@a3
    .line 1576
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 1578
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b0
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    #@b3
    move-result-object v5

    #@b4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b7
    move-result-object v2

    #@b8
    .local v2, "o$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@bb
    move-result v5

    #@bc
    if-eqz v5, :cond_0

    #@be
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c1
    move-result-object v1

    #@c2
    .local v1, "o":Ljava/lang/Object;
    const-string/jumbo v5, "Tethering"

    #@c5
    new-instance v6, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v7, "  "

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v6

    #@d1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v6

    #@d5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v6

    #@d9
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    goto :goto_1

    #@dd
    .line 1582
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "o$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "Tethering"

    #@e0
    new-instance v6, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v7, "TetherModeAliveState UNREQUESTED has unknown who: "

    #@e8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v6

    #@ec
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    goto/16 :goto_0

    #@f9
    .line 1587
    .end local v0    # "index":I
    .end local v4    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@fb
    .line 1588
    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@fd
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@100
    .line 1589
    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@102
    if-eqz v7, :cond_3

    #@104
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@106
    goto/16 :goto_0

    #@108
    :cond_3
    move v5, v6

    #@109
    goto :goto_2

    #@10a
    .line 1594
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@10c
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@10f
    move-result v5

    #@110
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@112
    if-ne v5, v6, :cond_0

    #@114
    .line 1599
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@116
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    #@119
    move-result v5

    #@11a
    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnUpstreamMobileConnection(I)Z

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1603
    :pswitch_4
    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@121
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    #@124
    .line 1604
    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@126
    if-eqz v7, :cond_4

    #@128
    :goto_3
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    #@12a
    goto/16 :goto_0

    #@12c
    :cond_4
    move v5, v6

    #@12d
    goto :goto_3

    #@12e
    .line 1557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

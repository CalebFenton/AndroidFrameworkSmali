.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcRetryingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 1417
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    .line 1420
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@5
    move-result-object v1

    #@6
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@d
    move-result v2

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 1421
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1424
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "DcRetryingState: enter() not retrying rat changed, mConnectionParams.mRilRat="

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1425
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@29
    move-result-object v2

    #@2a
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    #@2c
    .line 1424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1426
    const-string/jumbo v2, " != mRilRat:"

    #@33
    .line 1424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1426
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@39
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@3c
    move-result v2

    #@3d
    .line 1424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 1427
    const-string/jumbo v2, " transitionTo(mInactiveState)"

    #@44
    .line 1424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 1428
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4e
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@51
    .line 1430
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@53
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@56
    move-result-object v1

    #@57
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@59
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@5c
    .line 1431
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@5e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@60
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@63
    move-result-object v2

    #@64
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@67
    .line 1419
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    #@68
    .line 1434
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "DcRetryingState: enter() mTag="

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@78
    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 1435
    const-string/jumbo v3, ", call notifyAllOfDisconnectDcRetrying lostConnection"

    #@81
    .line 1434
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@8c
    .line 1438
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8e
    const-string/jumbo v2, "lostDataConnection"

    #@91
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@94
    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@96
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@99
    move-result-object v1

    #@9a
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9c
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@9f
    .line 1442
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a1
    const/4 v2, -0x1

    #@a2
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@a4
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1450
    iget v10, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v10, :sswitch_data_0

    #@6
    .line 1570
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8
    new-instance v11, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v12, "DcRetryingState nothandled msg.what="

    #@10
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v11

    #@14
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16
    iget v13, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1b
    move-result-object v12

    #@1c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v11

    #@20
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@27
    .line 1572
    const/4 v7, 0x0

    #@28
    .line 1576
    .local v7, "retVal":Z
    :goto_0
    return v7

    #@29
    .line 1452
    .end local v7    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v0, Landroid/os/AsyncResult;

    #@2d
    .line 1453
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f
    check-cast v4, Landroid/util/Pair;

    #@31
    .line 1454
    .local v4, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@33
    check-cast v10, Ljava/lang/Integer;

    #@35
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@38
    move-result v3

    #@39
    .line 1455
    .local v3, "drs":I
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3b
    check-cast v10, Ljava/lang/Integer;

    #@3d
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@40
    move-result v6

    #@41
    .line 1456
    .local v6, "rat":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@43
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@46
    move-result v10

    #@47
    if-ne v6, v10, :cond_0

    #@49
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4b
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@4e
    move-result v10

    #@4f
    if-ne v3, v10, :cond_0

    #@51
    .line 1458
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@53
    new-instance v11, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v12, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED strange no change in drs="

    #@5b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v11

    #@5f
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v11

    #@63
    .line 1460
    const-string/jumbo v12, " rat="

    #@66
    .line 1458
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    .line 1460
    const-string/jumbo v12, " ignoring"

    #@71
    .line 1458
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v11

    #@79
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7c
    .line 1489
    :goto_1
    const/4 v7, 0x1

    #@7d
    .line 1490
    .restart local v7    # "retVal":Z
    goto :goto_0

    #@7e
    .line 1464
    .end local v7    # "retVal":Z
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@80
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@83
    move-result-object v10

    #@84
    iget-boolean v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    #@86
    if-eqz v10, :cond_1

    #@88
    .line 1465
    const/4 v7, 0x0

    #@89
    .line 1466
    .restart local v7    # "retVal":Z
    goto :goto_0

    #@8a
    .line 1470
    .end local v7    # "retVal":Z
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8c
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@8f
    move-result-object v10

    #@90
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@92
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@95
    .line 1471
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@97
    invoke-static {v10, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    #@9a
    .line 1472
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9c
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9e
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@a1
    move-result-object v11

    #@a2
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@a5
    .line 1475
    new-instance v10, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v11, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED giving up changed from "

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    .line 1476
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b3
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@b6
    move-result v11

    #@b7
    .line 1475
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    .line 1477
    const-string/jumbo v11, " to rat="

    #@be
    .line 1475
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v10

    #@c2
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    .line 1478
    const-string/jumbo v11, " or drs changed from "

    #@c9
    .line 1475
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v10

    #@cd
    .line 1478
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@cf
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@d2
    move-result v11

    #@d3
    .line 1475
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v10

    #@d7
    .line 1478
    const-string/jumbo v11, " to drs="

    #@da
    .line 1475
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v10

    #@e2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v8

    #@e6
    .line 1479
    .local v8, "s":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e8
    invoke-static {v10, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@eb
    .line 1481
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@ed
    invoke-static {v10, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@f0
    .line 1482
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@f2
    invoke-static {v10, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set14(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    #@f5
    .line 1484
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@f7
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@fa
    move-result-object v10

    #@fb
    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@fe
    move-result-object v9

    #@ff
    .line 1485
    .local v9, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@102
    move-result v5

    #@103
    .line 1486
    .local v5, "networkType":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@105
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@108
    move-result-object v10

    #@109
    .line 1487
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@10c
    move-result-object v11

    #@10d
    .line 1486
    invoke-virtual {v10, v5, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    #@110
    goto/16 :goto_1

    #@112
    .line 1493
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "drs":I
    .end local v4    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "networkType":I
    .end local v6    # "rat":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "ss":Landroid/telephony/ServiceState;
    :sswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@114
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@116
    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@118
    if-ne v10, v11, :cond_2

    #@11a
    .line 1494
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11c
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@11e
    invoke-virtual {v10}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    #@121
    .line 1496
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@123
    new-instance v11, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v12, "DcRetryingState EVENT_RETRY_CONNECTION RetryCount="

    #@12b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v11

    #@12f
    .line 1497
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@131
    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@133
    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    #@136
    move-result v12

    #@137
    .line 1496
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v11

    #@13b
    .line 1498
    const-string/jumbo v12, " mConnectionParams="

    #@13e
    .line 1496
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v11

    #@142
    .line 1498
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@144
    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@147
    move-result-object v12

    #@148
    .line 1496
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v11

    #@14c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v11

    #@150
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@153
    .line 1500
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@155
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@157
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@15a
    move-result-object v11

    #@15b
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    #@15e
    .line 1501
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@160
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@162
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@165
    move-result-object v11

    #@166
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@169
    .line 1508
    :goto_2
    const/4 v7, 0x1

    #@16a
    .line 1509
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@16c
    .line 1504
    .end local v7    # "retVal":Z
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@16e
    new-instance v11, Ljava/lang/StringBuilder;

    #@170
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v12, "DcRetryingState stale EVENT_RETRY_CONNECTION tag:"

    #@176
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v11

    #@17a
    .line 1505
    iget v12, p1, Landroid/os/Message;->arg1:I

    #@17c
    .line 1504
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v11

    #@180
    .line 1505
    const-string/jumbo v12, " != mTag:"

    #@183
    .line 1504
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v11

    #@187
    .line 1505
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@189
    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@18b
    .line 1504
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v11

    #@18f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v11

    #@193
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@196
    goto :goto_2

    #@197
    .line 1513
    :sswitch_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@199
    const-string/jumbo v11, "DcRetryingState: msg.what=RSP_RESET, ignore we\'re already reset"

    #@19c
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@19f
    .line 1515
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a1
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@1a4
    move-result-object v10

    #@1a5
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a7
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@1aa
    move-result-object v11

    #@1ab
    .line 1516
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ad
    .line 1515
    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@1b0
    .line 1517
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1b2
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1b4
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@1b7
    move-result-object v11

    #@1b8
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@1bb
    .line 1518
    const/4 v7, 0x1

    #@1bc
    .line 1519
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@1be
    .line 1522
    .end local v7    # "retVal":Z
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c0
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@1c2
    .line 1524
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1c4
    new-instance v11, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v12, "DcRetryingState: msg.what=EVENT_CONNECT RefCount="

    #@1cc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v11

    #@1d0
    .line 1525
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1d2
    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@1d4
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@1d7
    move-result v12

    #@1d8
    .line 1524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v11

    #@1dc
    .line 1525
    const-string/jumbo v12, " cp="

    #@1df
    .line 1524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v11

    #@1e3
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v11

    #@1e7
    .line 1526
    const-string/jumbo v12, " mConnectionParams="

    #@1ea
    .line 1524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v11

    #@1ee
    .line 1526
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f0
    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@1f3
    move-result-object v12

    #@1f4
    .line 1524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v11

    #@1f8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v11

    #@1fc
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1ff
    .line 1528
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@201
    invoke-static {v10, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    #@204
    move-result v10

    #@205
    if-eqz v10, :cond_3

    #@207
    .line 1529
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@209
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@20b
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@20e
    move-result-object v11

    #@20f
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    #@212
    .line 1530
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@214
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@216
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@219
    move-result-object v11

    #@21a
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@21d
    .line 1538
    :goto_3
    const/4 v7, 0x1

    #@21e
    .line 1539
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@220
    .line 1533
    .end local v7    # "retVal":Z
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@222
    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_CONNECT initConnection failed"

    #@225
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@228
    .line 1535
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@22a
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@22c
    invoke-static {v10, v1, v11, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@22f
    goto :goto_3

    #@230
    .line 1542
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@232
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@234
    .line 1544
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@236
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@238
    iget-object v11, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@23a
    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@23d
    move-result v10

    #@23e
    if-eqz v10, :cond_4

    #@240
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@242
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@244
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@247
    move-result v10

    #@248
    if-nez v10, :cond_4

    #@24a
    .line 1546
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@24c
    new-instance v11, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT  RefCount="

    #@254
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v11

    #@258
    .line 1547
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@25a
    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@25c
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@25f
    move-result v12

    #@260
    .line 1546
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@263
    move-result-object v11

    #@264
    .line 1547
    const-string/jumbo v12, " dp="

    #@267
    .line 1546
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v11

    #@26b
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v11

    #@26f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v11

    #@273
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@276
    .line 1549
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@278
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@27b
    move-result-object v10

    #@27c
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    #@27f
    .line 1550
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@281
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@283
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@286
    move-result-object v11

    #@287
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@28a
    .line 1555
    :goto_4
    const/4 v7, 0x1

    #@28b
    .line 1556
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@28d
    .line 1552
    .end local v7    # "retVal":Z
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28f
    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_DISCONNECT"

    #@292
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@295
    .line 1553
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@297
    invoke-static {v10, v2, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@29a
    goto :goto_4

    #@29b
    .line 1560
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :sswitch_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@29d
    new-instance v11, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT/DISCONNECT_ALL RefCount="

    #@2a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v11

    #@2a9
    .line 1561
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2ab
    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@2ad
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@2b0
    move-result v12

    #@2b1
    .line 1560
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v11

    #@2b5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v11

    #@2b9
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2bc
    .line 1563
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2be
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2c1
    move-result-object v10

    #@2c2
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2c4
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@2c7
    .line 1564
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2c9
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2cb
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2ce
    move-result-object v11

    #@2cf
    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@2d2
    .line 1565
    const/4 v7, 0x1

    #@2d3
    .line 1566
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@2d5
    .line 1450
    nop

    #@2d6
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_3
        0x40004 -> :sswitch_4
        0x40006 -> :sswitch_5
        0x4000a -> :sswitch_1
        0x4000b -> :sswitch_0
        0x4100c -> :sswitch_2
    .end sparse-switch
.end method

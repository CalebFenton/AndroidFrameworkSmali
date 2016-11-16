.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimAbsentSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p2, "generationNumber"    # I

    #@0
    .prologue
    .line 1548
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    .line 1549
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1546
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@8
    .line 1550
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@a
    .line 1548
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1559
    iget v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@2
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    move-result-object v11

    #@8
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@b
    move-result v11

    #@c
    if-eq v10, v11, :cond_0

    #@e
    return-void

    #@f
    .line 1562
    :cond_0
    const-string/jumbo v10, "ss"

    #@12
    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    .line 1564
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    #@19
    new-instance v11, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v12, "got Sim changed to state "

    #@21
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v11

    #@25
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v11

    #@29
    const-string/jumbo v12, ", mSimAbsentSeen="

    #@2c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    .line 1565
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@32
    .line 1564
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v11

    #@3a
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1566
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@3f
    if-nez v10, :cond_1

    #@41
    const-string/jumbo v10, "ABSENT"

    #@44
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v10

    #@48
    if-eqz v10, :cond_1

    #@4a
    .line 1567
    const/4 v10, 0x1

    #@4b
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@4d
    .line 1570
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@4f
    if-eqz v10, :cond_4

    #@51
    const-string/jumbo v10, "LOADED"

    #@54
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_4

    #@5a
    .line 1571
    const/4 v10, 0x0

    #@5b
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@5d
    .line 1573
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@5f
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@61
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@68
    move-result-object v10

    #@69
    const v11, 0x1040034

    #@6c
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@73
    move-result v10

    #@74
    if-nez v10, :cond_7

    #@76
    .line 1575
    new-instance v9, Ljava/util/ArrayList;

    #@78
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@7b
    .line 1576
    .local v9, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@7d
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7f
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@82
    move-result-object v11

    #@83
    monitor-enter v11
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 1577
    const/4 v1, 0x0

    #@85
    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@87
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@89
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@90
    move-result v10

    #@91
    if-ge v1, v10, :cond_5

    #@93
    .line 1578
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@95
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@97
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    #@9a
    move-result-object v10

    #@9b
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9e
    move-result-object v6

    #@9f
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    #@a1
    .line 1579
    .local v6, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v10, v6, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@a3
    .line 1580
    const/4 v12, 0x2

    #@a4
    .line 1579
    if-eq v10, v12, :cond_3

    #@a6
    .line 1577
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@a8
    goto :goto_0

    #@a9
    .line 1583
    :cond_3
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@ab
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@ad
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b4
    move-result-object v2

    #@b5
    check-cast v2, Ljava/lang/String;

    #@b7
    .line 1584
    .local v2, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b9
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@bb
    invoke-static {v10, v2}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    #@be
    move-result v3

    #@bf
    .line 1585
    .local v3, "interfaceType":I
    const/4 v10, -0x1

    #@c0
    if-eq v3, v10, :cond_2

    #@c2
    .line 1586
    new-instance v10, Ljava/lang/Integer;

    #@c4
    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    #@c7
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ca
    goto :goto_1

    #@cb
    .line 1576
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "interfaceType":I
    .end local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v10

    #@cc
    :try_start_2
    monitor-exit v11

    #@cd
    throw v10
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@ce
    .line 1603
    .end local v1    # "i":I
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@cf
    .line 1604
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "Tethering"

    #@d2
    const-string/jumbo v11, "no prov-check needed for new SIM"

    #@d5
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 1554
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :goto_2
    return-void

    #@d9
    .restart local v1    # "i":I
    .restart local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_3
    monitor-exit v11

    #@da
    .line 1590
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@dd
    move-result-object v8

    #@de
    .local v8, "tetherType$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@e1
    move-result v10

    #@e2
    if-eqz v10, :cond_6

    #@e4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e7
    move-result-object v10

    #@e8
    check-cast v10, Ljava/lang/Integer;

    #@ea
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@ed
    move-result v7

    #@ee
    .line 1591
    .local v7, "tetherType":I
    new-instance v4, Landroid/content/Intent;

    #@f0
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@f3
    .line 1593
    .local v4, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v10, "extraAddTetherType"

    #@f6
    .line 1592
    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f9
    .line 1595
    const-string/jumbo v10, "extraRunProvision"

    #@fc
    const/4 v11, 0x1

    #@fd
    .line 1594
    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@100
    .line 1596
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Landroid/content/ComponentName;

    #@103
    move-result-object v10

    #@104
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@107
    .line 1597
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@109
    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@10b
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@10e
    move-result-object v10

    #@10f
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@111
    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@114
    goto :goto_3

    #@115
    .line 1599
    .end local v4    # "startProvIntent":Landroid/content/Intent;
    .end local v7    # "tetherType":I
    :cond_6
    const-string/jumbo v10, "Tethering"

    #@118
    const-string/jumbo v11, "re-evaluate provisioning"

    #@11b
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11e
    goto :goto_2

    #@11f
    .line 1601
    .end local v1    # "i":I
    .end local v8    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    const-string/jumbo v10, "Tethering"

    #@122
    const-string/jumbo v11, "no prov-check needed for new SIM"

    #@125
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    #@128
    goto :goto_2
.end method

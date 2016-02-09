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
    .line 1439
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    .line 1440
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1437
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@8
    .line 1441
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@a
    .line 1439
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1447
    const-string/jumbo v12, "Tethering"

    #@3
    new-instance v13, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v14, "simchange mGenerationNumber="

    #@b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v13

    #@f
    iget v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@11
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v13

    #@15
    .line 1448
    const-string/jumbo v14, ", current generationNumber="

    #@18
    .line 1447
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v13

    #@1c
    .line 1448
    iget-object v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@1e
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@21
    move-result-object v14

    #@22
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@25
    move-result v14

    #@26
    .line 1447
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v13

    #@2a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v13

    #@2e
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1450
    iget v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@33
    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@35
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3c
    move-result v13

    #@3d
    if-eq v12, v13, :cond_0

    #@3f
    return-void

    #@40
    .line 1453
    :cond_0
    const-string/jumbo v12, "ss"

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 1455
    .local v7, "state":Ljava/lang/String;
    const-string/jumbo v12, "Tethering"

    #@4c
    new-instance v13, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v14, "got Sim changed to state "

    #@54
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v13

    #@58
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v13

    #@5c
    const-string/jumbo v14, ", mSimAbsentSeen="

    #@5f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v13

    #@63
    .line 1456
    iget-boolean v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@65
    .line 1455
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v13

    #@69
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v13

    #@6d
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1457
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@72
    if-nez v12, :cond_1

    #@74
    const-string/jumbo v12, "ABSENT"

    #@77
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v12

    #@7b
    if-eqz v12, :cond_1

    #@7d
    .line 1458
    const/4 v12, 0x1

    #@7e
    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@80
    .line 1461
    :cond_1
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@82
    if-eqz v12, :cond_3

    #@84
    const-string/jumbo v12, "LOADED"

    #@87
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v12

    #@8b
    if-eqz v12, :cond_3

    #@8d
    .line 1462
    const/4 v12, 0x0

    #@8e
    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@90
    .line 1464
    :try_start_0
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@92
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@94
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@97
    move-result-object v12

    #@98
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9b
    move-result-object v12

    #@9c
    const v13, 0x104001a

    #@9f
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@a2
    move-result-object v12

    #@a3
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    #@a6
    move-result v12

    #@a7
    if-nez v12, :cond_8

    #@a9
    .line 1466
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@ab
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@ad
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@b0
    move-result-object v12

    #@b1
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b4
    move-result-object v12

    #@b5
    .line 1467
    const v13, 0x104001c

    #@b8
    .line 1466
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@bb
    move-result-object v8

    #@bc
    .line 1468
    .local v8, "tetherService":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    #@be
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@c1
    .line 1469
    .local v11, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@c3
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@c5
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@c8
    move-result-object v13

    #@c9
    monitor-enter v13
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    .line 1470
    :try_start_1
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@cc
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@ce
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    #@d1
    move-result-object v12

    #@d2
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d5
    move-result-object v4

    #@d6
    .line 1471
    .local v4, "ifaces":Ljava/util/Set;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d9
    move-result-object v3

    #@da
    .local v3, "iface$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@dd
    move-result v12

    #@de
    if-eqz v12, :cond_6

    #@e0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e3
    move-result-object v2

    #@e4
    .line 1472
    .local v2, "iface":Ljava/lang/Object;
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@e6
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e8
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    #@eb
    move-result-object v12

    #@ec
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    move-result-object v5

    #@f0
    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@f2
    .line 1473
    .local v5, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v5, :cond_2

    #@f4
    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@f7
    move-result v12

    #@f8
    if-eqz v12, :cond_2

    #@fa
    .line 1474
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@fc
    iget-object v14, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@fe
    move-object v0, v2

    #@ff
    check-cast v0, Ljava/lang/String;

    #@101
    move-object v12, v0

    #@102
    invoke-static {v14, v12}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    #@105
    move-result v12

    #@106
    if-eqz v12, :cond_4

    #@108
    .line 1475
    new-instance v12, Ljava/lang/Integer;

    #@10a
    const/4 v14, 0x1

    #@10b
    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    #@10e
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@111
    goto :goto_0

    #@112
    .line 1469
    .end local v2    # "iface":Ljava/lang/Object;
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    #@113
    :try_start_2
    monitor-exit v13

    #@114
    throw v12
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@115
    .line 1496
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    #@116
    .line 1497
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "Tethering"

    #@119
    const-string/jumbo v13, "no prov-check needed for new SIM"

    #@11c
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    .line 1445
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_1
    return-void

    #@120
    .line 1476
    .restart local v2    # "iface":Ljava/lang/Object;
    .restart local v3    # "iface$iterator":Ljava/util/Iterator;
    .restart local v4    # "ifaces":Ljava/util/Set;
    .restart local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .restart local v8    # "tetherService":Ljava/lang/String;
    .restart local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_3
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@122
    iget-object v14, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@124
    move-object v0, v2

    #@125
    check-cast v0, Ljava/lang/String;

    #@127
    move-object v12, v0

    #@128
    invoke-virtual {v14, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@12b
    move-result v12

    #@12c
    if-eqz v12, :cond_5

    #@12e
    .line 1477
    new-instance v12, Ljava/lang/Integer;

    #@130
    const/4 v14, 0x0

    #@131
    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    #@134
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@137
    goto :goto_0

    #@138
    .line 1478
    :cond_5
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@13a
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@13c
    check-cast v2, Ljava/lang/String;

    #@13e
    .end local v2    # "iface":Ljava/lang/Object;
    invoke-virtual {v12, v2}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    #@141
    move-result v12

    #@142
    if-eqz v12, :cond_2

    #@144
    .line 1479
    new-instance v12, Ljava/lang/Integer;

    #@146
    const/4 v14, 0x2

    #@147
    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    #@14a
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@14d
    goto :goto_0

    #@14e
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_6
    :try_start_4
    monitor-exit v13

    #@14f
    .line 1484
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@152
    move-result-object v10

    #@153
    .local v10, "tetherType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@156
    move-result v12

    #@157
    if-eqz v12, :cond_7

    #@159
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15c
    move-result-object v12

    #@15d
    check-cast v12, Ljava/lang/Integer;

    #@15f
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@162
    move-result v9

    #@163
    .line 1485
    .local v9, "tetherType":I
    new-instance v6, Landroid/content/Intent;

    #@165
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@168
    .line 1486
    .local v6, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v12, "extraAddTetherType"

    #@16b
    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16e
    .line 1487
    const-string/jumbo v12, "extraRunProvision"

    #@171
    const/4 v13, 0x1

    #@172
    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@175
    .line 1489
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@178
    move-result-object v12

    #@179
    .line 1488
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@17c
    .line 1490
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@17e
    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@180
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@183
    move-result-object v12

    #@184
    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@186
    invoke-virtual {v12, v6, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@189
    goto :goto_2

    #@18a
    .line 1492
    .end local v6    # "startProvIntent":Landroid/content/Intent;
    .end local v9    # "tetherType":I
    :cond_7
    const-string/jumbo v12, "Tethering"

    #@18d
    const-string/jumbo v13, "re-evaluate provisioning"

    #@190
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@193
    goto :goto_1

    #@194
    .line 1494
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v12, "Tethering"

    #@197
    const-string/jumbo v13, "no prov-check needed for new SIM"

    #@19a
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    #@19d
    goto :goto_1
.end method

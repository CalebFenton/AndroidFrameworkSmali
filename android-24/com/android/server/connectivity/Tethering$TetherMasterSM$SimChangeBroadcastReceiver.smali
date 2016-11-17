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
    .line 1819
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2
    .line 1820
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1817
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@8
    .line 1821
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@a
    .line 1819
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1830
    iget v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    #@2
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@4
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    move-result-object v12

    #@8
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@b
    move-result v12

    #@c
    if-eq v11, v12, :cond_0

    #@e
    return-void

    #@f
    .line 1833
    :cond_0
    const-string/jumbo v11, "ss"

    #@12
    move-object/from16 v0, p2

    #@14
    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    .line 1835
    .local v7, "state":Ljava/lang/String;
    const-string/jumbo v11, "Tethering"

    #@1b
    new-instance v12, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v13, "got Sim changed to state "

    #@23
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v12

    #@27
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v12

    #@2b
    const-string/jumbo v13, ", mSimAbsentSeen="

    #@2e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v12

    #@32
    .line 1836
    iget-boolean v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@34
    .line 1835
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37
    move-result-object v12

    #@38
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v12

    #@3c
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1837
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@41
    if-nez v11, :cond_1

    #@43
    const-string/jumbo v11, "ABSENT"

    #@46
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_1

    #@4c
    .line 1838
    const/4 v11, 0x1

    #@4d
    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@4f
    .line 1841
    :cond_1
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@51
    if-eqz v11, :cond_3

    #@53
    const-string/jumbo v11, "LOADED"

    #@56
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v11

    #@5a
    if-eqz v11, :cond_3

    #@5c
    .line 1842
    const/4 v11, 0x0

    #@5d
    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    #@5f
    .line 1844
    :try_start_0
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@61
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@63
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@66
    move-result-object v11

    #@67
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v11

    #@6b
    const v12, 0x1040034

    #@6e
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@71
    move-result-object v11

    #@72
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    #@75
    move-result v11

    #@76
    if-nez v11, :cond_8

    #@78
    .line 1846
    new-instance v10, Ljava/util/ArrayList;

    #@7a
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@7d
    .line 1847
    .local v10, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@7f
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@81
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@84
    move-result-object v12

    #@85
    monitor-enter v12
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    .line 1848
    :try_start_1
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@88
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@8a
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    #@8d
    move-result-object v11

    #@8e
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@91
    move-result-object v4

    #@92
    .line 1849
    .local v4, "ifaces":Ljava/util/Set;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v3

    #@96
    .local v3, "iface$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v11

    #@9a
    if-eqz v11, :cond_6

    #@9c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v2

    #@a0
    .line 1850
    .local v2, "iface":Ljava/lang/Object;
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@a2
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@a4
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    #@a7
    move-result-object v11

    #@a8
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    move-result-object v5

    #@ac
    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@ae
    .line 1851
    .local v5, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v5, :cond_2

    #@b0
    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@b3
    move-result v11

    #@b4
    if-eqz v11, :cond_2

    #@b6
    .line 1852
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@b8
    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@ba
    move-object v0, v2

    #@bb
    check-cast v0, Ljava/lang/String;

    #@bd
    move-object v11, v0

    #@be
    invoke-static {v13, v11}, Lcom/android/server/connectivity/Tethering;->-wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    #@c1
    move-result v11

    #@c2
    if-eqz v11, :cond_4

    #@c4
    .line 1853
    new-instance v11, Ljava/lang/Integer;

    #@c6
    .line 1854
    const/4 v13, 0x1

    #@c7
    .line 1853
    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    #@ca
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cd
    goto :goto_0

    #@ce
    .line 1847
    .end local v2    # "iface":Ljava/lang/Object;
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v11

    #@cf
    :try_start_2
    monitor-exit v12

    #@d0
    throw v11
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@d1
    .line 1878
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    #@d2
    .line 1879
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v11, "Tethering"

    #@d5
    const-string/jumbo v12, "no prov-check needed for new SIM"

    #@d8
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 1825
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_1
    return-void

    #@dc
    .line 1855
    .restart local v2    # "iface":Ljava/lang/Object;
    .restart local v3    # "iface$iterator":Ljava/util/Iterator;
    .restart local v4    # "ifaces":Ljava/util/Set;
    .restart local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .restart local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@de
    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e0
    move-object v0, v2

    #@e1
    check-cast v0, Ljava/lang/String;

    #@e3
    move-object v11, v0

    #@e4
    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@e7
    move-result v11

    #@e8
    if-eqz v11, :cond_5

    #@ea
    .line 1856
    new-instance v11, Ljava/lang/Integer;

    #@ec
    .line 1857
    const/4 v13, 0x0

    #@ed
    .line 1856
    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    #@f0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f3
    goto :goto_0

    #@f4
    .line 1858
    :cond_5
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@f6
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@f8
    check-cast v2, Ljava/lang/String;

    #@fa
    .end local v2    # "iface":Ljava/lang/Object;
    invoke-virtual {v11, v2}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    #@fd
    move-result v11

    #@fe
    if-eqz v11, :cond_2

    #@100
    .line 1859
    new-instance v11, Ljava/lang/Integer;

    #@102
    .line 1860
    const/4 v13, 0x2

    #@103
    .line 1859
    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    #@106
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@109
    goto :goto_0

    #@10a
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_6
    :try_start_4
    monitor-exit v12

    #@10b
    .line 1865
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10e
    move-result-object v9

    #@10f
    .local v9, "tetherType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@112
    move-result v11

    #@113
    if-eqz v11, :cond_7

    #@115
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@118
    move-result-object v11

    #@119
    check-cast v11, Ljava/lang/Integer;

    #@11b
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@11e
    move-result v8

    #@11f
    .line 1866
    .local v8, "tetherType":I
    new-instance v6, Landroid/content/Intent;

    #@121
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@124
    .line 1868
    .local v6, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v11, "extraAddTetherType"

    #@127
    .line 1867
    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12a
    .line 1870
    const-string/jumbo v11, "extraRunProvision"

    #@12d
    const/4 v12, 0x1

    #@12e
    .line 1869
    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@131
    .line 1871
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Landroid/content/ComponentName;

    #@134
    move-result-object v11

    #@135
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@138
    .line 1872
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@13a
    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@13c
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@13f
    move-result-object v11

    #@140
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@142
    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@145
    goto :goto_2

    #@146
    .line 1874
    .end local v6    # "startProvIntent":Landroid/content/Intent;
    .end local v8    # "tetherType":I
    :cond_7
    const-string/jumbo v11, "Tethering"

    #@149
    const-string/jumbo v12, "re-evaluate provisioning"

    #@14c
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    goto :goto_1

    #@150
    .line 1876
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v9    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v11, "Tethering"

    #@153
    const-string/jumbo v12, "no prov-check needed for new SIM"

    #@156
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    #@159
    goto :goto_1
.end method

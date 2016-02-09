.class Lcom/android/server/net/NetworkPolicyManagerService$12;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 724
    const-string/jumbo v4, "networkInfo"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v17

    #@9
    check-cast v17, Landroid/net/NetworkInfo;

    #@b
    .line 725
    .local v17, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    return-void

    #@12
    .line 727
    :cond_0
    const-string/jumbo v4, "wifiInfo"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1a
    move-result-object v16

    #@1b
    check-cast v16, Landroid/net/wifi/WifiInfo;

    #@1d
    .line 728
    .local v16, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    #@20
    move-result v14

    #@21
    .line 730
    .local v14, "meteredHint":Z
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@28
    move-result-object v3

    #@29
    .line 731
    .local v3, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    #@2b
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2d
    iget-object v0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2f
    move-object/from16 v18, v0

    #@31
    monitor-enter v18

    #@32
    .line 732
    :try_start_0
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@36
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/net/NetworkPolicy;

    #@3e
    .line 733
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_2

    #@40
    if-eqz v14, :cond_2

    #@42
    .line 736
    new-instance v2, Landroid/net/NetworkPolicy;

    #@44
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    const-string/jumbo v5, "UTC"

    #@47
    const/4 v4, -0x1

    #@48
    .line 737
    const-wide/16 v6, -0x1

    #@4a
    const-wide/16 v8, -0x1

    #@4c
    const-wide/16 v10, -0x1

    #@4e
    const-wide/16 v12, -0x1

    #@50
    .line 738
    const/4 v15, 0x1

    #@51
    .line 736
    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@54
    .line 739
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@56
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@58
    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    :cond_1
    :goto_0
    monitor-exit v18

    #@5c
    .line 719
    return-void

    #@5d
    .line 741
    :cond_2
    if-eqz v2, :cond_1

    #@5f
    :try_start_1
    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    #@61
    if-eqz v4, :cond_1

    #@63
    .line 744
    iput-boolean v14, v2, Landroid/net/NetworkPolicy;->metered:Z

    #@65
    .line 748
    move-object/from16 v0, p0

    #@67
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@69
    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .line 731
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    #@6e
    monitor-exit v18

    #@6f
    throw v4
.end method

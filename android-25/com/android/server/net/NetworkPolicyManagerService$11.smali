.class Lcom/android/server/net/NetworkPolicyManagerService$11;
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
    .line 881
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 888
    const-string/jumbo v5, "networkInfo"

    #@3
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/net/NetworkInfo;

    #@9
    .line 889
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    return-void

    #@10
    .line 891
    :cond_0
    const-string/jumbo v5, "wifiInfo"

    #@13
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/net/wifi/WifiInfo;

    #@19
    .line 892
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    #@1c
    move-result v1

    #@1d
    .line 894
    .local v1, "meteredHint":Z
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@24
    move-result-object v4

    #@25
    .line 895
    .local v4, "template":Landroid/net/NetworkTemplate;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@27
    iget-object v6, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@29
    monitor-enter v6

    #@2a
    .line 896
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2c
    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Landroid/net/NetworkPolicy;

    #@34
    .line 897
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-nez v3, :cond_2

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 900
    invoke-static {v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;

    #@3b
    move-result-object v3

    #@3c
    .line 901
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@3e
    invoke-virtual {v5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    :goto_0
    monitor-exit v6

    #@42
    .line 883
    return-void

    #@43
    .line 903
    :cond_2
    if-eqz v3, :cond_1

    #@45
    :try_start_1
    iget-boolean v5, v3, Landroid/net/NetworkPolicy;->inferred:Z

    #@47
    if-eqz v5, :cond_1

    #@49
    .line 906
    iput-boolean v1, v3, Landroid/net/NetworkPolicy;->metered:Z

    #@4b
    .line 910
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@4d
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 895
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v5

    #@52
    monitor-exit v6

    #@53
    throw v5
.end method

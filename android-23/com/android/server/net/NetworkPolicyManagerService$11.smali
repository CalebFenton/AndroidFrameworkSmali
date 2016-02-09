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
    .line 690
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 696
    const-string/jumbo v3, "changeReason"

    #@3
    const/4 v4, 0x0

    #@4
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    .line 697
    .local v1, "reason":I
    const/4 v3, 0x1

    #@9
    if-ne v1, v3, :cond_1

    #@b
    .line 699
    const-string/jumbo v3, "wifiConfiguration"

    #@e
    .line 698
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@14
    .line 700
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 701
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1a
    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@1d
    move-result-object v2

    #@1e
    .line 702
    .local v2, "template":Landroid/net/NetworkTemplate;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@20
    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@22
    monitor-enter v4

    #@23
    .line 703
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@25
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 704
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2f
    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 705
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@36
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :cond_0
    monitor-exit v4

    #@3a
    .line 692
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    return-void

    #@3b
    .line 702
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit v4

    #@3d
    throw v3
.end method

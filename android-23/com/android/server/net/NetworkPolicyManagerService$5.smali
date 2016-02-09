.class Lcom/android/server/net/NetworkPolicyManagerService$5;
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
    .line 577
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 583
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.UID"

    #@8
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    .line 584
    .local v1, "uid":I
    if-ne v1, v3, :cond_0

    #@e
    return-void

    #@f
    .line 586
    :cond_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 590
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1a
    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@1c
    monitor-enter v3

    #@1d
    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1f
    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 579
    :cond_1
    return-void

    #@24
    .line 590
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

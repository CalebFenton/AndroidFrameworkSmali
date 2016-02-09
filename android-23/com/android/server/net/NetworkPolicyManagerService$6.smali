.class Lcom/android/server/net/NetworkPolicyManagerService$6;
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
    .line 597
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 602
    const-string/jumbo v1, "android.intent.extra.UID"

    #@4
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 603
    .local v0, "uid":I
    if-ne v0, v2, :cond_0

    #@a
    return-void

    #@b
    .line 607
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@d
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@f
    monitor-enter v2

    #@10
    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@12
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    #@17
    .line 609
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@1c
    .line 610
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$6;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 599
    return-void

    #@23
    .line 607
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

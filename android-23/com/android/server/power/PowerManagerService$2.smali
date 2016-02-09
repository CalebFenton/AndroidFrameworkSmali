.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$lowPowerModeEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "val$lowPowerModeEnabled"    # Z

    #@0
    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$lowPowerModeEnabled:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    #@2
    .line 748
    new-instance v3, Landroid/content/Intent;

    #@4
    const-string/jumbo v4, "android.os.action.POWER_SAVE_MODE_CHANGING"

    #@7
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 749
    const-string/jumbo v4, "mode"

    #@d
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@f
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Z

    #@12
    move-result v5

    #@13
    .line 748
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1a
    move-result-object v1

    #@1b
    .line 751
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1d
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@24
    .line 753
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@26
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    monitor-enter v4

    #@2b
    .line 754
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@2d
    .line 755
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2f
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    #@32
    move-result-object v3

    #@33
    .line 754
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    monitor-exit v4

    #@37
    .line 757
    const/4 v0, 0x0

    #@38
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    if-ge v0, v3, :cond_0

    #@3e
    .line 758
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/os/PowerManagerInternal$LowPowerModeListener;

    #@44
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$2;->val$lowPowerModeEnabled:Z

    #@46
    invoke-interface {v3, v4}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Z)V

    #@49
    .line 757
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 753
    .end local v0    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit v4

    #@4e
    throw v3

    #@4f
    .line 760
    .restart local v0    # "i":I
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PowerManagerInternal$LowPowerModeListener;>;"
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@51
    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@54
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@57
    .line 761
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5a
    .line 762
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #@5c
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@63
    .line 747
    return-void
.end method

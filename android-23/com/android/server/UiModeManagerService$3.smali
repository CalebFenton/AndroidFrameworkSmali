.class Lcom/android/server/UiModeManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

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
    const/4 v0, 0x0

    #@1
    .line 141
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    #@3
    const-string/jumbo v2, "plugged"

    #@6
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->-set0(Lcom/android/server/UiModeManagerService;Z)Z

    #@10
    .line 142
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    #@12
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@14
    monitor-enter v1

    #@15
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    #@17
    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 144
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_1
    monitor-exit v1

    #@23
    .line 140
    return-void

    #@24
    .line 142
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

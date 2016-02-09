.class Lcom/android/server/UiModeManagerService$1;
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
    .line 110
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

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
    const/4 v4, 0x0

    #@1
    .line 113
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    #@4
    move-result v2

    #@5
    const/4 v3, -0x1

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 118
    return-void

    #@9
    .line 121
    :cond_0
    const-string/jumbo v2, "enableFlags"

    #@c
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    .line 122
    .local v1, "enableFlags":I
    const-string/jumbo v2, "disableFlags"

    #@13
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 123
    .local v0, "disableFlags":I
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #@19
    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    #@1e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v2, v4, v1, v0}, Lcom/android/server/UiModeManagerService;->-wrap0(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v3

    #@26
    .line 112
    return-void

    #@27
    .line 123
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

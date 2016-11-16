.class Lcom/android/server/pm/UserManagerService$LocalService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$LocalService;->removeAllUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$LocalService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$LocalService;

    #@0
    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

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
    .line 3412
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@3
    const/16 v2, -0x2710

    #@5
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 3413
    .local v0, "userId":I
    if-eqz v0, :cond_0

    #@b
    .line 3414
    return-void

    #@c
    .line 3416
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    #@e
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@10
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@17
    .line 3417
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService$1;->this$1:Lcom/android/server/pm/UserManagerService$LocalService;

    #@19
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    #@1b
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-wrap4(Lcom/android/server/pm/UserManagerService;)V

    #@1e
    .line 3410
    return-void
.end method

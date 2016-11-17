.class Lcom/android/server/ConnectivityService$3;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    .line 3753
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

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
    const/16 v3, -0x2710

    #@2
    .line 3756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 3757
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v1

    #@d
    .line 3758
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    #@f
    return-void

    #@10
    .line 3760
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 3761
    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    #@1b
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;I)V

    #@1e
    .line 3755
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 3762
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 3763
    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    #@2a
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;I)V

    #@2d
    goto :goto_0

    #@2e
    .line 3764
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 3765
    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    #@39
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;I)V

    #@3c
    goto :goto_0

    #@3d
    .line 3766
    :cond_4
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_5

    #@46
    .line 3767
    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    #@48
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;I)V

    #@4b
    goto :goto_0

    #@4c
    .line 3768
    :cond_5
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_1

    #@55
    .line 3769
    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    #@57
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;I)V

    #@5a
    goto :goto_0
.end method

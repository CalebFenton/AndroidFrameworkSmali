.class Lcom/android/server/policy/GlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

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
    const/4 v3, 0x0

    #@1
    .line 1028
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1029
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1030
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    .line 1029
    if-eqz v2, :cond_2

    #@17
    .line 1031
    :cond_0
    const-string/jumbo v2, "reason"

    #@1a
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 1032
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    #@21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_1

    #@27
    .line 1033
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    #@29
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@30
    .line 1027
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    #@31
    .line 1035
    :cond_2
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 1038
    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    #@3d
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_1

    #@43
    .line 1039
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    #@45
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Z

    #@48
    move-result v2

    #@49
    .line 1038
    if-eqz v2, :cond_1

    #@4b
    .line 1040
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4d
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set2(Lcom/android/server/policy/GlobalActions;Z)Z

    #@50
    .line 1041
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    #@52
    const/4 v3, 0x1

    #@53
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    #@56
    goto :goto_0
.end method

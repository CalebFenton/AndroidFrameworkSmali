.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

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
    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 500
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 501
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f
    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    #@12
    .line 503
    return-void

    #@13
    .line 504
    :cond_0
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    #@16
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 505
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    .line 504
    if-eqz v4, :cond_2

    #@25
    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@27
    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    #@2a
    .line 507
    return-void

    #@2b
    .line 508
    :cond_2
    const-string/jumbo v4, "android.os.action.SETTING_RESTORED"

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_4

    #@34
    .line 509
    const-string/jumbo v4, "setting_name"

    #@37
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 510
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "enabled_input_methods"

    #@3e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 512
    const-string/jumbo v4, "previous_value"

    #@47
    .line 511
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 514
    .local v3, "prevValue":Ljava/lang/String;
    const-string/jumbo v4, "new_value"

    #@4e
    .line 513
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 515
    .local v2, "newValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #@54
    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    #@56
    invoke-static {v4, v3, v2}, Lcom/android/server/InputMethodManagerService;->restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@59
    .line 498
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/String;
    .end local v3    # "prevValue":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    #@5a
    .line 518
    :cond_4
    const-string/jumbo v4, "InputMethodManagerService"

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "Unexpected intent "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    goto :goto_0
.end method

.class Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

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
    const/4 v5, 0x0

    #@1
    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 359
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 360
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@10
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@13
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v4

    #@17
    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap24(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    #@1a
    .line 357
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 361
    :cond_1
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 362
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@26
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@29
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2c
    move-result v4

    #@2d
    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap22(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    #@30
    goto :goto_0

    #@31
    .line 363
    :cond_2
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 365
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3c
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3f
    move-result-object v1

    #@40
    .line 366
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@43
    move-result-object v3

    #@44
    if-nez v3, :cond_0

    #@46
    .line 367
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@48
    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_0

    #@4e
    .line 368
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@50
    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@53
    goto :goto_0

    #@54
    .line 371
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    const-string/jumbo v3, "android.os.action.SETTING_RESTORED"

    #@57
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_0

    #@5d
    .line 372
    const-string/jumbo v3, "setting_name"

    #@60
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    .line 373
    .local v2, "which":Ljava/lang/String;
    const-string/jumbo v3, "enabled_accessibility_services"

    #@67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_0

    #@6d
    .line 374
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@6f
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    monitor-enter v4

    #@74
    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@76
    .line 376
    const-string/jumbo v5, "previous_value"

    #@79
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 377
    const-string/jumbo v6, "new_value"

    #@80
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    .line 375
    invoke-virtual {v3, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@87
    monitor-exit v4

    #@88
    goto :goto_0

    #@89
    .line 374
    :catchall_0
    move-exception v3

    #@8a
    monitor-exit v4

    #@8b
    throw v3
.end method

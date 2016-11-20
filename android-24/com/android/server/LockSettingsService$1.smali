.class Lcom/android/server/LockSettingsService$1;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

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
    const/4 v6, 0x0

    #@1
    .line 423
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_3

    #@e
    .line 425
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@11
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 426
    .local v3, "userHandle":I
    if-lez v3, :cond_0

    #@17
    .line 427
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@19
    const/4 v5, 0x1

    #@1a
    invoke-static {v4, v3, v5}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;IZ)V

    #@1d
    .line 429
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@20
    move-result-object v0

    #@21
    .line 430
    .local v0, "ks":Landroid/security/KeyStore;
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@23
    invoke-static {v4}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@2a
    move-result-object v2

    #@2b
    .line 431
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    #@2d
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    #@2f
    .line 432
    .local v1, "parentHandle":I
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    #@32
    .line 422
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":I
    :cond_1
    :goto_1
    return-void

    #@33
    .line 431
    .restart local v0    # "ks":Landroid/security/KeyStore;
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userHandle":I
    :cond_2
    const/4 v1, -0x1

    #@34
    goto :goto_0

    #@35
    .line 433
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":I
    :cond_3
    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    #@38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_4

    #@42
    .line 434
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@45
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@48
    move-result v3

    #@49
    .line 435
    .restart local v3    # "userHandle":I
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@4b
    invoke-static {v4}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, v3}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    #@52
    goto :goto_1

    #@53
    .line 436
    .end local v3    # "userHandle":I
    :cond_4
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_1

    #@60
    .line 437
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@63
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@66
    move-result v3

    #@67
    .line 438
    .restart local v3    # "userHandle":I
    if-lez v3, :cond_1

    #@69
    .line 439
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@6b
    invoke-static {v4, v3, v6}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;IZ)V

    #@6e
    goto :goto_1
.end method

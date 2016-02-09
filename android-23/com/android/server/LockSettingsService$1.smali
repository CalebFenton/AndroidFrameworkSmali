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
    .line 111
    iput-object p1, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 114
    const-string/jumbo v5, "android.intent.action.USER_ADDED"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_2

    #@e
    .line 116
    const-string/jumbo v5, "android.intent.extra.user_handle"

    #@11
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v4

    #@15
    .line 117
    .local v4, "userHandle":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@18
    move-result-object v0

    #@19
    .line 118
    .local v0, "ks":Landroid/security/KeyStore;
    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@1b
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    #@1e
    move-result-object v5

    #@1f
    const-string/jumbo v6, "user"

    #@22
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/os/UserManager;

    #@28
    .line 119
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@2b
    move-result-object v2

    #@2c
    .line 120
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    #@2e
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    #@30
    .line 121
    .local v1, "parentHandle":I
    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    #@33
    .line 113
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_0
    :goto_1
    return-void

    #@34
    .line 120
    .restart local v0    # "ks":Landroid/security/KeyStore;
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "um":Landroid/os/UserManager;
    .restart local v4    # "userHandle":I
    :cond_1
    const/4 v1, -0x1

    #@35
    .restart local v1    # "parentHandle":I
    goto :goto_0

    #@36
    .line 122
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_2
    const-string/jumbo v5, "android.intent.action.USER_STARTING"

    #@39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_3

    #@43
    .line 123
    const-string/jumbo v5, "android.intent.extra.user_handle"

    #@46
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@49
    move-result v4

    #@4a
    .line 124
    .restart local v4    # "userHandle":I
    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@4c
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5, v4}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    #@53
    goto :goto_1

    #@54
    .line 125
    .end local v4    # "userHandle":I
    :cond_3
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    #@57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_0

    #@61
    .line 126
    const-string/jumbo v5, "android.intent.extra.user_handle"

    #@64
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@67
    move-result v4

    #@68
    .line 127
    .restart local v4    # "userHandle":I
    if-lez v4, :cond_0

    #@6a
    .line 128
    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    #@6c
    invoke-static {v5, v4}, Lcom/android/server/LockSettingsService;->-wrap0(Lcom/android/server/LockSettingsService;I)V

    #@6f
    goto :goto_1
.end method

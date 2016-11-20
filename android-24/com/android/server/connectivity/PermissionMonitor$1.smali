.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PermissionMonitor;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

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
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.extra.user_handle"

    #@7
    const/16 v6, -0x2710

    #@9
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v4

    #@d
    .line 83
    .local v4, "user":I
    const-string/jumbo v5, "android.intent.extra.UID"

    #@10
    const/4 v6, -0x1

    #@11
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 84
    .local v3, "appUid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@18
    move-result-object v1

    #@19
    .line 85
    .local v1, "appData":Landroid/net/Uri;
    if-eqz v1, :cond_1

    #@1b
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 87
    :goto_0
    const-string/jumbo v5, "android.intent.action.USER_ADDED"

    #@22
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 88
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    #@2a
    invoke-static {v5, v4}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap2(Lcom/android/server/connectivity/PermissionMonitor;I)V

    #@2d
    .line 80
    :cond_0
    :goto_1
    return-void

    #@2e
    .line 85
    :cond_1
    const/4 v2, 0x0

    #@2f
    .local v2, "appName":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 89
    .end local v2    # "appName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    #@33
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_3

    #@39
    .line 90
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    #@3b
    invoke-static {v5, v4}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap3(Lcom/android/server/connectivity/PermissionMonitor;I)V

    #@3e
    goto :goto_1

    #@3f
    .line 91
    :cond_3
    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    #@42
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_4

    #@48
    .line 92
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    #@4a
    invoke-static {v5, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap0(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V

    #@4d
    goto :goto_1

    #@4e
    .line 93
    :cond_4
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    #@51
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_0

    #@57
    .line 94
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    #@59
    invoke-static {v5, v3}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap1(Lcom/android/server/connectivity/PermissionMonitor;I)V

    #@5c
    goto :goto_1
.end method

.class Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/WebViewUpdateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

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
    .line 66
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@3
    const/16 v2, -0x2710

    #@5
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 67
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_4

    #@23
    return-void

    #@24
    .line 67
    :cond_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 82
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 83
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@35
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@38
    move-result-object v1

    #@39
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-wrap0(Landroid/content/Intent;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 84
    const/4 v3, 0x0

    #@3e
    .line 83
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    #@41
    .line 65
    :cond_1
    :goto_0
    return-void

    #@42
    .line 67
    :cond_2
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_3

    #@4b
    .line 88
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@4d
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@50
    move-result-object v2

    #@51
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-wrap0(Landroid/content/Intent;)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@5c
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_5

    #@62
    .line 90
    const/4 v1, 0x2

    #@63
    .line 88
    :goto_1
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    #@66
    goto :goto_0

    #@67
    .line 67
    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_1

    #@70
    .line 93
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@72
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleNewUser(I)V

    #@79
    goto :goto_0

    #@7a
    .line 76
    :cond_4
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    #@7c
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    #@7f
    move-result-object v1

    #@80
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-wrap0(Landroid/content/Intent;)Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    .line 77
    const/4 v3, 0x3

    #@85
    .line 76
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    #@88
    goto :goto_0

    #@89
    .line 90
    :cond_5
    const/4 v1, 0x1

    #@8a
    goto :goto_1
.end method

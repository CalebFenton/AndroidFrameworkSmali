.class Lcom/android/server/accounts/AccountManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    #@0
    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 314
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@f
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService;->-wrap9(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V

    #@12
    .line 311
    :cond_0
    :goto_0
    return-void

    #@13
    .line 315
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 316
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@1e
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService;->-wrap10(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V

    #@21
    goto :goto_0
.end method

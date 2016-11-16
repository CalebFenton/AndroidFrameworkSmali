.class Lcom/android/server/accounts/AccountManagerService$18;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "val$account"    # Landroid/accounts/Account;
    .param p3, "val$uid"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;
    .param p5, "val$callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 3548
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    #@4
    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    #@6
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    #@8
    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    #@a
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    #@d
    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .locals 6
    .param p1, "accessGranted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3565
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    #@6
    .line 3566
    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@9
    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    #@b
    .line 3565
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v2

    #@13
    .line 3566
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    #@15
    .line 3567
    iget v4, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    #@17
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    #@1a
    move-result-object v4

    #@1b
    .line 3565
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    #@1e
    .line 3568
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 3569
    new-instance v0, Landroid/os/Bundle;

    #@24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@27
    .line 3570
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    #@2a
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2d
    .line 3571
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    #@2f
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    #@32
    .line 3564
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3561
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    #@4
    .line 3560
    return-void
.end method

.method public onRequestContinued()V
    .locals 0

    #@0
    .prologue
    .line 3555
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3551
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    #@4
    .line 3550
    return-void
.end method

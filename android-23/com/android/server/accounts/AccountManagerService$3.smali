.class Lcom/android/server/accounts/AccountManagerService$3;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field final synthetic val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Z
    .param p8, "$anonymous5"    # Ljava/lang/String;
    .param p9, "$anonymous6"    # Z
    .param p10, "val$account"    # Landroid/accounts/Account;
    .param p11, "val$response"    # Landroid/accounts/IAccountManagerResponse;
    .param p12, "val$toAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 768
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$account:Landroid/accounts/Account;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$response:Landroid/accounts/IAccountManagerResponse;

    #@a
    move-object/from16 v0, p12

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p3

    #@11
    move-object v4, p4

    #@12
    move-object v5, p5

    #@13
    move/from16 v6, p6

    #@15
    move/from16 v7, p7

    #@17
    move-object/from16 v8, p8

    #@19
    move/from16 v9, p9

    #@1b
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@1e
    .line 770
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 784
    if-eqz p1, :cond_0

    #@2
    .line 785
    const-string/jumbo v0, "booleanResult"

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    .line 784
    if-eqz v0, :cond_0

    #@c
    .line 787
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@e
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$response:Landroid/accounts/IAccountManagerResponse;

    #@10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$account:Landroid/accounts/Account;

    #@12
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@14
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@17
    .line 783
    :goto_0
    return-void

    #@18
    .line 789
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@1b
    goto :goto_0
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$account:Landroid/accounts/Account;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@7
    .line 778
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", getAccountCredentialsForClone"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 774
    const-string/jumbo v1, ", "

    #@17
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 774
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$3;->val$account:Landroid/accounts/Account;

    #@1d
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1f
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

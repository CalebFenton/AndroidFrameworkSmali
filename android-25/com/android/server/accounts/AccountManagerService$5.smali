.class Lcom/android/server/accounts/AccountManagerService$5;
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

.field final synthetic val$userFrom:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
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
    .param p13, "val$userFrom"    # I

    #@0
    .prologue
    .line 1148
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$5;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$response:Landroid/accounts/IAccountManagerResponse;

    #@a
    move-object/from16 v0, p12

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@e
    move/from16 v0, p13

    #@10
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$userFrom:I

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move-object v3, p3

    #@15
    move-object v4, p4

    #@16
    move-object v5, p5

    #@17
    move/from16 v6, p6

    #@19
    move/from16 v7, p7

    #@1b
    move-object/from16 v8, p8

    #@1d
    move/from16 v9, p9

    #@1f
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@22
    .line 1150
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1164
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 1165
    if-eqz p1, :cond_0

    #@6
    .line 1166
    const-string/jumbo v0, "booleanResult"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    .line 1165
    if-eqz v0, :cond_0

    #@10
    .line 1168
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@12
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$response:Landroid/accounts/IAccountManagerResponse;

    #@14
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    #@16
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@18
    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$userFrom:I

    #@1a
    move-object v2, p1

    #@1b
    invoke-static/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap13(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@1e
    .line 1163
    :goto_0
    return-void

    #@1f
    .line 1170
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@22
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
    .line 1159
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@7
    .line 1158
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 1153
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
    .line 1154
    const-string/jumbo v1, ", "

    #@17
    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1154
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    #@1d
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1f
    .line 1153
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

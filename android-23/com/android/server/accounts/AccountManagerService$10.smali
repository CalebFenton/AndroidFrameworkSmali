.class Lcom/android/server/accounts/AccountManagerService$10;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$loginOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Z
    .param p8, "$anonymous5"    # Ljava/lang/String;
    .param p9, "$anonymous6"    # Z
    .param p10, "$anonymous7"    # Z
    .param p11, "val$account"    # Landroid/accounts/Account;
    .param p12, "val$authTokenType"    # Ljava/lang/String;
    .param p13, "val$loginOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2343
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$10;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p11

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$account:Landroid/accounts/Account;

    #@6
    move-object/from16 v0, p12

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    #@a
    move-object/from16 v0, p13

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$loginOptions:Landroid/os/Bundle;

    #@e
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move-object v3, p3

    #@11
    move-object v4, p4

    #@12
    move-object/from16 v5, p5

    #@14
    move/from16 v6, p6

    #@16
    move/from16 v7, p7

    #@18
    move-object/from16 v8, p8

    #@1a
    move/from16 v9, p9

    #@1c
    move/from16 v10, p10

    #@1e
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@21
    .line 2345
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$account:Landroid/accounts/Account;

    #@4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    #@6
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$loginOptions:Landroid/os/Bundle;

    #@8
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 2347
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 2352
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$loginOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$loginOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@9
    .line 2353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ", updateCredentials"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 2354
    const-string/jumbo v1, ", "

    #@20
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 2354
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$account:Landroid/accounts/Account;

    #@26
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 2355
    const-string/jumbo v1, ", authTokenType "

    #@2d
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 2355
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    #@33
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 2356
    const-string/jumbo v1, ", loginOptions "

    #@3a
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 2356
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$loginOptions:Landroid/os/Bundle;

    #@40
    .line 2353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method

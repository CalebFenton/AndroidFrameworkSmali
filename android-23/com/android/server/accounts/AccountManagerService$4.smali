.class Lcom/android/server/accounts/AccountManagerService$4;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accountCredentials:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/os/Bundle;)V
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
    .param p11, "val$accountCredentials"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 857
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$accountCredentials:Landroid/os/Bundle;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    move/from16 v6, p6

    #@11
    move/from16 v7, p7

    #@13
    move-object/from16 v8, p8

    #@15
    move/from16 v9, p9

    #@17
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@1a
    .line 859
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 891
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    #@3
    .line 890
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 886
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@3
    .line 882
    return-void
.end method

.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 869
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@3
    invoke-virtual {v3, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@6
    move-result-object v1

    #@7
    .line 870
    .local v1, "owner":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    monitor-enter v3

    #@c
    .line 871
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    #@12
    move-result-object v4

    #@13
    array-length v5, v4

    #@14
    :goto_0
    if-ge v2, v5, :cond_0

    #@16
    aget-object v0, v4, v2

    #@18
    .line 872
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    #@1a
    invoke-virtual {v0, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 873
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$4;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@22
    .line 874
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    #@24
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$accountCredentials:Landroid/os/Bundle;

    #@26
    .line 873
    invoke-interface {v2, p0, v4, v5}, Landroid/accounts/IAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_0
    monitor-exit v3

    #@2a
    .line 867
    return-void

    #@2b
    .line 871
    .restart local v0    # "acc":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 870
    .end local v0    # "acc":Landroid/accounts/Account;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 862
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
    .line 863
    const-string/jumbo v1, ", "

    #@17
    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 863
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    #@1d
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1f
    .line 862
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

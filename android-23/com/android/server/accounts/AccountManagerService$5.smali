.class Lcom/android/server/accounts/AccountManagerService$5;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
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
    .param p10, "val$accountType"    # Ljava/lang/String;
    .param p11, "val$authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1771
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$5;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$accountType:Ljava/lang/String;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$authTokenType:Ljava/lang/String;

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
    .line 1773
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1788
    if-eqz p1, :cond_0

    #@2
    .line 1789
    const-string/jumbo v2, "authTokenLabelKey"

    #@5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1790
    .local v1, "label":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    .line 1791
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "authTokenLabelKey"

    #@11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 1792
    invoke-super {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@17
    .line 1793
    return-void

    #@18
    .line 1795
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "label":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    #@1b
    .line 1787
    return-void
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
    .line 1783
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$5;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$authTokenType:Ljava/lang/String;

    #@4
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    #@7
    .line 1782
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 1776
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
    const-string/jumbo v1, ", getAuthTokenLabel"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1777
    const-string/jumbo v1, ", "

    #@17
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1777
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$accountType:Ljava/lang/String;

    #@1d
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1778
    const-string/jumbo v1, ", authTokenType "

    #@24
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1778
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$authTokenType:Ljava/lang/String;

    #@2a
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

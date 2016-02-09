.class Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
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
    .param p11, "val$authTokenType"    # Ljava/lang/String;
    .param p12, "val$requiredFeatures"    # [Ljava/lang/String;
    .param p13, "val$options"    # Landroid/os/Bundle;
    .param p14, "val$accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2242
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p11

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@6
    move-object/from16 v0, p12

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$requiredFeatures:[Ljava/lang/String;

    #@a
    move-object/from16 v0, p13

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$options:Landroid/os/Bundle;

    #@e
    move-object/from16 v0, p14

    #@10
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accountType:Ljava/lang/String;

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move-object v3, p3

    #@15
    move-object v4, p4

    #@16
    move-object/from16 v5, p5

    #@18
    move/from16 v6, p6

    #@1a
    move/from16 v7, p7

    #@1c
    move-object/from16 v8, p8

    #@1e
    move/from16 v9, p9

    #@20
    move/from16 v10, p10

    #@22
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@25
    .line 2244
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccountType:Ljava/lang/String;

    #@4
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    #@6
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$requiredFeatures:[Ljava/lang/String;

    #@8
    .line 2248
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$options:Landroid/os/Bundle;

    #@a
    move-object v1, p0

    #@b
    .line 2247
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 2246
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, ", addAccount"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 2254
    const-string/jumbo v2, ", accountType "

    #@18
    .line 2253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 2254
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accountType:Ljava/lang/String;

    #@1e
    .line 2253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 2255
    const-string/jumbo v2, ", requiredFeatures "

    #@25
    .line 2253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 2256
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$requiredFeatures:[Ljava/lang/String;

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 2257
    const-string/jumbo v0, ","

    #@30
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$requiredFeatures:[Ljava/lang/String;

    #@32
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 2253
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

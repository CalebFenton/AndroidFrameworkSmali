.class Lcom/android/server/accounts/AccountManagerService$11;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
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
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Ljava/lang/String;
    .param p8, "$anonymous5"    # Z
    .param p9, "$anonymous6"    # Z
    .param p10, "$anonymous7"    # Z
    .param p11, "val$authTokenType"    # Ljava/lang/String;
    .param p12, "val$requiredFeatures"    # [Ljava/lang/String;
    .param p13, "val$options"    # Landroid/os/Bundle;
    .param p14, "val$accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2862
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$11;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p11

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    #@6
    move-object/from16 v0, p12

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    #@a
    move-object/from16 v0, p13

    #@c
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    #@e
    move-object/from16 v0, p14

    #@10
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

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
    move-object/from16 v7, p7

    #@1c
    move/from16 v8, p8

    #@1e
    move/from16 v9, p9

    #@20
    move/from16 v10, p10

    #@22
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    #@25
    .line 2870
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
    .line 2873
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAccountType:Ljava/lang/String;

    #@4
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    #@6
    .line 2874
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    #@8
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    #@a
    move-object v1, p0

    #@b
    .line 2873
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 2872
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2879
    const-string/jumbo v2, ","

    #@4
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    #@6
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2880
    .local v0, "requiredFeaturesStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->toDebugString(J)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ", startAddAccountSession"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, ", accountType "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 2881
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

    #@27
    .line 2880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 2881
    const-string/jumbo v3, ", requiredFeatures "

    #@2e
    .line 2880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 2882
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    #@34
    if-eqz v3, :cond_0

    #@36
    .line 2880
    .end local v0    # "requiredFeaturesStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1

    #@3f
    .restart local v0    # "requiredFeaturesStr":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    #@40
    .line 2882
    goto :goto_0
.end method

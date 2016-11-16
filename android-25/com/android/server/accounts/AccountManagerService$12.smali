.class Lcom/android/server/accounts/AccountManagerService$12;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$decryptedBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V
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
    .param p11, "val$decryptedBundle"    # Landroid/os/Bundle;
    .param p12, "val$accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3113
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p11

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$decryptedBundle:Landroid/os/Bundle;

    #@6
    move-object/from16 v0, p12

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$accountType:Ljava/lang/String;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object/from16 v5, p5

    #@10
    move/from16 v6, p6

    #@12
    move/from16 v7, p7

    #@14
    move-object/from16 v8, p8

    #@16
    move/from16 v9, p9

    #@18
    move/from16 v10, p10

    #@1a
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@1d
    .line 3121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$12;->mAccountType:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$decryptedBundle:Landroid/os/Bundle;

    #@6
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V

    #@9
    .line 3123
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 3129
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
    .line 3130
    const-string/jumbo v1, ", finishSession"

    #@10
    .line 3129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 3131
    const-string/jumbo v1, ", accountType "

    #@17
    .line 3129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 3131
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$accountType:Ljava/lang/String;

    #@1d
    .line 3129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

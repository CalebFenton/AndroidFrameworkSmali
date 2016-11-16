.class Lcom/android/server/accounts/AccountManagerService$16;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V
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
    .param p11, "val$statusToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3344
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    move-object/from16 v0, p10

    #@4
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    #@6
    move-object/from16 v0, p11

    #@8
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

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
    .line 3346
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v5, 0x0

    #@2
    .line 3360
    const/4 v2, 0x1

    #@3
    invoke-static {p1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3361
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@9
    move-result-object v1

    #@a
    .line 3362
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-nez v1, :cond_0

    #@c
    .line 3363
    return-void

    #@d
    .line 3366
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 3367
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@11
    .line 3370
    const-string/jumbo v3, "null bundle"

    #@14
    .line 3367
    invoke-static {v2, v1, v6, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@17
    .line 3371
    return-void

    #@18
    .line 3374
    :cond_1
    const-string/jumbo v2, "AccountManagerService"

    #@1b
    const/4 v3, 0x2

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 3375
    const-string/jumbo v2, "AccountManagerService"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, " calling onResult() on response "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 3380
    :cond_2
    const-string/jumbo v2, "errorCode"

    #@4b
    const/4 v3, -0x1

    #@4c
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4f
    move-result v2

    #@50
    if-lez v2, :cond_3

    #@52
    .line 3381
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@54
    .line 3382
    const-string/jumbo v3, "errorCode"

    #@57
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5a
    move-result v3

    #@5b
    .line 3383
    const-string/jumbo v4, "errorMessage"

    #@5e
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 3381
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@65
    .line 3384
    return-void

    #@66
    .line 3386
    :cond_3
    const-string/jumbo v2, "booleanResult"

    #@69
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6c
    move-result v2

    #@6d
    if-nez v2, :cond_4

    #@6f
    .line 3387
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@71
    .line 3390
    const-string/jumbo v3, "no result in response"

    #@74
    .line 3387
    invoke-static {v2, v1, v6, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@77
    .line 3391
    return-void

    #@78
    .line 3393
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    #@7a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@7d
    .line 3394
    .local v0, "newResult":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    #@80
    .line 3395
    const-string/jumbo v3, "booleanResult"

    #@83
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@86
    move-result v3

    #@87
    .line 3394
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@8a
    .line 3396
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@8c
    invoke-static {v2, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->-wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    #@8f
    .line 3359
    return-void
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3355
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    #@4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    #@6
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    #@9
    .line 3354
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    .line 3349
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
    const-string/jumbo v1, ", isCredentialsUpdateSuggested"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 3350
    const-string/jumbo v1, ", "

    #@17
    .line 3349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 3350
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    #@1d
    .line 3349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

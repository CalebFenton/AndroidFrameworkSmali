.class Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "features"    # [Ljava/lang/String;
    .param p6, "callingUid"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 3303
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    .line 3306
    const/4 v6, 0x1

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move v8, v5

    #@b
    .line 3305
    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    #@e
    .line 3298
    iput-object v7, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    #@10
    .line 3299
    iput-object v7, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    #@12
    .line 3300
    iput v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@14
    .line 3308
    iput p6, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    #@16
    .line 3309
    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    #@18
    .line 3304
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 5

    #@0
    .prologue
    .line 3326
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@2
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    #@4
    array-length v3, v3

    #@5
    if-lt v2, v3, :cond_0

    #@7
    .line 3327
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    #@a
    .line 3328
    return-void

    #@b
    .line 3331
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@d
    .line 3332
    .local v0, "accountAuthenticator":Landroid/accounts/IAccountAuthenticator;
    if-nez v0, :cond_2

    #@f
    .line 3337
    const-string/jumbo v2, "AccountManagerService"

    #@12
    const/4 v3, 0x2

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 3338
    const-string/jumbo v2, "AccountManagerService"

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 3339
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 3338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 3341
    :cond_1
    return-void

    #@38
    .line 3344
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    #@3a
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@3c
    aget-object v2, v2, v3

    #@3e
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    #@40
    invoke-interface {v0, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 3325
    :goto_0
    return-void

    #@44
    .line 3345
    :catch_0
    move-exception v1

    #@45
    .line 3346
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "remote exception"

    #@48
    const/4 v3, 0x1

    #@49
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    #@4c
    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3352
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 3353
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    #@a
    .line 3354
    if-nez p1, :cond_0

    #@c
    .line 3355
    const-string/jumbo v0, "null bundle"

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    #@13
    .line 3356
    return-void

    #@14
    .line 3358
    :cond_0
    const-string/jumbo v0, "booleanResult"

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 3359
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    #@20
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    #@22
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@24
    aget-object v1, v1, v2

    #@26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 3361
    :cond_1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@2f
    .line 3362
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    #@32
    .line 3351
    return-void
.end method

.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3314
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@2
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@9
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountType:Ljava/lang/String;

    #@d
    iget v4, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    #@f
    .line 3316
    const/4 v5, 0x0

    #@10
    .line 3315
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 3319
    new-instance v0, Ljava/util/ArrayList;

    #@19
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    #@1b
    array-length v1, v1

    #@1c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1f
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    #@21
    .line 3320
    const/4 v0, 0x0

    #@22
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    #@24
    .line 3322
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    #@27
    .line 3313
    return-void

    #@28
    .line 3314
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public sendResult()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    .line 3366
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@4
    move-result-object v3

    #@5
    .line 3367
    .local v3, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v3, :cond_2

    #@7
    .line 3369
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v5

    #@d
    new-array v0, v5, [Landroid/accounts/Account;

    #@f
    .line 3370
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@11
    if-ge v2, v5, :cond_0

    #@13
    .line 3371
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/accounts/Account;

    #@1b
    aput-object v5, v0, v2

    #@1d
    .line 3370
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3373
    :cond_0
    const-string/jumbo v5, "AccountManagerService"

    #@23
    const/4 v6, 0x2

    #@24
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 3374
    const-string/jumbo v5, "AccountManagerService"

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, " calling onResult() on response "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 3377
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    #@52
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@55
    .line 3378
    .local v4, "result":Landroid/os/Bundle;
    const-string/jumbo v5, "accounts"

    #@58
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@5b
    .line 3379
    invoke-interface {v3, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 3365
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "i":I
    .end local v4    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    #@5f
    .line 3380
    :catch_0
    move-exception v1

    #@60
    .line 3382
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "AccountManagerService"

    #@63
    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@66
    move-result v5

    #@67
    if-eqz v5, :cond_2

    #@69
    .line 3383
    const-string/jumbo v5, "AccountManagerService"

    #@6c
    const-string/jumbo v6, "failure while notifying response"

    #@6f
    invoke-static {v5, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    goto :goto_1
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3392
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
    const-string/jumbo v2, ", getAccountsByTypeAndFeatures"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 3393
    const-string/jumbo v2, ", "

    #@18
    .line 3392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 3393
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    #@1e
    if-eqz v2, :cond_0

    #@20
    const-string/jumbo v0, ","

    #@23
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    #@25
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 3392
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

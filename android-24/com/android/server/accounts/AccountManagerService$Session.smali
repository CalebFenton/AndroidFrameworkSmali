.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    #@0
    .prologue
    .line 3810
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move/from16 v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    move/from16 v8, p8

    #@d
    .line 3809
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@10
    .line 3808
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z
    .param p9, "updateLastAuthenticatedTime"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3813
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    .line 3816
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    #@7
    .line 3797
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@9
    .line 3798
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@b
    .line 3799
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@d
    .line 3801
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@f
    .line 3818
    if-nez p4, :cond_0

    #@11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "accountType is null"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 3819
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1c
    .line 3820
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@1e
    .line 3821
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@20
    .line 3822
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@22
    .line 3823
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@24
    .line 3824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@27
    move-result-wide v2

    #@28
    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    #@2a
    .line 3825
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@2c
    .line 3826
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@2e
    .line 3827
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@30
    .line 3829
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 3830
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v2

    #@41
    .line 3832
    if-eqz p3, :cond_1

    #@43
    .line 3834
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@46
    move-result-object v1

    #@47
    const/4 v2, 0x0

    #@48
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 3815
    :cond_1
    :goto_0
    return-void

    #@4c
    .line 3829
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 3835
    :catch_0
    move-exception v0

    #@50
    .line 3836
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@52
    .line 3837
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    #@55
    goto :goto_0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 8
    .param p1, "authenticatorType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    .line 4115
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@5
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get0(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@8
    move-result-object v2

    #@9
    .line 4116
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@c
    move-result-object v3

    #@d
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@f
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@12
    move-result v4

    #@13
    .line 4115
    invoke-interface {v2, v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@16
    move-result-object v0

    #@17
    .line 4117
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    #@19
    .line 4118
    const-string/jumbo v2, "AccountManagerService"

    #@1c
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 4119
    const-string/jumbo v2, "AccountManagerService"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "there is no authenticator for "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 4120
    const-string/jumbo v4, ", bailing out"

    #@38
    .line 4119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 4122
    :cond_0
    return v5

    #@44
    .line 4125
    :cond_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@46
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@48
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@4b
    move-result v3

    #@4c
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap2(Lcom/android/server/accounts/AccountManagerService;I)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_2

    #@52
    .line 4126
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@54
    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@56
    if-eqz v2, :cond_5

    #@58
    .line 4132
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@5a
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5d
    .line 4133
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    #@60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@63
    .line 4134
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@68
    .line 4135
    const-string/jumbo v2, "AccountManagerService"

    #@6b
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_3

    #@71
    .line 4136
    const-string/jumbo v2, "AccountManagerService"

    #@74
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v4, "performing bindService to "

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 4138
    :cond_3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@8f
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@92
    move-result-object v2

    #@93
    .line 4139
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@95
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@98
    move-result v3

    #@99
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@9c
    move-result-object v3

    #@9d
    .line 4138
    invoke-virtual {v2, v1, p0, v7, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a0
    move-result v2

    #@a1
    if-nez v2, :cond_6

    #@a3
    .line 4140
    const-string/jumbo v2, "AccountManagerService"

    #@a6
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_4

    #@ac
    .line 4141
    const-string/jumbo v2, "AccountManagerService"

    #@af
    new-instance v3, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v4, "bindService to "

    #@b7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@bd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    const-string/jumbo v4, " failed"

    #@c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v3

    #@cc
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    .line 4143
    :cond_4
    return v5

    #@d0
    .line 4127
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "AccountManagerService"

    #@d3
    new-instance v3, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v4, "Blocking binding to authenticator "

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    .line 4128
    const-string/jumbo v4, " which isn\'t encryption aware"

    #@e8
    .line 4127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v3

    #@ec
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 4129
    return v5

    #@f4
    .line 4146
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    return v7
.end method

.method private close()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3883
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@3
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 3884
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@a
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_0

    #@18
    monitor-exit v1

    #@19
    .line 3886
    return-void

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 3889
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 3891
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@21
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v0

    #@25
    const/4 v1, 0x0

    #@26
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@29
    .line 3894
    iput-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@2b
    .line 3896
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    #@2e
    .line 3897
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    #@31
    .line 3882
    return-void

    #@32
    .line 3883
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method private unbind()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3929
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3930
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@7
    .line 3931
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@10
    .line 3928
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    #@0
    .prologue
    .line 3919
    const-string/jumbo v0, "AccountManagerService"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3920
    const-string/jumbo v0, "AccountManagerService"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "initiating bind to authenticator type "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 3922
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 3923
    const-string/jumbo v0, "AccountManagerService"

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "bind attempt failed for "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3924
    const-string/jumbo v0, "bind failure"

    #@4f
    const/4 v1, 0x1

    #@50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    #@53
    .line 3918
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 3902
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    .line 3903
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@6
    .line 3901
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    #@0
    .prologue
    .line 3936
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    #@a
    .line 3935
    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)V
    .locals 13
    .param p1, "authUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 3863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3865
    .local v2, "bid":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@6
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@9
    move-result-object v9

    #@a
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v4

    #@e
    .line 3866
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@10
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@13
    move-result v9

    #@14
    const/4 v10, 0x0

    #@15
    invoke-virtual {v4, p2, v10, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@18
    move-result-object v5

    #@19
    .line 3867
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b
    .line 3868
    .local v6, "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget v7, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1f
    .line 3869
    .local v7, "targetUid":I
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_0

    #@25
    .line 3870
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@27
    .line 3871
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@29
    .line 3872
    .local v0, "activityName":Ljava/lang/String;
    const-string/jumbo v8, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    #@2c
    .line 3874
    .local v8, "tmpl":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    #@2e
    .line 3875
    const/4 v10, 0x3

    #@2f
    new-array v10, v10, [Ljava/lang/Object;

    #@31
    const/4 v11, 0x0

    #@32
    aput-object v0, v10, v11

    #@34
    const/4 v11, 0x1

    #@35
    aput-object v1, v10, v11

    #@37
    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@39
    const/4 v12, 0x2

    #@3a
    aput-object v11, v10, v12

    #@3c
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v10

    #@40
    .line 3874
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 3877
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "targetUid":I
    .end local v8    # "tmpl":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@45
    .line 3878
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 3877
    throw v9

    #@49
    .line 3878
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "targetUid":I
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 3862
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3843
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 3845
    return-object v2

    #@6
    .line 3847
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    .line 3848
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@b
    .line 3849
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 4088
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@7
    .line 4089
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@a
    move-result-object v1

    #@b
    .line 4090
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    #@d
    .line 4091
    const-string/jumbo v2, "AccountManagerService"

    #@10
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 4092
    const-string/jumbo v2, "AccountManagerService"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 4093
    const-string/jumbo v4, " calling onError() on response "

    #@2d
    .line 4092
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 4096
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 4087
    :cond_1
    :goto_0
    return-void

    #@40
    .line 4097
    :catch_0
    move-exception v0

    #@41
    .line 4098
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@44
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 4099
    const-string/jumbo v2, "AccountManagerService"

    #@4d
    const-string/jumbo v3, "Session.onError: caught RemoteException while responding"

    #@50
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 4103
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "AccountManagerService"

    #@57
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_1

    #@5d
    .line 4104
    const-string/jumbo v2, "AccountManagerService"

    #@60
    const-string/jumbo v3, "Session.onError: already closed"

    #@63
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    #@0
    .prologue
    .line 4083
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@6
    .line 4082
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3986
    const/4 v14, 0x1

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-static {v0, v14}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3987
    move-object/from16 v0, p0

    #@8
    iget v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@a
    add-int/lit8 v14, v14, 0x1

    #@c
    move-object/from16 v0, p0

    #@e
    iput v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@10
    .line 3988
    const/4 v7, 0x0

    #@11
    .line 3989
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_3

    #@13
    .line 3991
    const-string/jumbo v14, "booleanResult"

    #@16
    const/4 v15, 0x0

    #@17
    .line 3990
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1c
    move-result v8

    #@1d
    .line 3993
    .local v8, "isSuccessfulConfirmCreds":Z
    const-string/jumbo v14, "authAccount"

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@25
    move-result v14

    #@26
    if-eqz v14, :cond_8

    #@28
    .line 3994
    const-string/jumbo v14, "accountType"

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@30
    move-result v9

    #@31
    .line 3998
    :goto_0
    move-object/from16 v0, p0

    #@33
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@35
    if-eqz v14, :cond_a

    #@37
    .line 3999
    if-nez v8, :cond_9

    #@39
    move v12, v9

    #@3a
    .line 4000
    .local v12, "needUpdate":Z
    :goto_1
    if-nez v12, :cond_0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@40
    if-eqz v14, :cond_3

    #@42
    .line 4001
    :cond_0
    move-object/from16 v0, p0

    #@44
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@4e
    move-object/from16 v16, v0

    #@50
    invoke-static/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->-wrap1(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    #@53
    move-result v4

    #@54
    .line 4002
    .local v4, "accountPresent":Z
    if-eqz v12, :cond_1

    #@56
    if-eqz v4, :cond_1

    #@58
    .line 4003
    move-object/from16 v0, p0

    #@5a
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@5c
    new-instance v15, Landroid/accounts/Account;

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@62
    move-object/from16 v16, v0

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@68
    move-object/from16 v17, v0

    #@6a
    invoke-direct/range {v15 .. v17}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->-wrap5(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    #@70
    .line 4005
    :cond_1
    move-object/from16 v0, p0

    #@72
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@74
    if-eqz v14, :cond_3

    #@76
    .line 4006
    const-wide/16 v10, -0x1

    #@78
    .line 4007
    .local v10, "lastAuthenticatedTime":J
    if-eqz v4, :cond_2

    #@7a
    .line 4009
    move-object/from16 v0, p0

    #@7c
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7e
    invoke-static {v14}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@81
    move-result-object v14

    #@82
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@85
    move-result-object v14

    #@86
    .line 4010
    const-string/jumbo v15, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    #@89
    .line 4014
    const/16 v16, 0x2

    #@8b
    move/from16 v0, v16

    #@8d
    new-array v0, v0, [Ljava/lang/String;

    #@8f
    move-object/from16 v16, v0

    #@91
    .line 4015
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@95
    move-object/from16 v17, v0

    #@97
    const/16 v18, 0x0

    #@99
    aput-object v17, v16, v18

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@9f
    move-object/from16 v17, v0

    #@a1
    const/16 v18, 0x1

    #@a3
    aput-object v17, v16, v18

    #@a5
    .line 4008
    invoke-static/range {v14 .. v16}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@a8
    move-result-wide v10

    #@a9
    .line 4018
    :cond_2
    const-string/jumbo v14, "lastAuthenticatedTime"

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b1
    .line 4023
    .end local v4    # "accountPresent":Z
    .end local v8    # "isSuccessfulConfirmCreds":Z
    .end local v10    # "lastAuthenticatedTime":J
    .end local v12    # "needUpdate":Z
    :cond_3
    if-eqz p1, :cond_4

    #@b3
    .line 4024
    const-string/jumbo v14, "intent"

    #@b6
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@bb
    move-result-object v7

    #@bc
    .end local v7    # "intent":Landroid/content/Intent;
    check-cast v7, Landroid/content/Intent;

    #@be
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_4

    #@c0
    .line 4026
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c3
    move-result v14

    #@c4
    .line 4025
    move-object/from16 v0, p0

    #@c6
    invoke-virtual {v0, v14, v7}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)V

    #@c9
    .line 4029
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz p1, :cond_5

    #@cb
    .line 4030
    const-string/jumbo v14, "authtoken"

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d3
    move-result-object v14

    #@d4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d7
    move-result v14

    #@d8
    if-eqz v14, :cond_b

    #@da
    .line 4040
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    #@dc
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@de
    if-eqz v14, :cond_c

    #@e0
    if-eqz p1, :cond_c

    #@e2
    .line 4041
    const-string/jumbo v14, "intent"

    #@e5
    move-object/from16 v0, p1

    #@e7
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@ea
    move-result v14

    #@eb
    .line 4040
    if-eqz v14, :cond_c

    #@ed
    .line 4042
    move-object/from16 v0, p0

    #@ef
    iget-object v13, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@f1
    .line 4046
    .local v13, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_3
    if-eqz v13, :cond_7

    #@f3
    .line 4048
    if-nez p1, :cond_d

    #@f5
    .line 4049
    :try_start_0
    const-string/jumbo v14, "AccountManagerService"

    #@f8
    const/4 v15, 0x2

    #@f9
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@fc
    move-result v14

    #@fd
    if-eqz v14, :cond_6

    #@ff
    .line 4050
    const-string/jumbo v14, "AccountManagerService"

    #@102
    new-instance v15, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@10a
    move-result-object v16

    #@10b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10e
    move-result-object v16

    #@10f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v15

    #@113
    .line 4051
    const-string/jumbo v16, " calling onError() on response "

    #@116
    .line 4050
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v15

    #@11e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v15

    #@122
    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    .line 4054
    :cond_6
    const-string/jumbo v14, "null bundle returned"

    #@128
    .line 4053
    const/4 v15, 0x5

    #@129
    invoke-interface {v13, v15, v14}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12c
    .line 3985
    :cond_7
    :goto_4
    return-void

    #@12d
    .line 3993
    .end local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v8    # "isSuccessfulConfirmCreds":Z
    :cond_8
    const/4 v9, 0x0

    #@12e
    .local v9, "isSuccessfulUpdateCredsOrAddAccount":Z
    goto/16 :goto_0

    #@130
    .line 3999
    .end local v9    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_9
    const/4 v12, 0x1

    #@131
    goto/16 :goto_1

    #@133
    .line 3998
    :cond_a
    const/4 v12, 0x0

    #@134
    goto/16 :goto_1

    #@136
    .line 4031
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isSuccessfulConfirmCreds":Z
    :cond_b
    const-string/jumbo v14, "authAccount"

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13e
    move-result-object v3

    #@13f
    .line 4032
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "accountType"

    #@142
    move-object/from16 v0, p1

    #@144
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@147
    move-result-object v5

    #@148
    .line 4033
    .local v5, "accountType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14b
    move-result v14

    #@14c
    if-nez v14, :cond_5

    #@14e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@151
    move-result v14

    #@152
    if-nez v14, :cond_5

    #@154
    .line 4034
    new-instance v2, Landroid/accounts/Account;

    #@156
    invoke-direct {v2, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@159
    .line 4035
    .local v2, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@15b
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@165
    move-object/from16 v16, v0

    #@167
    move-object/from16 v0, v16

    #@169
    invoke-static {v15, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->-wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@16c
    move-result-object v15

    #@16d
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@170
    move-result v15

    #@171
    .line 4036
    new-instance v16, Landroid/os/UserHandle;

    #@173
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@177
    move-object/from16 v17, v0

    #@179
    invoke-static/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@17c
    move-result v17

    #@17d
    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    #@180
    .line 4035
    invoke-virtual/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@183
    goto/16 :goto_2

    #@185
    .line 4044
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@188
    move-result-object v13

    #@189
    .restart local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    goto/16 :goto_3

    #@18b
    .line 4056
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    #@18d
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@18f
    if-eqz v14, :cond_e

    #@191
    .line 4057
    const-string/jumbo v14, "authtoken"

    #@194
    move-object/from16 v0, p1

    #@196
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@199
    .line 4059
    :cond_e
    const-string/jumbo v14, "AccountManagerService"

    #@19c
    const/4 v15, 0x2

    #@19d
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1a0
    move-result v14

    #@1a1
    if-eqz v14, :cond_f

    #@1a3
    .line 4060
    const-string/jumbo v14, "AccountManagerService"

    #@1a6
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@1ae
    move-result-object v16

    #@1af
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1b2
    move-result-object v16

    #@1b3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v15

    #@1b7
    .line 4061
    const-string/jumbo v16, " calling onResult() on response "

    #@1ba
    .line 4060
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v15

    #@1be
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v15

    #@1c2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v15

    #@1c6
    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c9
    .line 4063
    :cond_f
    const-string/jumbo v14, "errorCode"

    #@1cc
    const/4 v15, -0x1

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d2
    move-result v14

    #@1d3
    if-lez v14, :cond_10

    #@1d5
    .line 4064
    if-nez v7, :cond_10

    #@1d7
    .line 4066
    const-string/jumbo v14, "errorCode"

    #@1da
    move-object/from16 v0, p1

    #@1dc
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@1df
    move-result v14

    #@1e0
    .line 4067
    const-string/jumbo v15, "errorMessage"

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e8
    move-result-object v15

    #@1e9
    .line 4066
    invoke-interface {v13, v14, v15}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ec
    goto/16 :goto_4

    #@1ee
    .line 4072
    :catch_0
    move-exception v6

    #@1ef
    .line 4074
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "AccountManagerService"

    #@1f2
    const/4 v15, 0x2

    #@1f3
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f6
    move-result v14

    #@1f7
    if-eqz v14, :cond_7

    #@1f9
    .line 4075
    const-string/jumbo v14, "AccountManagerService"

    #@1fc
    const-string/jumbo v15, "failure while notifying response"

    #@1ff
    invoke-static {v14, v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@202
    goto/16 :goto_4

    #@204
    .line 4069
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_2
    move-object/from16 v0, p1

    #@206
    invoke-interface {v13, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@209
    goto/16 :goto_4
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3941
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@6
    .line 3943
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3940
    :goto_0
    return-void

    #@a
    .line 3944
    :catch_0
    move-exception v0

    #@b
    .line 3946
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "remote exception"

    #@e
    .line 3945
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3952
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    .line 3953
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@6
    move-result-object v1

    #@7
    .line 3954
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@9
    .line 3957
    :try_start_0
    const-string/jumbo v2, "disconnected"

    #@c
    .line 3956
    const/4 v3, 0x1

    #@d
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 3951
    :cond_0
    :goto_0
    return-void

    #@11
    .line 3958
    :catch_0
    move-exception v0

    #@12
    .line 3959
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@15
    const/4 v3, 0x2

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 3960
    const-string/jumbo v2, "AccountManagerService"

    #@1f
    const-string/jumbo v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    #@22
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 4

    #@0
    .prologue
    .line 3970
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@3
    move-result-object v1

    #@4
    .line 3971
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@6
    .line 3974
    :try_start_0
    const-string/jumbo v2, "timeout"

    #@9
    .line 3973
    const/4 v3, 0x1

    #@a
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3969
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3975
    :catch_0
    move-exception v0

    #@f
    .line 3976
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@12
    const/4 v3, 0x2

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 3977
    const-string/jumbo v2, "AccountManagerService"

    #@1c
    const-string/jumbo v3, "Session.onTimedOut: caught RemoteException while responding"

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3907
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Session: expectLaunch "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 3912
    const-string/jumbo v1, ", connected "

    #@15
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 3912
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 3911
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 3913
    const-string/jumbo v1, ", stats ("

    #@25
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 3913
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@2b
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 3913
    const-string/jumbo v1, "/"

    #@32
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 3913
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@38
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 3914
    const-string/jumbo v1, "/"

    #@3f
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 3914
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@45
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 3914
    const-string/jumbo v1, ")"

    #@4c
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 3915
    const-string/jumbo v1, ", lifetime "

    #@53
    .line 3911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 3915
    iget-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    #@59
    sub-long v2, p1, v2

    #@5b
    long-to-double v2, v2

    #@5c
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@61
    div-double/2addr v2, v4

    #@62
    .line 3911
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    return-object v0

    #@6b
    .line 3912
    :cond_0
    const/4 v0, 0x0

    #@6c
    goto :goto_0
.end method

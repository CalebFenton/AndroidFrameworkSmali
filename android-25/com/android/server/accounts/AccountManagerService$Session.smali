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
    .line 4134
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
    .line 4133
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@10
    .line 4132
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
    .line 4137
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    .line 4140
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    #@7
    .line 4121
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@9
    .line 4122
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@b
    .line 4123
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@d
    .line 4125
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@f
    .line 4142
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
    .line 4143
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1c
    .line 4144
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@1e
    .line 4145
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@20
    .line 4146
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@22
    .line 4147
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@24
    .line 4148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@27
    move-result-wide v2

    #@28
    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    #@2a
    .line 4149
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@2c
    .line 4150
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@2e
    .line 4151
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@30
    .line 4153
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 4154
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

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
    .line 4156
    if-eqz p3, :cond_1

    #@43
    .line 4158
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
    .line 4139
    :cond_1
    :goto_0
    return-void

    #@4c
    .line 4153
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 4159
    :catch_0
    move-exception v0

    #@50
    .line 4160
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@52
    .line 4161
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
    .line 4439
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@5
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@8
    move-result-object v2

    #@9
    .line 4440
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@c
    move-result-object v3

    #@d
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@f
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@12
    move-result v4

    #@13
    .line 4439
    invoke-interface {v2, v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@16
    move-result-object v0

    #@17
    .line 4441
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    #@19
    .line 4442
    const-string/jumbo v2, "AccountManagerService"

    #@1c
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 4443
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
    .line 4444
    const-string/jumbo v4, ", bailing out"

    #@38
    .line 4443
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
    .line 4446
    :cond_0
    return v5

    #@44
    .line 4449
    :cond_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@46
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@48
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@4b
    move-result v3

    #@4c
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap4(Lcom/android/server/accounts/AccountManagerService;I)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_2

    #@52
    .line 4450
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@54
    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@56
    if-eqz v2, :cond_5

    #@58
    .line 4456
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@5a
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5d
    .line 4457
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    #@60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@63
    .line 4458
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@68
    .line 4459
    const-string/jumbo v2, "AccountManagerService"

    #@6b
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_3

    #@71
    .line 4460
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
    .line 4462
    :cond_3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@8f
    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@91
    .line 4463
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@93
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@96
    move-result v3

    #@97
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@9a
    move-result-object v3

    #@9b
    .line 4462
    invoke-virtual {v2, v1, p0, v7, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@9e
    move-result v2

    #@9f
    if-nez v2, :cond_6

    #@a1
    .line 4464
    const-string/jumbo v2, "AccountManagerService"

    #@a4
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a7
    move-result v2

    #@a8
    if-eqz v2, :cond_4

    #@aa
    .line 4465
    const-string/jumbo v2, "AccountManagerService"

    #@ad
    new-instance v3, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v4, "bindService to "

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    const-string/jumbo v4, " failed"

    #@c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 4467
    :cond_4
    return v5

    #@ce
    .line 4451
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "AccountManagerService"

    #@d1
    new-instance v3, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v4, "Blocking binding to authenticator "

    #@d9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@df
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    .line 4452
    const-string/jumbo v4, " which isn\'t encryption aware"

    #@e6
    .line 4451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v3

    #@ee
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    .line 4453
    return v5

    #@f2
    .line 4470
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
    .line 4207
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@3
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 4208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@a
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

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
    .line 4210
    return-void

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 4213
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 4215
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
    .line 4218
    iput-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@2b
    .line 4220
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    #@2e
    .line 4221
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    #@31
    .line 4206
    return-void

    #@32
    .line 4207
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
    .line 4253
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4254
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@7
    .line 4255
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@e
    .line 4252
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    #@0
    .prologue
    .line 4243
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
    .line 4244
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
    .line 4246
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 4247
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
    .line 4248
    const-string/jumbo v0, "bind failure"

    #@4f
    const/4 v1, 0x1

    #@50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    #@53
    .line 4242
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 4226
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    .line 4227
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@6
    .line 4225
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    #@0
    .prologue
    .line 4260
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@4
    const/4 v1, 0x3

    #@5
    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    #@8
    .line 4259
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
    .line 4187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 4189
    .local v2, "bid":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@6
    iget-object v9, v9, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v4

    #@c
    .line 4190
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@e
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@11
    move-result v9

    #@12
    const/4 v10, 0x0

    #@13
    invoke-virtual {v4, p2, v10, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@16
    move-result-object v5

    #@17
    .line 4191
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    .line 4192
    .local v6, "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget v7, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d
    .line 4193
    .local v7, "targetUid":I
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_0

    #@23
    .line 4194
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@25
    .line 4195
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@27
    .line 4196
    .local v0, "activityName":Ljava/lang/String;
    const-string/jumbo v8, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    #@2a
    .line 4198
    .local v8, "tmpl":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    #@2c
    .line 4199
    const/4 v10, 0x3

    #@2d
    new-array v10, v10, [Ljava/lang/Object;

    #@2f
    const/4 v11, 0x0

    #@30
    aput-object v0, v10, v11

    #@32
    const/4 v11, 0x1

    #@33
    aput-object v1, v10, v11

    #@35
    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@37
    const/4 v12, 0x2

    #@38
    aput-object v11, v10, v12

    #@3a
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v10

    #@3e
    .line 4198
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@41
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 4201
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "targetUid":I
    .end local v8    # "tmpl":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@43
    .line 4202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 4201
    throw v9

    #@47
    .line 4202
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "targetUid":I
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 4186
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4167
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 4169
    return-object v2

    #@6
    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    .line 4172
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@b
    .line 4173
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
    .line 4412
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@7
    .line 4413
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@a
    move-result-object v1

    #@b
    .line 4414
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    #@d
    .line 4415
    const-string/jumbo v2, "AccountManagerService"

    #@10
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 4416
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
    .line 4417
    const-string/jumbo v4, " calling onError() on response "

    #@2d
    .line 4416
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
    .line 4420
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 4411
    :cond_1
    :goto_0
    return-void

    #@40
    .line 4421
    :catch_0
    move-exception v0

    #@41
    .line 4422
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@44
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 4423
    const-string/jumbo v2, "AccountManagerService"

    #@4d
    const-string/jumbo v3, "Session.onError: caught RemoteException while responding"

    #@50
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 4427
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
    .line 4428
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
    .line 4407
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@6
    .line 4406
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4310
    const/4 v14, 0x1

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-static {v0, v14}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 4311
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
    .line 4312
    const/4 v7, 0x0

    #@11
    .line 4313
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_3

    #@13
    .line 4315
    const-string/jumbo v14, "booleanResult"

    #@16
    const/4 v15, 0x0

    #@17
    .line 4314
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1c
    move-result v8

    #@1d
    .line 4317
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
    .line 4318
    const-string/jumbo v14, "accountType"

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@30
    move-result v9

    #@31
    .line 4322
    :goto_0
    move-object/from16 v0, p0

    #@33
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@35
    if-eqz v14, :cond_a

    #@37
    .line 4323
    if-nez v8, :cond_9

    #@39
    move v12, v9

    #@3a
    .line 4324
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
    .line 4325
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
    invoke-static/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->-wrap3(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    #@53
    move-result v4

    #@54
    .line 4326
    .local v4, "accountPresent":Z
    if-eqz v12, :cond_1

    #@56
    if-eqz v4, :cond_1

    #@58
    .line 4327
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
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->-wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    #@70
    .line 4329
    :cond_1
    move-object/from16 v0, p0

    #@72
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@74
    if-eqz v14, :cond_3

    #@76
    .line 4330
    const-wide/16 v10, -0x1

    #@78
    .line 4331
    .local v10, "lastAuthenticatedTime":J
    if-eqz v4, :cond_2

    #@7a
    .line 4333
    move-object/from16 v0, p0

    #@7c
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7e
    iget-object v14, v14, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@80
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@83
    move-result-object v14

    #@84
    .line 4334
    const-string/jumbo v15, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    #@87
    .line 4338
    const/16 v16, 0x2

    #@89
    move/from16 v0, v16

    #@8b
    new-array v0, v0, [Ljava/lang/String;

    #@8d
    move-object/from16 v16, v0

    #@8f
    .line 4339
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@93
    move-object/from16 v17, v0

    #@95
    const/16 v18, 0x0

    #@97
    aput-object v17, v16, v18

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@9d
    move-object/from16 v17, v0

    #@9f
    const/16 v18, 0x1

    #@a1
    aput-object v17, v16, v18

    #@a3
    .line 4332
    invoke-static/range {v14 .. v16}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@a6
    move-result-wide v10

    #@a7
    .line 4342
    :cond_2
    const-string/jumbo v14, "lastAuthenticatedTime"

    #@aa
    move-object/from16 v0, p1

    #@ac
    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@af
    .line 4347
    .end local v4    # "accountPresent":Z
    .end local v8    # "isSuccessfulConfirmCreds":Z
    .end local v10    # "lastAuthenticatedTime":J
    .end local v12    # "needUpdate":Z
    :cond_3
    if-eqz p1, :cond_4

    #@b1
    .line 4348
    const-string/jumbo v14, "intent"

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b9
    move-result-object v7

    #@ba
    .end local v7    # "intent":Landroid/content/Intent;
    check-cast v7, Landroid/content/Intent;

    #@bc
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_4

    #@be
    .line 4350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c1
    move-result v14

    #@c2
    .line 4349
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v14, v7}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)V

    #@c7
    .line 4353
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz p1, :cond_5

    #@c9
    .line 4354
    const-string/jumbo v14, "authtoken"

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_b

    #@d8
    .line 4364
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    #@da
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@dc
    if-eqz v14, :cond_c

    #@de
    if-eqz p1, :cond_c

    #@e0
    .line 4365
    const-string/jumbo v14, "intent"

    #@e3
    move-object/from16 v0, p1

    #@e5
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@e8
    move-result v14

    #@e9
    .line 4364
    if-eqz v14, :cond_c

    #@eb
    .line 4366
    move-object/from16 v0, p0

    #@ed
    iget-object v13, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@ef
    .line 4370
    .local v13, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_3
    if-eqz v13, :cond_7

    #@f1
    .line 4372
    if-nez p1, :cond_d

    #@f3
    .line 4373
    :try_start_0
    const-string/jumbo v14, "AccountManagerService"

    #@f6
    const/4 v15, 0x2

    #@f7
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@fa
    move-result v14

    #@fb
    if-eqz v14, :cond_6

    #@fd
    .line 4374
    const-string/jumbo v14, "AccountManagerService"

    #@100
    new-instance v15, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@108
    move-result-object v16

    #@109
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10c
    move-result-object v16

    #@10d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v15

    #@111
    .line 4375
    const-string/jumbo v16, " calling onError() on response "

    #@114
    .line 4374
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v15

    #@118
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v15

    #@11c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v15

    #@120
    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@123
    .line 4378
    :cond_6
    const-string/jumbo v14, "null bundle returned"

    #@126
    .line 4377
    const/4 v15, 0x5

    #@127
    invoke-interface {v13, v15, v14}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12a
    .line 4309
    :cond_7
    :goto_4
    return-void

    #@12b
    .line 4317
    .end local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v8    # "isSuccessfulConfirmCreds":Z
    :cond_8
    const/4 v9, 0x0

    #@12c
    .local v9, "isSuccessfulUpdateCredsOrAddAccount":Z
    goto/16 :goto_0

    #@12e
    .line 4323
    .end local v9    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_9
    const/4 v12, 0x1

    #@12f
    goto/16 :goto_1

    #@131
    .line 4322
    :cond_a
    const/4 v12, 0x0

    #@132
    goto/16 :goto_1

    #@134
    .line 4355
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isSuccessfulConfirmCreds":Z
    :cond_b
    const-string/jumbo v14, "authAccount"

    #@137
    move-object/from16 v0, p1

    #@139
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13c
    move-result-object v3

    #@13d
    .line 4356
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "accountType"

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    .line 4357
    .local v5, "accountType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@149
    move-result v14

    #@14a
    if-nez v14, :cond_5

    #@14c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14f
    move-result v14

    #@150
    if-nez v14, :cond_5

    #@152
    .line 4358
    new-instance v2, Landroid/accounts/Account;

    #@154
    invoke-direct {v2, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@157
    .line 4359
    .local v2, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@159
    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@15f
    move-object/from16 v0, p0

    #@161
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@163
    move-object/from16 v16, v0

    #@165
    move-object/from16 v0, v16

    #@167
    invoke-static {v15, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->-wrap9(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@16a
    move-result-object v15

    #@16b
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@16e
    move-result v15

    #@16f
    .line 4360
    new-instance v16, Landroid/os/UserHandle;

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@175
    move-object/from16 v17, v0

    #@177
    invoke-static/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@17a
    move-result v17

    #@17b
    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    #@17e
    .line 4359
    invoke-virtual/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@181
    goto/16 :goto_2

    #@183
    .line 4368
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@186
    move-result-object v13

    #@187
    .restart local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    goto/16 :goto_3

    #@189
    .line 4380
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    #@18b
    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@18d
    if-eqz v14, :cond_e

    #@18f
    .line 4381
    const-string/jumbo v14, "authtoken"

    #@192
    move-object/from16 v0, p1

    #@194
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@197
    .line 4383
    :cond_e
    const-string/jumbo v14, "AccountManagerService"

    #@19a
    const/4 v15, 0x2

    #@19b
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19e
    move-result v14

    #@19f
    if-eqz v14, :cond_f

    #@1a1
    .line 4384
    const-string/jumbo v14, "AccountManagerService"

    #@1a4
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@1ac
    move-result-object v16

    #@1ad
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1b0
    move-result-object v16

    #@1b1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v15

    #@1b5
    .line 4385
    const-string/jumbo v16, " calling onResult() on response "

    #@1b8
    .line 4384
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v15

    #@1bc
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v15

    #@1c0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v15

    #@1c4
    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c7
    .line 4387
    :cond_f
    const-string/jumbo v14, "errorCode"

    #@1ca
    const/4 v15, -0x1

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d0
    move-result v14

    #@1d1
    if-lez v14, :cond_10

    #@1d3
    .line 4388
    if-nez v7, :cond_10

    #@1d5
    .line 4390
    const-string/jumbo v14, "errorCode"

    #@1d8
    move-object/from16 v0, p1

    #@1da
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@1dd
    move-result v14

    #@1de
    .line 4391
    const-string/jumbo v15, "errorMessage"

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e6
    move-result-object v15

    #@1e7
    .line 4390
    invoke-interface {v13, v14, v15}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ea
    goto/16 :goto_4

    #@1ec
    .line 4396
    :catch_0
    move-exception v6

    #@1ed
    .line 4398
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "AccountManagerService"

    #@1f0
    const/4 v15, 0x2

    #@1f1
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f4
    move-result v14

    #@1f5
    if-eqz v14, :cond_7

    #@1f7
    .line 4399
    const-string/jumbo v14, "AccountManagerService"

    #@1fa
    const-string/jumbo v15, "failure while notifying response"

    #@1fd
    invoke-static {v14, v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@200
    goto/16 :goto_4

    #@202
    .line 4393
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_2
    move-object/from16 v0, p1

    #@204
    invoke-interface {v13, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@207
    goto/16 :goto_4
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 4265
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@6
    .line 4267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4264
    :goto_0
    return-void

    #@a
    .line 4268
    :catch_0
    move-exception v0

    #@b
    .line 4270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "remote exception"

    #@e
    .line 4269
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
    .line 4276
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    .line 4277
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@6
    move-result-object v1

    #@7
    .line 4278
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@9
    .line 4281
    :try_start_0
    const-string/jumbo v2, "disconnected"

    #@c
    .line 4280
    const/4 v3, 0x1

    #@d
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 4275
    :cond_0
    :goto_0
    return-void

    #@11
    .line 4282
    :catch_0
    move-exception v0

    #@12
    .line 4283
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
    .line 4284
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
    .line 4294
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@3
    move-result-object v1

    #@4
    .line 4295
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@6
    .line 4298
    :try_start_0
    const-string/jumbo v2, "timeout"

    #@9
    .line 4297
    const/4 v3, 0x1

    #@a
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 4293
    :cond_0
    :goto_0
    return-void

    #@e
    .line 4299
    :catch_0
    move-exception v0

    #@f
    .line 4300
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
    .line 4301
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
    .line 4231
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
    .line 4235
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
    .line 4236
    const-string/jumbo v1, ", connected "

    #@15
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 4236
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 4235
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 4237
    const-string/jumbo v1, ", stats ("

    #@25
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 4237
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@2b
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 4237
    const-string/jumbo v1, "/"

    #@32
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 4237
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@38
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 4238
    const-string/jumbo v1, "/"

    #@3f
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 4238
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@45
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 4238
    const-string/jumbo v1, ")"

    #@4c
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 4239
    const-string/jumbo v1, ", lifetime "

    #@53
    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 4239
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
    .line 4235
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
    .line 4236
    :cond_0
    const/4 v0, 0x0

    #@6c
    goto :goto_0
.end method

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
    .line 2892
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
    .line 2891
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    #@10
    .line 2890
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
    .line 2895
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@4
    .line 2898
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    #@7
    .line 2879
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@9
    .line 2880
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@b
    .line 2881
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@d
    .line 2883
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@f
    .line 2900
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
    .line 2901
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1c
    .line 2902
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@1e
    .line 2903
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@20
    .line 2904
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@22
    .line 2905
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@24
    .line 2906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@27
    move-result-wide v2

    #@28
    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    #@2a
    .line 2907
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@2c
    .line 2908
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@2e
    .line 2909
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@30
    .line 2911
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 2912
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
    .line 2914
    if-eqz p3, :cond_1

    #@43
    .line 2916
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
    .line 2897
    :cond_1
    :goto_0
    return-void

    #@4c
    .line 2911
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 2917
    :catch_0
    move-exception v0

    #@50
    .line 2918
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@52
    .line 2919
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
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x2

    #@3
    .line 3184
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@5
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get0(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@8
    move-result-object v2

    #@9
    .line 3185
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
    .line 3184
    invoke-interface {v2, v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@16
    move-result-object v0

    #@17
    .line 3186
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    #@19
    .line 3187
    const-string/jumbo v2, "AccountManagerService"

    #@1c
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 3188
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
    .line 3189
    const-string/jumbo v4, ", bailing out"

    #@38
    .line 3188
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
    .line 3191
    :cond_0
    return v6

    #@44
    .line 3194
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@46
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@49
    .line 3195
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    #@4c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@4f
    .line 3196
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@51
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@54
    .line 3197
    const-string/jumbo v2, "AccountManagerService"

    #@57
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_2

    #@5d
    .line 3198
    const-string/jumbo v2, "AccountManagerService"

    #@60
    new-instance v3, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v4, "performing bindService to "

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 3200
    :cond_2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@7b
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@7e
    move-result-object v2

    #@7f
    .line 3201
    new-instance v3, Landroid/os/UserHandle;

    #@81
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@83
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@86
    move-result v4

    #@87
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@8a
    .line 3200
    invoke-virtual {v2, v1, p0, v7, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@8d
    move-result v2

    #@8e
    if-nez v2, :cond_4

    #@90
    .line 3202
    const-string/jumbo v2, "AccountManagerService"

    #@93
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@96
    move-result v2

    #@97
    if-eqz v2, :cond_3

    #@99
    .line 3203
    const-string/jumbo v2, "AccountManagerService"

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, "bindService to "

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    const-string/jumbo v4, " failed"

    #@b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 3205
    :cond_3
    return v6

    #@bd
    .line 3209
    :cond_4
    return v7
.end method

.method private close()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2935
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@3
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 2936
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
    .line 2938
    return-void

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 2941
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 2943
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
    .line 2946
    iput-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@2b
    .line 2948
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    #@2e
    .line 2949
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    #@31
    .line 2934
    return-void

    #@32
    .line 2935
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
    .line 2981
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2982
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@7
    .line 2983
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@10
    .line 2980
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    #@0
    .prologue
    .line 2971
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
    .line 2972
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
    .line 2974
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@28
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 2975
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
    .line 2976
    const-string/jumbo v0, "bind failure"

    #@4f
    const/4 v1, 0x1

    #@50
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    #@53
    .line 2970
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 2954
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    .line 2955
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@6
    .line 2953
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    #@0
    .prologue
    .line 2988
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
    .line 2987
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2925
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2927
    return-object v2

    #@6
    .line 2929
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    .line 2930
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    #@b
    .line 2931
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
    .line 3157
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@7
    .line 3158
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@a
    move-result-object v1

    #@b
    .line 3159
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    #@d
    .line 3160
    const-string/jumbo v2, "AccountManagerService"

    #@10
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 3161
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
    .line 3162
    const-string/jumbo v4, " calling onError() on response "

    #@2d
    .line 3161
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
    .line 3165
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 3156
    :cond_1
    :goto_0
    return-void

    #@40
    .line 3166
    :catch_0
    move-exception v0

    #@41
    .line 3167
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@44
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 3168
    const-string/jumbo v2, "AccountManagerService"

    #@4d
    const-string/jumbo v3, "Session.onError: caught RemoteException while responding"

    #@50
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_0

    #@54
    .line 3172
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
    .line 3173
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
    .line 3152
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@6
    .line 3151
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3038
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@4
    move/from16 v22, v0

    #@6
    add-int/lit8 v22, v22, 0x1

    #@8
    move/from16 v0, v22

    #@a
    move-object/from16 v1, p0

    #@c
    iput v0, v1, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@e
    .line 3039
    const/4 v12, 0x0

    #@f
    .line 3040
    .local v12, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_3

    #@11
    .line 3042
    const-string/jumbo v22, "booleanResult"

    #@14
    const/16 v23, 0x0

    #@16
    .line 3041
    move-object/from16 v0, p1

    #@18
    move-object/from16 v1, v22

    #@1a
    move/from16 v2, v23

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1f
    move-result v13

    #@20
    .line 3044
    .local v13, "isSuccessfulConfirmCreds":Z
    const-string/jumbo v22, "authAccount"

    #@23
    move-object/from16 v0, p1

    #@25
    move-object/from16 v1, v22

    #@27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2a
    move-result v22

    #@2b
    if-eqz v22, :cond_4

    #@2d
    .line 3045
    const-string/jumbo v22, "accountType"

    #@30
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, v22

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@37
    move-result v14

    #@38
    .line 3049
    :goto_0
    move-object/from16 v0, p0

    #@3a
    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    #@3c
    move/from16 v22, v0

    #@3e
    if-eqz v22, :cond_6

    #@40
    .line 3050
    if-nez v13, :cond_5

    #@42
    move v15, v14

    #@43
    .line 3051
    :goto_1
    if-nez v15, :cond_0

    #@45
    move-object/from16 v0, p0

    #@47
    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@49
    move/from16 v22, v0

    #@4b
    if-eqz v22, :cond_3

    #@4d
    .line 3052
    :cond_0
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@51
    move-object/from16 v22, v0

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@57
    move-object/from16 v23, v0

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@5d
    move-object/from16 v24, v0

    #@5f
    invoke-static/range {v22 .. v24}, Lcom/android/server/accounts/AccountManagerService;->-wrap1(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    #@62
    move-result v6

    #@63
    .line 3053
    .local v6, "accountPresent":Z
    if-eqz v15, :cond_1

    #@65
    if-eqz v6, :cond_1

    #@67
    .line 3054
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@6b
    move-object/from16 v22, v0

    #@6d
    new-instance v23, Landroid/accounts/Account;

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@73
    move-object/from16 v24, v0

    #@75
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@79
    move-object/from16 v25, v0

    #@7b
    invoke-direct/range {v23 .. v25}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    invoke-static/range {v22 .. v23}, Lcom/android/server/accounts/AccountManagerService;->-wrap4(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    #@81
    .line 3056
    :cond_1
    move-object/from16 v0, p0

    #@83
    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    #@85
    move/from16 v22, v0

    #@87
    if-eqz v22, :cond_3

    #@89
    .line 3057
    const-wide/16 v16, -0x1

    #@8b
    .line 3058
    .local v16, "lastAuthenticatedTime":J
    if-eqz v6, :cond_2

    #@8d
    .line 3060
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-object/from16 v22, v0

    #@93
    invoke-static/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@96
    move-result-object v22

    #@97
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@9a
    move-result-object v22

    #@9b
    .line 3061
    const-string/jumbo v23, "select last_password_entry_time_millis_epoch from accounts WHERE name=? AND type=?"

    #@9e
    .line 3065
    const/16 v24, 0x2

    #@a0
    move/from16 v0, v24

    #@a2
    new-array v0, v0, [Ljava/lang/String;

    #@a4
    move-object/from16 v24, v0

    #@a6
    .line 3066
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    #@aa
    move-object/from16 v25, v0

    #@ac
    const/16 v26, 0x0

    #@ae
    aput-object v25, v24, v26

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    #@b4
    move-object/from16 v25, v0

    #@b6
    const/16 v26, 0x1

    #@b8
    aput-object v25, v24, v26

    #@ba
    .line 3059
    invoke-static/range {v22 .. v24}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@bd
    move-result-wide v16

    #@be
    .line 3069
    :cond_2
    const-string/jumbo v22, "lastAuthenticatedTime"

    #@c1
    move-object/from16 v0, p1

    #@c3
    move-object/from16 v1, v22

    #@c5
    move-wide/from16 v2, v16

    #@c7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@ca
    .line 3074
    .end local v6    # "accountPresent":Z
    .end local v13    # "isSuccessfulConfirmCreds":Z
    .end local v16    # "lastAuthenticatedTime":J
    :cond_3
    if-eqz p1, :cond_8

    #@cc
    .line 3075
    const-string/jumbo v22, "intent"

    #@cf
    move-object/from16 v0, p1

    #@d1
    move-object/from16 v1, v22

    #@d3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@d6
    move-result-object v12

    #@d7
    .end local v12    # "intent":Landroid/content/Intent;
    check-cast v12, Landroid/content/Intent;

    #@d9
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_8

    #@db
    .line 3082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@de
    move-result v8

    #@df
    .line 3083
    .local v8, "authenticatorUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e2
    move-result-wide v10

    #@e3
    .line 3085
    .local v10, "bid":J
    :try_start_0
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@e7
    move-object/from16 v22, v0

    #@e9
    invoke-static/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService;->-get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    #@ec
    move-result-object v22

    #@ed
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f0
    move-result-object v18

    #@f1
    .line 3086
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@f5
    move-object/from16 v22, v0

    #@f7
    invoke-static/range {v22 .. v22}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@fa
    move-result v22

    #@fb
    const/16 v23, 0x0

    #@fd
    move-object/from16 v0, v18

    #@ff
    move/from16 v1, v23

    #@101
    move/from16 v2, v22

    #@103
    invoke-virtual {v0, v12, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@106
    move-result-object v19

    #@107
    .line 3087
    .local v19, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    #@109
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10b
    move-object/from16 v22, v0

    #@10d
    move-object/from16 v0, v22

    #@10f
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@111
    move-object/from16 v22, v0

    #@113
    move-object/from16 v0, v22

    #@115
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@117
    move/from16 v21, v0

    #@119
    .line 3089
    .local v21, "targetUid":I
    move-object/from16 v0, v18

    #@11b
    move/from16 v1, v21

    #@11d
    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@120
    move-result v22

    #@121
    .line 3088
    if-eqz v22, :cond_7

    #@123
    .line 3090
    new-instance v22, Ljava/lang/SecurityException;

    #@125
    .line 3091
    const-string/jumbo v23, "Activity to be started with KEY_INTENT must share Authenticator\'s signatures"

    #@128
    .line 3090
    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12b
    throw v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12c
    .line 3094
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "targetUid":I
    :catchall_0
    move-exception v22

    #@12d
    .line 3095
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@130
    .line 3094
    throw v22

    #@131
    .line 3044
    .end local v8    # "authenticatorUid":I
    .end local v10    # "bid":J
    .local v12, "intent":Landroid/content/Intent;
    .restart local v13    # "isSuccessfulConfirmCreds":Z
    :cond_4
    const/4 v14, 0x0

    #@132
    .local v14, "isSuccessfulUpdateCredsOrAddAccount":Z
    goto/16 :goto_0

    #@134
    .line 3050
    .end local v14    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_5
    const/4 v15, 0x1

    #@135
    .local v15, "needUpdate":Z
    goto/16 :goto_1

    #@137
    .line 3049
    .end local v15    # "needUpdate":Z
    :cond_6
    const/4 v15, 0x0

    #@138
    .restart local v15    # "needUpdate":Z
    goto/16 :goto_1

    #@13a
    .line 3095
    .end local v13    # "isSuccessfulConfirmCreds":Z
    .end local v15    # "needUpdate":Z
    .restart local v8    # "authenticatorUid":I
    .restart local v10    # "bid":J
    .local v12, "intent":Landroid/content/Intent;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "targetUid":I
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13d
    .line 3098
    .end local v8    # "authenticatorUid":I
    .end local v10    # "bid":J
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v21    # "targetUid":I
    :cond_8
    if-eqz p1, :cond_9

    #@13f
    .line 3099
    const-string/jumbo v22, "authtoken"

    #@142
    move-object/from16 v0, p1

    #@144
    move-object/from16 v1, v22

    #@146
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@149
    move-result-object v22

    #@14a
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14d
    move-result v22

    #@14e
    if-eqz v22, :cond_c

    #@150
    .line 3109
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    #@152
    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    #@154
    move/from16 v22, v0

    #@156
    if-eqz v22, :cond_d

    #@158
    if-eqz p1, :cond_d

    #@15a
    .line 3110
    const-string/jumbo v22, "intent"

    #@15d
    move-object/from16 v0, p1

    #@15f
    move-object/from16 v1, v22

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@164
    move-result v22

    #@165
    .line 3109
    if-eqz v22, :cond_d

    #@167
    .line 3111
    move-object/from16 v0, p0

    #@169
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@16b
    move-object/from16 v20, v0

    #@16d
    .line 3115
    .local v20, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_3
    if-eqz v20, :cond_b

    #@16f
    .line 3117
    if-nez p1, :cond_e

    #@171
    .line 3118
    :try_start_1
    const-string/jumbo v22, "AccountManagerService"

    #@174
    const/16 v23, 0x2

    #@176
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@179
    move-result v22

    #@17a
    if-eqz v22, :cond_a

    #@17c
    .line 3119
    const-string/jumbo v22, "AccountManagerService"

    #@17f
    new-instance v23, Ljava/lang/StringBuilder;

    #@181
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@187
    move-result-object v24

    #@188
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@18b
    move-result-object v24

    #@18c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v23

    #@190
    .line 3120
    const-string/jumbo v24, " calling onError() on response "

    #@193
    .line 3119
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v23

    #@197
    move-object/from16 v0, v23

    #@199
    move-object/from16 v1, v20

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v23

    #@19f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v23

    #@1a3
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a6
    .line 3123
    :cond_a
    const-string/jumbo v22, "null bundle returned"

    #@1a9
    .line 3122
    const/16 v23, 0x5

    #@1ab
    move-object/from16 v0, v20

    #@1ad
    move/from16 v1, v23

    #@1af
    move-object/from16 v2, v22

    #@1b1
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1b4
    .line 3037
    :cond_b
    :goto_4
    return-void

    #@1b5
    .line 3100
    .end local v20    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_c
    const-string/jumbo v22, "authAccount"

    #@1b8
    move-object/from16 v0, p1

    #@1ba
    move-object/from16 v1, v22

    #@1bc
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1bf
    move-result-object v5

    #@1c0
    .line 3101
    .local v5, "accountName":Ljava/lang/String;
    const-string/jumbo v22, "accountType"

    #@1c3
    move-object/from16 v0, p1

    #@1c5
    move-object/from16 v1, v22

    #@1c7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1ca
    move-result-object v7

    #@1cb
    .line 3102
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1ce
    move-result v22

    #@1cf
    if-nez v22, :cond_9

    #@1d1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d4
    move-result v22

    #@1d5
    if-nez v22, :cond_9

    #@1d7
    .line 3103
    new-instance v4, Landroid/accounts/Account;

    #@1d9
    invoke-direct {v4, v5, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1dc
    .line 3104
    .local v4, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@1e0
    move-object/from16 v22, v0

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@1e6
    move-object/from16 v23, v0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1ec
    move-object/from16 v24, v0

    #@1ee
    move-object/from16 v0, v23

    #@1f0
    move-object/from16 v1, v24

    #@1f2
    invoke-static {v0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->-wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@1f5
    move-result-object v23

    #@1f6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    #@1f9
    move-result v23

    #@1fa
    .line 3105
    new-instance v24, Landroid/os/UserHandle;

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@200
    move-object/from16 v25, v0

    #@202
    invoke-static/range {v25 .. v25}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@205
    move-result v25

    #@206
    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    #@209
    .line 3104
    invoke-virtual/range {v22 .. v24}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@20c
    goto/16 :goto_2

    #@20e
    .line 3113
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@211
    move-result-object v20

    #@212
    .restart local v20    # "response":Landroid/accounts/IAccountManagerResponse;
    goto/16 :goto_3

    #@214
    .line 3125
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    #@216
    iget-boolean v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    #@218
    move/from16 v22, v0

    #@21a
    if-eqz v22, :cond_f

    #@21c
    .line 3126
    const-string/jumbo v22, "authtoken"

    #@21f
    move-object/from16 v0, p1

    #@221
    move-object/from16 v1, v22

    #@223
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@226
    .line 3128
    :cond_f
    const-string/jumbo v22, "AccountManagerService"

    #@229
    const/16 v23, 0x2

    #@22b
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@22e
    move-result v22

    #@22f
    if-eqz v22, :cond_10

    #@231
    .line 3129
    const-string/jumbo v22, "AccountManagerService"

    #@234
    new-instance v23, Ljava/lang/StringBuilder;

    #@236
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    #@23c
    move-result-object v24

    #@23d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@240
    move-result-object v24

    #@241
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v23

    #@245
    .line 3130
    const-string/jumbo v24, " calling onResult() on response "

    #@248
    .line 3129
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v23

    #@24c
    move-object/from16 v0, v23

    #@24e
    move-object/from16 v1, v20

    #@250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v23

    #@254
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v23

    #@258
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25b
    .line 3132
    :cond_10
    const-string/jumbo v22, "errorCode"

    #@25e
    const/16 v23, -0x1

    #@260
    move-object/from16 v0, p1

    #@262
    move-object/from16 v1, v22

    #@264
    move/from16 v2, v23

    #@266
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@269
    move-result v22

    #@26a
    if-lez v22, :cond_11

    #@26c
    .line 3133
    if-nez v12, :cond_11

    #@26e
    .line 3135
    const-string/jumbo v22, "errorCode"

    #@271
    move-object/from16 v0, p1

    #@273
    move-object/from16 v1, v22

    #@275
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@278
    move-result v22

    #@279
    .line 3136
    const-string/jumbo v23, "errorMessage"

    #@27c
    move-object/from16 v0, p1

    #@27e
    move-object/from16 v1, v23

    #@280
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@283
    move-result-object v23

    #@284
    .line 3135
    move-object/from16 v0, v20

    #@286
    move/from16 v1, v22

    #@288
    move-object/from16 v2, v23

    #@28a
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@28d
    goto/16 :goto_4

    #@28f
    .line 3141
    :catch_0
    move-exception v9

    #@290
    .line 3143
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v22, "AccountManagerService"

    #@293
    const/16 v23, 0x2

    #@295
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@298
    move-result v22

    #@299
    if-eqz v22, :cond_b

    #@29b
    .line 3144
    const-string/jumbo v22, "AccountManagerService"

    #@29e
    const-string/jumbo v23, "failure while notifying response"

    #@2a1
    move-object/from16 v0, v22

    #@2a3
    move-object/from16 v1, v23

    #@2a5
    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a8
    goto/16 :goto_4

    #@2aa
    .line 3138
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_11
    :try_start_3
    move-object/from16 v0, v20

    #@2ac
    move-object/from16 v1, p1

    #@2ae
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@2b1
    goto/16 :goto_4
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2993
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@6
    .line 2995
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2992
    :goto_0
    return-void

    #@a
    .line 2996
    :catch_0
    move-exception v0

    #@b
    .line 2998
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "remote exception"

    #@e
    .line 2997
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
    .line 3004
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@3
    .line 3005
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@6
    move-result-object v1

    #@7
    .line 3006
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@9
    .line 3009
    :try_start_0
    const-string/jumbo v2, "disconnected"

    #@c
    .line 3008
    const/4 v3, 0x1

    #@d
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 3003
    :cond_0
    :goto_0
    return-void

    #@11
    .line 3010
    :catch_0
    move-exception v0

    #@12
    .line 3011
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
    .line 3012
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
    .line 3022
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    #@3
    move-result-object v1

    #@4
    .line 3023
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    #@6
    .line 3026
    :try_start_0
    const-string/jumbo v2, "timeout"

    #@9
    .line 3025
    const/4 v3, 0x1

    #@a
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3021
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3027
    :catch_0
    move-exception v0

    #@f
    .line 3028
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
    .line 3029
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
    .line 2959
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
    .line 2963
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
    .line 2964
    const-string/jumbo v1, ", connected "

    #@15
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 2964
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 2963
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 2965
    const-string/jumbo v1, ", stats ("

    #@25
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 2965
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    #@2b
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 2965
    const-string/jumbo v1, "/"

    #@32
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 2965
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    #@38
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 2966
    const-string/jumbo v1, "/"

    #@3f
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 2966
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    #@45
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 2966
    const-string/jumbo v1, ")"

    #@4c
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 2967
    const-string/jumbo v1, ", lifetime "

    #@53
    .line 2963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 2967
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
    .line 2963
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
    .line 2964
    :cond_0
    const/4 v0, 0x0

    #@6c
    goto :goto_0
.end method

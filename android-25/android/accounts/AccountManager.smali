.class public Landroid/accounts/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$1;,
        Landroid/accounts/AccountManager$AmsTask;,
        Landroid/accounts/AccountManager$BaseFutureTask;,
        Landroid/accounts/AccountManager$Future2Task;,
        Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

.field public static final ACTION_AUTHENTICATOR_INTENT:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-authenticator"

.field public static final AUTHENTICATOR_META_DATA_NAME:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final ERROR_CODE_BAD_AUTHENTICATION:I = 0x9

.field public static final ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final KEY_ACCOUNT_ACCESS_ID:Ljava/lang/String; = "accountAccessId"

.field public static final KEY_ACCOUNT_AUTHENTICATOR_RESPONSE:Ljava/lang/String; = "accountAuthenticatorResponse"

.field public static final KEY_ACCOUNT_MANAGER_RESPONSE:Ljava/lang/String; = "accountManagerResponse"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final KEY_ACCOUNT_SESSION_BUNDLE:Ljava/lang/String; = "accountSessionBundle"

.field public static final KEY_ACCOUNT_STATUS_TOKEN:Ljava/lang/String; = "accountStatusToken"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String; = "androidPackageName"

.field public static final KEY_AUTHENTICATOR_TYPES:Ljava/lang/String; = "authenticator_types"

.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final KEY_AUTH_FAILED_MESSAGE:Ljava/lang/String; = "authFailedMessage"

.field public static final KEY_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabelKey"

.field public static final KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final KEY_CALLER_PID:Ljava/lang/String; = "callerPid"

.field public static final KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_USERDATA:Ljava/lang/String; = "userdata"

.field public static final LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private final mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mAccountsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mService:Landroid/accounts/IAccountManager;


# direct methods
.method static synthetic -get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/accounts/AccountManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/accounts/AccountManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/accounts/AccountManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/accounts/AccountManager;->ensureNotOnMainThread()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/accounts/AccountManagerCallback;
    .param p3, "future"    # Landroid/accounts/AccountManagerFuture;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2561
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    .line 2560
    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@9
    .line 2568
    new-instance v0, Landroid/accounts/AccountManager$1;

    #@b
    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;)V

    #@e
    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@10
    .line 304
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@12
    .line 305
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@14
    .line 306
    new-instance v0, Landroid/os/Handler;

    #@16
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1f
    iput-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    #@21
    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2561
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    .line 2560
    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@9
    .line 2568
    new-instance v0, Landroid/accounts/AccountManager$1;

    #@b
    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;)V

    #@e
    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@10
    .line 313
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@12
    .line 314
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@14
    .line 315
    iput-object p3, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    #@16
    .line 312
    return-void
.end method

.method private convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2204
    const/4 v0, 0x3

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 2205
    new-instance v0, Ljava/io/IOException;

    #@5
    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0

    #@9
    .line 2208
    :cond_0
    const/4 v0, 0x6

    #@a
    if-ne p1, v0, :cond_1

    #@c
    .line 2209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@e
    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11
    return-object v0

    #@12
    .line 2212
    :cond_1
    const/4 v0, 0x5

    #@13
    if-ne p1, v0, :cond_2

    #@15
    .line 2213
    new-instance v0, Landroid/accounts/AuthenticatorException;

    #@17
    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    #@1a
    return-object v0

    #@1b
    .line 2216
    :cond_2
    const/4 v0, 0x7

    #@1c
    if-ne p1, v0, :cond_3

    #@1e
    .line 2217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    return-object v0

    #@24
    .line 2220
    :cond_3
    new-instance v0, Landroid/accounts/AuthenticatorException;

    #@26
    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    #@29
    return-object v0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    #@0
    .prologue
    .line 1884
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v1

    #@4
    .line 1885
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    #@6
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@b
    move-result-object v2

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 1886
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    .line 1887
    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    #@13
    .line 1886
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    .line 1888
    .local v0, "exception":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "AccountManager"

    #@19
    const-string/jumbo v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    #@1c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 1890
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@24
    move-result-object v2

    #@25
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@27
    const/16 v3, 0x8

    #@29
    if-lt v2, v3, :cond_0

    #@2b
    .line 1891
    throw v0

    #@2c
    .line 1883
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 348
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "context is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 349
    :cond_0
    const-string/jumbo v0, "account"

    #@e
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/accounts/AccountManager;

    #@14
    return-object v0
.end method

.method public static newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 7
    .param p0, "selectedAccount"    # Landroid/accounts/Account;
    .param p2, "allowableAccountTypes"    # [Ljava/lang/String;
    .param p3, "alwaysPromptForAccount"    # Z
    .param p4, "descriptionOverrideText"    # Ljava/lang/String;
    .param p5, "addAccountAuthTokenType"    # Ljava/lang/String;
    .param p6, "addAccountRequiredFeatures"    # [Ljava/lang/String;
    .param p7, "addAccountOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "allowableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    move-object v6, p7

    #@7
    .line 2489
    invoke-static/range {v0 .. v6}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 5
    .param p0, "selectedAccount"    # Landroid/accounts/Account;
    .param p2, "allowableAccountTypes"    # [Ljava/lang/String;
    .param p3, "descriptionOverrideText"    # Ljava/lang/String;
    .param p4, "addAccountAuthTokenType"    # Ljava/lang/String;
    .param p5, "addAccountRequiredFeatures"    # [Ljava/lang/String;
    .param p6, "addAccountOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "allowableAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v2, 0x0

    #@1
    .line 2538
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@6
    .line 2540
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v3

    #@a
    const v4, 0x104005e

    #@d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 2539
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@14
    move-result-object v0

    #@15
    .line 2541
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 2542
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 2541
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@20
    .line 2543
    const-string/jumbo v3, "allowableAccounts"

    #@23
    .line 2544
    if-nez p1, :cond_0

    #@25
    .line 2543
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@28
    .line 2545
    const-string/jumbo v2, "allowableAccountTypes"

    #@2b
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    .line 2547
    const-string/jumbo v2, "addAccountOptions"

    #@31
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@34
    .line 2549
    const-string/jumbo v2, "selectedAccount"

    #@37
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3a
    .line 2550
    const-string/jumbo v2, "descriptionTextOverride"

    #@3d
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@40
    .line 2552
    const-string/jumbo v2, "authTokenType"

    #@43
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@46
    .line 2555
    const-string/jumbo v2, "addAccountRequiredFeatures"

    #@49
    .line 2554
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@4c
    .line 2557
    return-object v1

    #@4d
    .line 2544
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@52
    goto :goto_0
.end method

.method private postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1898
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p3, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    iget-object p1, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    #@4
    .line 1899
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$18;

    #@6
    invoke-direct {v0, p0, p2, p3}, Landroid/accounts/AccountManager$18;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1897
    return-void
.end method

.method private postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1909
    array-length v1, p3

    #@2
    new-array v0, v1, [Landroid/accounts/Account;

    #@4
    .line 1912
    .local v0, "accountsCopy":[Landroid/accounts/Account;
    array-length v1, v0

    #@5
    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    .line 1913
    if-nez p1, :cond_0

    #@a
    iget-object p1, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    #@c
    .line 1914
    :cond_0
    new-instance v1, Landroid/accounts/AccountManager$19;

    #@e
    invoke-direct {v1, p0, p2, v0}, Landroid/accounts/AccountManager$19;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 1908
    return-void
.end method

.method public static sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 322
    if-eqz p0, :cond_0

    #@2
    .line 323
    const-string/jumbo v1, "authtoken"

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 324
    const-string/jumbo v1, "authtoken"

    #@e
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 330
    :cond_0
    return-object p0

    #@19
    .line 325
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    #@1b
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@1e
    .line 326
    .local v0, "newResult":Landroid/os/Bundle;
    const-string/jumbo v1, "authtoken"

    #@21
    const-string/jumbo v2, "<omitted for logging purposes>"

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 327
    return-object v0
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "addAccountOptions"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1535
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "accountType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1536
    :cond_0
    new-instance v10, Landroid/os/Bundle;

    #@d
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 1537
    .local v10, "optionsIn":Landroid/os/Bundle;
    if-eqz p4, :cond_1

    #@12
    .line 1538
    invoke-virtual {v10, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@15
    .line 1540
    :cond_1
    const-string/jumbo v0, "androidPackageName"

    #@18
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 1542
    new-instance v0, Landroid/accounts/AccountManager$12;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p0

    #@25
    move-object/from16 v3, p5

    #@27
    move-object/from16 v4, p7

    #@29
    move-object/from16 v5, p6

    #@2b
    move-object v6, p1

    #@2c
    move-object v7, p2

    #@2d
    move-object v8, p3

    #@2e
    move-object/from16 v9, p5

    #@30
    invoke-direct/range {v0 .. v10}, Landroid/accounts/AccountManager$12;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    #@33
    invoke-virtual {v0}, Landroid/accounts/AccountManager$12;->start()Landroid/accounts/AccountManagerFuture;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 13
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "addAccountOptions"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1559
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "accountType is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1560
    :cond_0
    if-nez p8, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "userHandle is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1561
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    #@18
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@1b
    .line 1562
    .local v11, "optionsIn":Landroid/os/Bundle;
    if-eqz p4, :cond_2

    #@1d
    .line 1563
    move-object/from16 v0, p4

    #@1f
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@22
    .line 1565
    :cond_2
    const-string/jumbo v1, "androidPackageName"

    #@25
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 1567
    new-instance v1, Landroid/accounts/AccountManager$13;

    #@30
    move-object v2, p0

    #@31
    move-object v3, p0

    #@32
    move-object/from16 v4, p5

    #@34
    move-object/from16 v5, p7

    #@36
    move-object/from16 v6, p6

    #@38
    move-object v7, p1

    #@39
    move-object v8, p2

    #@3a
    move-object/from16 v9, p3

    #@3c
    move-object/from16 v10, p5

    #@3e
    move-object/from16 v12, p8

    #@40
    invoke-direct/range {v1 .. v12}, Landroid/accounts/AccountManager$13;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@43
    invoke-virtual {v1}, Landroid/accounts/AccountManager$13;->start()Landroid/accounts/AccountManagerFuture;

    #@46
    move-result-object v1

    #@47
    return-object v1
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userdata"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 749
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 751
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/IAccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 752
    :catch_0
    move-exception v0

    #@13
    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .locals 5
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    #@0
    .prologue
    .line 2612
    if-nez p1, :cond_0

    #@2
    .line 2613
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "the listener is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 2615
    :cond_0
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@d
    monitor-enter v3

    #@e
    .line 2616
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 2617
    new-instance v2, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v4, "this listener is already added"

    #@1b
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 2615
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 2619
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    #@27
    move-result v1

    #@28
    .line 2621
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 2623
    if-eqz v1, :cond_2

    #@2f
    .line 2625
    new-instance v0, Landroid/content/IntentFilter;

    #@31
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@34
    .line 2626
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@37
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 2628
    const-string/jumbo v2, "android.intent.action.DEVICE_STORAGE_OK"

    #@3d
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 2629
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@42
    iget-object v4, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@44
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v3

    #@48
    .line 2633
    if-eqz p3, :cond_3

    #@4a
    .line 2634
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {p0, p2, p1, v2}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    #@51
    .line 2611
    :cond_3
    return-void
.end method

.method public addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "parentUser"    # Landroid/os/UserHandle;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1588
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    .line 1589
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v3

    #@a
    .line 1588
    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1586
    return-void

    #@e
    .line 1590
    :catch_0
    move-exception v0

    #@f
    .line 1591
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1221
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "account is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1222
    :cond_0
    if-nez p2, :cond_1

    #@e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "authTokenType is null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_1
    move-object v0, p0

    #@18
    move-object v1, p1

    #@19
    move-object v2, p2

    #@1a
    move v3, p3

    #@1b
    move-object v5, v4

    #@1c
    .line 1223
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Landroid/os/Bundle;

    #@26
    .line 1225
    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_2

    #@28
    .line 1230
    const-string/jumbo v0, "AccountManager"

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "blockingGetAuthToken: null was returned from getResult() for "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1231
    const-string/jumbo v2, ", authTokenType "

    #@3e
    .line 1230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1232
    return-object v4

    #@4e
    .line 1234
    :cond_2
    const-string/jumbo v0, "authtoken"

    #@51
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1129
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1131
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->clearPassword(Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1128
    return-void

    #@11
    .line 1132
    :catch_0
    move-exception v0

    #@12
    .line 1133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1727
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v6

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    .line 1726
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1740
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1741
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    #@e
    move-result v9

    #@f
    .line 1742
    .local v9, "userId":I
    new-instance v0, Landroid/accounts/AccountManager$15;

    #@11
    move-object v1, p0

    #@12
    move-object v2, p0

    #@13
    move-object v3, p3

    #@14
    move-object v4, p5

    #@15
    move-object v5, p4

    #@16
    move-object v6, p1

    #@17
    move-object v7, p2

    #@18
    move-object v8, p3

    #@19
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$15;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;I)V

    #@1c
    invoke-virtual {v0}, Landroid/accounts/AccountManager$15;->start()Landroid/accounts/AccountManagerFuture;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "fromUser"    # Landroid/os/UserHandle;
    .param p3, "toUser"    # Landroid/os/UserHandle;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1611
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1612
    :cond_0
    if-eqz p3, :cond_1

    #@d
    if-nez p2, :cond_2

    #@f
    .line 1613
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "fromUser and toUser cannot be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1616
    :cond_2
    new-instance v0, Landroid/accounts/AccountManager$14;

    #@1a
    move-object v1, p0

    #@1b
    move-object v2, p0

    #@1c
    move-object v3, p5

    #@1d
    move-object v4, p4

    #@1e
    move-object v5, p1

    #@1f
    move-object v6, p2

    #@20
    move-object v7, p3

    #@21
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManager$14;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    #@24
    invoke-virtual {v0}, Landroid/accounts/AccountManager$14;->start()Landroid/accounts/AccountManager$Future2Task;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3021
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/IAccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 3023
    :catch_0
    move-exception v0

    #@8
    .line 3024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1858
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "accountType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1859
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$17;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v3, p2

    #@10
    move-object v4, p4

    #@11
    move-object v5, p3

    #@12
    move-object v6, p1

    #@13
    move-object v7, p2

    #@14
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManager$17;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Landroid/app/Activity;)V

    #@17
    invoke-virtual {v0}, Landroid/accounts/AccountManager$17;->start()Landroid/accounts/AccountManagerFuture;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public finishSession(Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 6
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2898
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v3

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    .line 2895
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/os/UserHandle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2914
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    .line 2915
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "sessionBundle is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2919
    :cond_0
    new-instance v8, Landroid/os/Bundle;

    #@d
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 2920
    .local v8, "appInfo":Landroid/os/Bundle;
    const-string/jumbo v0, "androidPackageName"

    #@13
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2922
    new-instance v0, Landroid/accounts/AccountManager$22;

    #@1e
    move-object v1, p0

    #@1f
    move-object v2, p0

    #@20
    move-object v3, p2

    #@21
    move-object v4, p5

    #@22
    move-object v5, p4

    #@23
    move-object v6, p1

    #@24
    move-object v7, p2

    #@25
    move-object v9, p3

    #@26
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$22;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@29
    invoke-virtual {v0}, Landroid/accounts/AccountManager$22;->start()Landroid/accounts/AccountManagerFuture;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 4

    #@0
    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManager;->getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 465
    :catch_0
    move-exception v0

    #@f
    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public getAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {v1, v3, p1, v2}, Landroid/accounts/IAccountManager;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 490
    :catch_0
    move-exception v0

    #@f
    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 555
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 701
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "type is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 702
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$4;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v3, p4

    #@10
    move-object v4, p3

    #@11
    move-object v5, p1

    #@12
    move-object v6, p2

    #@13
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$4;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Landroid/accounts/AccountManager$4;->start()Landroid/accounts/AccountManager$Future2Task;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 562
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    .line 563
    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 562
    invoke-interface {v1, p1, v2, v3}, Landroid/accounts/IAccountManager;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 564
    :catch_0
    move-exception v0

    #@12
    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    .line 524
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 523
    invoke-interface {v1, p1, p2, v2}, Landroid/accounts/IAccountManager;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 525
    :catch_0
    move-exception v0

    #@e
    .line 526
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/accounts/IAccountManager;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 507
    :catch_0
    move-exception v0

    #@e
    .line 508
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1296
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1297
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "authTokenType is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1298
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    #@18
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@1b
    .line 1299
    .local v8, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_2

    #@1d
    .line 1300
    invoke-virtual {v8, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@20
    .line 1302
    :cond_2
    const-string/jumbo v0, "androidPackageName"

    #@23
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1303
    new-instance v0, Landroid/accounts/AccountManager$10;

    #@2e
    move-object v1, p0

    #@2f
    move-object v2, p0

    #@30
    move-object v3, p4

    #@31
    move-object v4, p6

    #@32
    move-object v5, p5

    #@33
    move-object v6, p1

    #@34
    move-object v7, p2

    #@35
    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$10;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@38
    invoke-virtual {v0}, Landroid/accounts/AccountManager$10;->start()Landroid/accounts/AccountManagerFuture;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "notifyAuthFailure"    # Z
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1465
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1466
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "authTokenType is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1467
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    #@18
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@1b
    .line 1468
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_2

    #@1d
    .line 1469
    invoke-virtual {v9, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@20
    .line 1471
    :cond_2
    const-string/jumbo v0, "androidPackageName"

    #@23
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1472
    new-instance v0, Landroid/accounts/AccountManager$11;

    #@2e
    const/4 v3, 0x0

    #@2f
    move-object v1, p0

    #@30
    move-object v2, p0

    #@31
    move-object/from16 v4, p6

    #@33
    move-object v5, p5

    #@34
    move-object v6, p1

    #@35
    move-object v7, p2

    #@36
    move v8, p4

    #@37
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$11;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@3a
    invoke-virtual {v0}, Landroid/accounts/AccountManager$11;->start()Landroid/accounts/AccountManagerFuture;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1385
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p5, "addAccountOptions"    # Landroid/os/Bundle;
    .param p6, "getAuthTokenOptions"    # Landroid/os/Bundle;
    .param p8, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2435
    .local p7, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account type is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 2436
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "authTokenType is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 2438
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p1

    #@1a
    move-object v3, p2

    #@1b
    move-object v4, p3

    #@1c
    move-object v5, p4

    #@1d
    move-object v6, p5

    #@1e
    move-object/from16 v7, p6

    #@20
    move-object/from16 v8, p7

    #@22
    move-object/from16 v9, p8

    #@24
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;-><init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    #@27
    .line 2440
    .local v0, "task":Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    invoke-virtual {v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->start()Landroid/accounts/AccountManagerFuture;

    #@2a
    .line 2441
    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "accountType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 601
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "authTokenType is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 602
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$2;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p0

    #@1a
    move-object v3, p4

    #@1b
    move-object v4, p3

    #@1c
    move-object v5, p1

    #@1d
    move-object v6, p2

    #@1e
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$2;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    invoke-virtual {v0}, Landroid/accounts/AccountManager$2;->start()Landroid/accounts/AccountManager$Future2Task;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 3

    #@0
    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 420
    :catch_0
    move-exception v0

    #@c
    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 441
    :catch_0
    move-exception v0

    #@8
    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 370
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 372
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 373
    :catch_0
    move-exception v0

    #@13
    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 843
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 845
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 846
    :catch_0
    move-exception v0

    #@13
    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public getSharedAccounts(Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1655
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManager;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1656
    :catch_0
    move-exception v0

    #@c
    .line 1657
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 398
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "key is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 400
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 401
    :catch_0
    move-exception v0

    #@1e
    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@21
    move-result-object v1

    #@22
    throw v1
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 2997
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/IAccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2998
    :catch_0
    move-exception v0

    #@8
    .line 2999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 646
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 647
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "features is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 648
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$3;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p0

    #@1a
    move-object v3, p4

    #@1b
    move-object v4, p3

    #@1c
    move-object v5, p1

    #@1d
    move-object v6, p2

    #@1e
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$3;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;)V

    #@21
    invoke-virtual {v0}, Landroid/accounts/AccountManager$3;->start()Landroid/accounts/AccountManager$Future2Task;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1039
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "accountType is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1041
    :cond_0
    if-eqz p2, :cond_1

    #@d
    .line 1042
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@f
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1038
    :cond_1
    return-void

    #@13
    .line 1044
    :catch_0
    move-exception v0

    #@14
    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v1

    #@18
    throw v1
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "statusToken"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2957
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    #@2
    .line 2958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2961
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "status token is empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 2965
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$23;

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p0

    #@1e
    move-object v3, p4

    #@1f
    move-object v4, p3

    #@20
    move-object v5, p1

    #@21
    move-object v6, p2

    #@22
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$23;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    #@25
    invoke-virtual {v0}, Landroid/accounts/AccountManager$23;->start()Landroid/accounts/AccountManager$Future2Task;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public notifyAccountAuthenticated(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 773
    if-nez p1, :cond_0

    #@2
    .line 774
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 776
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->accountAuthenticated(Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 777
    :catch_0
    move-exception v0

    #@13
    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1071
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1072
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "authTokenType is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1074
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@18
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 1075
    :catch_0
    move-exception v0

    #@1e
    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@21
    move-result-object v1

    #@22
    throw v1
.end method

.method public removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 878
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 879
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$6;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v3, p3

    #@10
    move-object v4, p2

    #@11
    move-object v5, p1

    #@12
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$6;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;)V

    #@15
    invoke-virtual {v0}, Landroid/accounts/AccountManager$6;->start()Landroid/accounts/AccountManager$Future2Task;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 937
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 938
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$7;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v3, p2

    #@10
    move-object v4, p4

    #@11
    move-object v5, p3

    #@12
    move-object v6, p1

    #@13
    move-object v7, p2

    #@14
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManager$7;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/app/Activity;)V

    #@17
    invoke-virtual {v0}, Landroid/accounts/AccountManager$7;->start()Landroid/accounts/AccountManagerFuture;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 957
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 958
    :cond_0
    if-nez p4, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "userHandle is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 959
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$8;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p0

    #@1a
    move-object v3, p3

    #@1b
    move-object v4, p2

    #@1c
    move-object v5, p1

    #@1d
    move-object v6, p4

    #@1e
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$8;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;)V

    #@21
    invoke-virtual {v0}, Landroid/accounts/AccountManager$8;->start()Landroid/accounts/AccountManager$Future2Task;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 981
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    .line 982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 983
    :cond_0
    if-nez p5, :cond_1

    #@d
    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "userHandle is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 985
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$9;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p0

    #@1a
    move-object v3, p2

    #@1b
    move-object v4, p4

    #@1c
    move-object v5, p3

    #@1d
    move-object v6, p1

    #@1e
    move-object v7, p2

    #@1f
    move-object v8, p5

    #@20
    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$9;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/app/Activity;Landroid/os/UserHandle;)V

    #@23
    invoke-virtual {v0}, Landroid/accounts/AccountManager$9;->start()Landroid/accounts/AccountManagerFuture;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1014
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1016
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 1017
    :catch_0
    move-exception v0

    #@13
    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v1

    #@17
    throw v1
.end method

.method public removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;

    #@0
    .prologue
    .line 2652
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "listener is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2653
    :cond_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 2654
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2655
    const-string/jumbo v0, "AccountManager"

    #@19
    const-string/jumbo v2, "Listener was not previously added"

    #@1c
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 2656
    return-void

    #@21
    .line 2658
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 2659
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    #@28
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 2660
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@30
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@32
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :cond_2
    monitor-exit v1

    #@36
    .line 2651
    return-void

    #@37
    .line 2653
    :catchall_0
    move-exception v0

    #@38
    monitor-exit v1

    #@39
    throw v0
.end method

.method public removeSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1641
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v3

    #@6
    invoke-interface {v2, p1, v3}, Landroid/accounts/IAccountManager;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 1642
    .local v1, "val":Z
    return v1

    #@b
    .line 1643
    .end local v1    # "val":Z
    :catch_0
    move-exception v0

    #@c
    .line 1644
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v2

    #@10
    throw v2
.end method

.method public renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 811
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 812
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "newName is empty or null."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 815
    :cond_1
    new-instance v0, Landroid/accounts/AccountManager$5;

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p0

    #@1e
    move-object v3, p4

    #@1f
    move-object v4, p3

    #@20
    move-object v5, p1

    #@21
    move-object v6, p2

    #@22
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$5;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    #@25
    invoke-virtual {v0}, Landroid/accounts/AccountManager$5;->start()Landroid/accounts/AccountManager$Future2Task;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1185
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1186
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "authTokenType is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1188
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@18
    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/IAccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1184
    return-void

    #@1c
    .line 1189
    :catch_0
    move-exception v0

    #@1d
    .line 1190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@20
    move-result-object v1

    #@21
    throw v1
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1101
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1103
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@d
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1100
    return-void

    #@11
    .line 1104
    :catch_0
    move-exception v0

    #@12
    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1156
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "account is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1157
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "key is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1159
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@18
    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/IAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1155
    return-void

    #@1c
    .line 1160
    :catch_0
    move-exception v0

    #@1d
    .line 1161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@20
    move-result-object v1

    #@21
    throw v1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1877
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1878
    :catch_0
    move-exception v0

    #@8
    .line 1879
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public startAddAccountSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 11
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2736
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "accountType is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2737
    :cond_0
    new-instance v10, Landroid/os/Bundle;

    #@d
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 2738
    .local v10, "optionsIn":Landroid/os/Bundle;
    if-eqz p4, :cond_1

    #@12
    .line 2739
    invoke-virtual {v10, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@15
    .line 2741
    :cond_1
    const-string/jumbo v0, "androidPackageName"

    #@18
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 2743
    new-instance v0, Landroid/accounts/AccountManager$20;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p0

    #@25
    move-object/from16 v3, p5

    #@27
    move-object/from16 v4, p7

    #@29
    move-object/from16 v5, p6

    #@2b
    move-object v6, p1

    #@2c
    move-object v7, p2

    #@2d
    move-object v8, p3

    #@2e
    move-object/from16 v9, p5

    #@30
    invoke-direct/range {v0 .. v10}, Landroid/accounts/AccountManager$20;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    #@33
    invoke-virtual {v0}, Landroid/accounts/AccountManager$20;->start()Landroid/accounts/AccountManagerFuture;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2817
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    .line 2818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2823
    :cond_0
    new-instance v9, Landroid/os/Bundle;

    #@d
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@10
    .line 2824
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_1

    #@12
    .line 2825
    invoke-virtual {v9, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@15
    .line 2827
    :cond_1
    const-string/jumbo v0, "androidPackageName"

    #@18
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 2829
    new-instance v0, Landroid/accounts/AccountManager$21;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p0

    #@25
    move-object v3, p4

    #@26
    move-object/from16 v4, p6

    #@28
    move-object v5, p5

    #@29
    move-object v6, p1

    #@2a
    move-object v7, p2

    #@2b
    move-object v8, p4

    #@2c
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$21;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    #@2f
    invoke-virtual {v0}, Landroid/accounts/AccountManager$21;->start()Landroid/accounts/AccountManagerFuture;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z

    #@0
    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/accounts/IAccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 580
    return-void

    #@6
    .line 583
    :catch_0
    move-exception v0

    #@7
    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1804
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "account is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1805
    :cond_0
    new-instance v0, Landroid/accounts/AccountManager$16;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v3, p4

    #@10
    move-object/from16 v4, p6

    #@12
    move-object v5, p5

    #@13
    move-object v6, p1

    #@14
    move-object v7, p2

    #@15
    move-object v8, p4

    #@16
    move-object v9, p3

    #@17
    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$16;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    #@1a
    invoke-virtual {v0}, Landroid/accounts/AccountManager$16;->start()Landroid/accounts/AccountManagerFuture;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

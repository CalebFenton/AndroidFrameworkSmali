.class public Landroid/accounts/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$AccountKeyData;,
        Landroid/accounts/AccountManager$Future2Task;,
        Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;,
        Landroid/accounts/AccountManager$BaseFutureTask;,
        Landroid/accounts/AccountManager$AmsTask;,
        Landroid/accounts/AccountManager$AccountVisibility;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCOUNT_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

.field public static final whitelist ACTION_ACCOUNT_REMOVED:Ljava/lang/String; = "android.accounts.action.ACCOUNT_REMOVED"

.field public static final whitelist ACTION_AUTHENTICATOR_INTENT:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final greylist-max-o ACTION_VISIBLE_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

.field public static final whitelist AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-authenticator"

.field public static final whitelist AUTHENTICATOR_META_DATA_NAME:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final blacklist CACHE_ACCOUNTS_DATA_SIZE:I = 0x4

.field public static final blacklist CACHE_KEY_ACCOUNTS_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.accounts_data"

.field public static final blacklist CACHE_KEY_USER_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.account_user_data"

.field public static final blacklist CACHE_USER_DATA_SIZE:I = 0x20

.field public static final whitelist ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final whitelist ERROR_CODE_BAD_AUTHENTICATION:I = 0x9

.field public static final whitelist ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final whitelist ERROR_CODE_CANCELED:I = 0x4

.field public static final whitelist ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final greylist-max-o ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final whitelist ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final whitelist ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final whitelist ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final greylist-max-o ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final whitelist KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final greylist-max-o KEY_ACCOUNT_ACCESS_ID:Ljava/lang/String; = "accountAccessId"

.field public static final whitelist KEY_ACCOUNT_AUTHENTICATOR_RESPONSE:Ljava/lang/String; = "accountAuthenticatorResponse"

.field public static final whitelist KEY_ACCOUNT_MANAGER_RESPONSE:Ljava/lang/String; = "accountManagerResponse"

.field public static final whitelist KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final whitelist KEY_ACCOUNT_SESSION_BUNDLE:Ljava/lang/String; = "accountSessionBundle"

.field public static final whitelist KEY_ACCOUNT_STATUS_TOKEN:Ljava/lang/String; = "accountStatusToken"

.field public static final whitelist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final whitelist KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String; = "androidPackageName"

.field public static final whitelist KEY_AUTHENTICATOR_TYPES:Ljava/lang/String; = "authenticator_types"

.field public static final whitelist KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final whitelist KEY_AUTH_FAILED_MESSAGE:Ljava/lang/String; = "authFailedMessage"

.field public static final whitelist KEY_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabelKey"

.field public static final whitelist KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final whitelist KEY_CALLER_PID:Ljava/lang/String; = "callerPid"

.field public static final whitelist KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final whitelist KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final whitelist KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final whitelist KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final whitelist KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final greylist-max-o KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"

.field public static final whitelist KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final whitelist KEY_USERDATA:Ljava/lang/String; = "userdata"

.field public static final whitelist LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final whitelist PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_not_visible"

.field public static final whitelist PACKAGE_NAME_KEY_LEGACY_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_visible"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountManager"

.field public static final whitelist VISIBILITY_NOT_VISIBLE:I = 0x3

.field public static final whitelist VISIBILITY_UNDEFINED:I = 0x0

.field public static final whitelist VISIBILITY_USER_MANAGED_NOT_VISIBLE:I = 0x4

.field public static final whitelist VISIBILITY_USER_MANAGED_VISIBLE:I = 0x2

.field public static final whitelist VISIBILITY_VISIBLE:I = 0x1


# instance fields
.field private final greylist-max-o mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field blacklist mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/UserPackage;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAccountsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAccountsUpdatedListenersTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mContext:Landroid/content/Context;

.field private final greylist-max-o mMainHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/accounts/IAccountManager;

.field blacklist mUserDataCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/accounts/AccountManager$AccountKeyData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccountsUpdatedListenersTypes(Landroid/accounts/AccountManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/accounts/AccountManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/accounts/AccountManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureNotOnMainThread(Landroid/accounts/AccountManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/accounts/AccountManager;->ensureNotOnMainThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAccountByTypeAndFeatures(Landroid/accounts/AccountManager;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager;->getAccountByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Landroid/accounts/AccountManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.system_server.accounts_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    .line 428
    new-instance v0, Landroid/accounts/AccountManager$2;

    const/16 v1, 0x20

    const-string v2, "cache_key.system_server.account_user_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$2;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    .line 2956
    nop

    .line 2957
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    .line 2959
    nop

    .line 2960
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    .line 2967
    new-instance v0, Landroid/accounts/AccountManager$20;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$20;-><init>(Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 523
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 524
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    .line 525
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Landroid/accounts/AccountManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.system_server.accounts_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    .line 428
    new-instance v0, Landroid/accounts/AccountManager$2;

    const/16 v1, 0x20

    const-string v2, "cache_key.system_server.account_user_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$2;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    .line 2956
    nop

    .line 2957
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    .line 2959
    nop

    .line 2960
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    .line 2967
    new-instance v0, Landroid/accounts/AccountManager$20;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$20;-><init>(Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 533
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 534
    iput-object p3, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    .line 535
    return-void
.end method

.method private greylist-max-o convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2622
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 2623
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2626
    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    .line 2627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2630
    :cond_12
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    .line 2631
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2634
    :cond_1b
    const/4 v0, 0x7

    if-ne p1, v0, :cond_24

    .line 2635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2638
    :cond_24
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o ensureNotOnMainThread()V
    .registers 5

    .line 2283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2284
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2a

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    .line 2285
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v1, "exception":Ljava/lang/IllegalStateException;
    const-string v2, "AccountManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2289
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_29

    goto :goto_2a

    .line 2290
    :cond_29
    throw v1

    .line 2293
    .end local v1    # "exception":Ljava/lang/IllegalStateException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 567
    if-eqz p0, :cond_b

    .line 568
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0

    .line 567
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getAccountByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 12
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 2643
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/accounts/AccountManager$19;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "features":[Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "accountType":Ljava/lang/String;
    .local v6, "features":[Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$19;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v0}, Landroid/accounts/AccountManager$19;->start()Landroid/accounts/AccountManagerFuture;

    .line 2651
    return-void
.end method

.method private blacklist hasFeaturesAsUser(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;I)Landroid/accounts/AccountManagerFuture;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "I)",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 911
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1e

    .line 912
    if-eqz p2, :cond_14

    .line 913
    new-instance v0, Landroid/accounts/AccountManager$4;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    move v6, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "features":[Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "userId":I
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v4, "account":Landroid/accounts/Account;
    .local v5, "features":[Ljava/lang/String;
    .local v6, "userId":I
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$4;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;I)V

    .line 926
    invoke-virtual {v0}, Landroid/accounts/AccountManager$4;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 913
    return-object p1

    .line 912
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "features":[Ljava/lang/String;
    .end local v6    # "userId":I
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "features":[Ljava/lang/String;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "userId":I
    :cond_14
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "features":[Ljava/lang/String;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v5    # "features":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "features is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 911
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "features":[Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "features":[Ljava/lang/String;
    :cond_1e
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "features":[Ljava/lang/String;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v5    # "features":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist invalidateLocalAccountUserDataCaches()V
    .registers 1

    .line 3482
    const-string v0, "cache_key.system_server.account_user_data"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3483
    return-void
.end method

.method public static blacklist invalidateLocalAccountsDataCaches()V
    .registers 1

    .line 3465
    const-string v0, "cache_key.system_server.accounts_data"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3466
    return-void
.end method

.method public static whitelist newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 15
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
            "Ljava/util/ArrayList<",
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

    .line 2882
    .local p1, "allowableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p0    # "selectedAccount":Landroid/accounts/Account;
    .end local p1    # "allowableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local p2    # "allowableAccountTypes":[Ljava/lang/String;
    .end local p4    # "descriptionOverrideText":Ljava/lang/String;
    .end local p5    # "addAccountAuthTokenType":Ljava/lang/String;
    .end local p6    # "addAccountRequiredFeatures":[Ljava/lang/String;
    .end local p7    # "addAccountOptions":Landroid/os/Bundle;
    .local v0, "selectedAccount":Landroid/accounts/Account;
    .local v1, "allowableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .local v2, "allowableAccountTypes":[Ljava/lang/String;
    .local v3, "descriptionOverrideText":Ljava/lang/String;
    .local v4, "addAccountAuthTokenType":Ljava/lang/String;
    .local v5, "addAccountRequiredFeatures":[Ljava/lang/String;
    .local v6, "addAccountOptions":Landroid/os/Bundle;
    invoke-static/range {v0 .. v6}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 11
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
            "Ljava/util/List<",
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

    .line 2934
    .local p1, "allowableAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2936
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2935
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2937
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2938
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2937
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2939
    nop

    .line 2940
    if-nez p1, :cond_24

    const/4 v2, 0x0

    goto :goto_29

    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2939
    :goto_29
    const-string v3, "allowableAccounts"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2941
    const-string v2, "allowableAccountTypes"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2943
    const-string v2, "addAccountOptions"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2945
    const-string/jumbo v2, "selectedAccount"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2946
    const-string v2, "descriptionTextOverride"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2948
    const-string v2, "authTokenType"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2953
    return-object v0
.end method

.method private greylist-max-o postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2297
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p3, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez p1, :cond_5

    iget-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 2298
    .end local p1    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    :goto_6
    new-instance p1, Landroid/accounts/AccountManager$17;

    invoke-direct {p1, p0, p2, p3}, Landroid/accounts/AccountManager$17;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2304
    return-void
.end method

.method private greylist-max-o postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    .line 2308
    array-length v0, p3

    new-array v0, v0, [Landroid/accounts/Account;

    .line 2311
    .local v0, "accountsCopy":[Landroid/accounts/Account;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2312
    if-nez p1, :cond_d

    iget-object v1, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_e

    :cond_d
    move-object v1, p1

    .line 2313
    .end local p1    # "handler":Landroid/os/Handler;
    .local v1, "handler":Landroid/os/Handler;
    :goto_e
    new-instance p1, Landroid/accounts/AccountManager$18;

    invoke-direct {p1, p0, p2, v0}, Landroid/accounts/AccountManager$18;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2342
    return-void
.end method

.method public static greylist-max-o sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p0, "result"    # Landroid/os/Bundle;

    .line 541
    if-eqz p0, :cond_1f

    .line 542
    const-string v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 543
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 544
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 545
    .local v1, "newResult":Landroid/os/Bundle;
    const-string v2, "<omitted for logging purposes>"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-object v1

    .line 549
    .end local v1    # "newResult":Landroid/os/Bundle;
    :cond_1f
    return-object p0
.end method


# virtual methods
.method public whitelist addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 19
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1951
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object v10, p4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1952
    if-eqz p1, :cond_3f

    .line 1953
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1954
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz v10, :cond_1d

    .line 1955
    invoke-virtual {v9, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1957
    :cond_1d
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    new-instance v0, Landroid/accounts/AccountManager$11;

    move-object/from16 v8, p5

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$11;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1965
    move-object v1, v0

    invoke-virtual {v1}, Landroid/accounts/AccountManager$11;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 1959
    return-object v1

    .line 1952
    .end local v9    # "optionsIn":Landroid/os/Bundle;
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1967
    :cond_47
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1968
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 1967
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v4, v10

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    return-object v8
.end method

.method public greylist-max-o addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 22
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1980
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p4

    if-eqz p1, :cond_3e

    .line 1981
    if-eqz p8, :cond_35

    .line 1982
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v11, v1

    .line 1983
    .local v11, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 1984
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1986
    :cond_11
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    new-instance v2, Landroid/accounts/AccountManager$12;

    move-object/from16 v10, p5

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Landroid/accounts/AccountManager$12;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1994
    invoke-virtual {v2}, Landroid/accounts/AccountManager$12;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 1988
    return-object v1

    .line 1981
    .end local v11    # "optionsIn":Landroid/os/Bundle;
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "userHandle is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1980
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userdata"    # Landroid/os/Bundle;

    .line 1021
    if-eqz p1, :cond_15

    .line 1023
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/accounts/IAccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    return v0

    .line 1025
    :catch_f
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1021
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1059
    .local p4, "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_21

    .line 1062
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1063
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_16

    .line 1062
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "extras":Landroid/os/Bundle;
    .end local p4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v1, "account":Landroid/accounts/Account;
    .local v2, "password":Ljava/lang/String;
    .local v3, "extras":Landroid/os/Bundle;
    .local v4, "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountManager;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return p1

    .line 1064
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "password":Ljava/lang/String;
    .restart local p3    # "extras":Landroid/os/Bundle;
    .restart local p4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_16
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 1065
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "extras":Landroid/os/Bundle;
    .end local p4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v2    # "password":Ljava/lang/String;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1060
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "account":Landroid/accounts/Account;
    .restart local p2    # "password":Ljava/lang/String;
    .restart local p3    # "extras":Landroid/os/Bundle;
    .restart local p4    # "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_21
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "password":Ljava/lang/String;
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v2    # "password":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    .line 2992
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 2993
    return-void
.end method

.method public whitelist addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    .registers 10
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z
    .param p4, "accountTypes"    # [Ljava/lang/String;

    .line 3021
    if-eqz p1, :cond_70

    .line 3024
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3025
    :try_start_5
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 3028
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 3030
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    if-eqz p4, :cond_29

    .line 3032
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    .line 3033
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3032
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 3035
    :cond_29
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    :goto_2f
    if-eqz v1, :cond_47

    .line 3040
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3041
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3043
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3044
    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_6d

    .line 3050
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_47
    :try_start_47
    iget-object v2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p4, v3}, Landroid/accounts/IAccountManager;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_5e
    .catchall {:try_start_47 .. :try_end_52} :catchall_6d

    .line 3053
    nop

    .line 3054
    .end local v1    # "wasEmpty":Z
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_6d

    .line 3055
    if-eqz p3, :cond_5d

    .line 3056
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    .line 3058
    :cond_5d
    return-void

    .line 3051
    .restart local v1    # "wasEmpty":Z
    :catch_5e
    move-exception v2

    .line 3052
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "updateImmediately":Z
    .end local p4    # "accountTypes":[Ljava/lang/String;
    throw v3

    .line 3026
    .end local v1    # "wasEmpty":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    .restart local p3    # "updateImmediately":Z
    .restart local p4    # "accountTypes":[Ljava/lang/String;
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "this listener is already added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "updateImmediately":Z
    .end local p4    # "accountTypes":[Ljava/lang/String;
    throw v1

    .line 3054
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    .restart local p3    # "updateImmediately":Z
    .restart local p4    # "accountTypes":[Ljava/lang/String;
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_6d

    throw v1

    .line 3022
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "parentUser"    # Landroid/os/UserHandle;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2009
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2010
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2009
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 2013
    nop

    .line 2014
    return-void

    .line 2011
    :catch_15
    move-exception v0

    .line 2012
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
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

    .line 1634
    if-eqz p1, :cond_4b

    .line 1635
    if-eqz p2, :cond_41

    .line 1636
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "notifyAuthFailure":Z
    .local v1, "account":Landroid/accounts/Account;
    .local v2, "authTokenType":Ljava/lang/String;
    .local v3, "notifyAuthFailure":Z
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 1637
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1638
    .local p1, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_3a

    .line 1643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blockingGetAuthToken: null was returned from getResult() for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", authTokenType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AccountManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 p2, 0x0

    return-object p2

    .line 1647
    :cond_3a
    const-string p2, "authtoken"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    return-object p2

    .line 1635
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "authTokenType":Ljava/lang/String;
    .end local v3    # "notifyAuthFailure":Z
    .local p1, "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "notifyAuthFailure":Z
    :cond_41
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v2    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1634
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "authTokenType":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    :cond_4b
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v1    # "account":Landroid/accounts/Account;
    .restart local v2    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist clearPassword(Landroid/accounts/Account;)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1542
    if-eqz p1, :cond_f

    .line 1544
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->clearPassword(Landroid/accounts/Account;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 1547
    nop

    .line 1548
    return-void

    .line 1545
    :catch_9
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1542
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 14
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2124
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 2125
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 2124
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "options":Landroid/os/Bundle;
    .end local p3    # "activity":Landroid/app/Activity;
    .end local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p5    # "handler":Landroid/os/Handler;
    .local v2, "account":Landroid/accounts/Account;
    .local v3, "options":Landroid/os/Bundle;
    .local v4, "activity":Landroid/app/Activity;
    .local v5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 16
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2139
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_17

    .line 2140
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2141
    .local v8, "userId":I
    new-instance v0, Landroid/accounts/AccountManager$14;

    move-object v7, p3

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v2, p3

    move-object v4, p4

    move-object v3, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "options":Landroid/os/Bundle;
    .end local p3    # "activity":Landroid/app/Activity;
    .end local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p5    # "handler":Landroid/os/Handler;
    .local v2, "activity":Landroid/app/Activity;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "account":Landroid/accounts/Account;
    .local v6, "options":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$14;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;I)V

    .line 2147
    invoke-virtual {v0}, Landroid/accounts/AccountManager$14;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 2141
    return-object p1

    .line 2139
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v8    # "userId":I
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "options":Landroid/os/Bundle;
    .restart local p3    # "activity":Landroid/app/Activity;
    .restart local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p5    # "handler":Landroid/os/Handler;
    :cond_17
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "options":Landroid/os/Bundle;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "options":Landroid/os/Bundle;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "fromUser"    # Landroid/os/UserHandle;
    .param p3, "toUser"    # Landroid/os/UserHandle;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2037
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_23

    .line 2038
    if-eqz p3, :cond_16

    if-eqz p2, :cond_16

    .line 2042
    new-instance v0, Landroid/accounts/AccountManager$13;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "fromUser":Landroid/os/UserHandle;
    .end local p3    # "toUser":Landroid/os/UserHandle;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v4, "account":Landroid/accounts/Account;
    .local v5, "fromUser":Landroid/os/UserHandle;
    .local v6, "toUser":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$13;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 2055
    invoke-virtual {v0}, Landroid/accounts/AccountManager$13;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 2042
    return-object p1

    .line 2038
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "fromUser":Landroid/os/UserHandle;
    .end local v6    # "toUser":Landroid/os/UserHandle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "fromUser":Landroid/os/UserHandle;
    .restart local p3    # "toUser":Landroid/os/UserHandle;
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    :cond_16
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v2, p4

    move-object v3, p5

    .line 2039
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "fromUser":Landroid/os/UserHandle;
    .end local p3    # "toUser":Landroid/os/UserHandle;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v2    # "handler":Landroid/os/Handler;
    .restart local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v5    # "fromUser":Landroid/os/UserHandle;
    .restart local v6    # "toUser":Landroid/os/UserHandle;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromUser and toUser cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2037
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "fromUser":Landroid/os/UserHandle;
    .end local v6    # "toUser":Landroid/os/UserHandle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "fromUser":Landroid/os/UserHandle;
    .restart local p3    # "toUser":Landroid/os/UserHandle;
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    :cond_23
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "fromUser":Landroid/os/UserHandle;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v5    # "fromUser":Landroid/os/UserHandle;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3452
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3454
    :catch_7
    move-exception v0

    .line 3455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disableLocalAccountCaches()V
    .registers 2

    .line 3473
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 3474
    return-void
.end method

.method public blacklist disableLocalUserInfoCaches()V
    .registers 2

    .line 3490
    iget-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 3491
    return-void
.end method

.method public whitelist editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2257
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_12

    .line 2258
    new-instance v0, Landroid/accounts/AccountManager$16;

    move-object v6, p2

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "activity":Landroid/app/Activity;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "accountType":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$16;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Landroid/app/Activity;)V

    .line 2263
    invoke-virtual {v0}, Landroid/accounts/AccountManager$16;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 2258
    return-object p1

    .line 2257
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5    # "accountType":Ljava/lang/String;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_12
    move-object v5, p1

    move-object v2, p2

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "activity":Landroid/app/Activity;
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v5    # "accountType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist finishSession(Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3327
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 3330
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 3327
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "sessionBundle":Landroid/os/Bundle;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "sessionBundle":Landroid/os/Bundle;
    .local v3, "activity":Landroid/app/Activity;
    .local v5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 16
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/os/UserHandle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3347
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_24

    .line 3352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3353
    .local v8, "appInfo":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    new-instance v1, Landroid/accounts/AccountManager$23;

    move-object v7, p2

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v9, p3

    move-object v5, p4

    move-object v4, p5

    .end local p1    # "sessionBundle":Landroid/os/Bundle;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "userHandle":Landroid/os/UserHandle;
    .end local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p5    # "handler":Landroid/os/Handler;
    .local v3, "activity":Landroid/app/Activity;
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v6, "sessionBundle":Landroid/os/Bundle;
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManager$23;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3365
    invoke-virtual {v1}, Landroid/accounts/AccountManager$23;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 3355
    return-object p1

    .line 3348
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v6    # "sessionBundle":Landroid/os/Bundle;
    .end local v8    # "appInfo":Landroid/os/Bundle;
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    .restart local p1    # "sessionBundle":Landroid/os/Bundle;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "userHandle":Landroid/os/UserHandle;
    .restart local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p5    # "handler":Landroid/os/Handler;
    :cond_24
    move-object v6, p1

    move-object v3, p2

    .end local p1    # "sessionBundle":Landroid/os/Bundle;
    .end local p2    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v6    # "sessionBundle":Landroid/os/Bundle;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sessionBundle is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1175
    if-eqz p1, :cond_f

    .line 1178
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1179
    :catch_9
    move-exception v0

    .line 1180
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1176
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAccounts()[Landroid/accounts/Account;
    .registers 2

    .line 695
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1110
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 1111
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1112
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    return-object v0

    .line 1113
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    :catch_7
    move-exception v0

    .line 1114
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 4
    .param p1, "userId"    # I

    .line 711
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    .line 712
    .local v0, "userAndPackage":Landroid/content/pm/UserPackage;
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v1, v0}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    return-object v1
.end method

.method public whitelist getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 813
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 973
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    if-eqz p1, :cond_11

    .line 974
    new-instance v0, Landroid/accounts/AccountManager$5;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "features":[Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    .local v4, "type":Ljava/lang/String;
    .local v5, "features":[Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$5;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0}, Landroid/accounts/AccountManager$5;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 974
    return-object p1

    .line 973
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "features":[Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "features":[Ljava/lang/String;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_11
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "features":[Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "features":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "type is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 821
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 822
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-interface {v0, p1, v1, v2}, Landroid/accounts/IAccountManager;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 823
    :catch_11
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 749
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-interface {v0, p1, p2, v1}, Landroid/accounts/IAccountManager;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 750
    :catch_d
    move-exception v0

    .line 751
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/accounts/IAccountManager;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 727
    :catch_d
    move-exception v0

    .line 728
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 16
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1709
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_34

    .line 1710
    if-eqz p2, :cond_2a

    .line 1711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 1712
    .local v8, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_f

    .line 1713
    invoke-virtual {v8, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1715
    :cond_f
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    new-instance v1, Landroid/accounts/AccountManager$9;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v3, p4

    move-object v5, p5

    move-object v4, p6

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p4    # "activity":Landroid/app/Activity;
    .end local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p6    # "handler":Landroid/os/Handler;
    .local v3, "activity":Landroid/app/Activity;
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v6, "account":Landroid/accounts/Account;
    .local v7, "authTokenType":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Landroid/accounts/AccountManager$9;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1723
    invoke-virtual {v1}, Landroid/accounts/AccountManager$9;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 1716
    return-object p1

    .line 1710
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "authTokenType":Ljava/lang/String;
    .end local v8    # "optionsIn":Landroid/os/Bundle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p4    # "activity":Landroid/app/Activity;
    .restart local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p6    # "handler":Landroid/os/Handler;
    :cond_2a
    move-object v6, p1

    move-object v7, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1709
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "authTokenType":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    :cond_34
    move-object v6, p1

    move-object v7, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v7    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 17
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1880
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_34

    .line 1881
    if-eqz p2, :cond_2c

    .line 1882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 1883
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_f

    .line 1884
    invoke-virtual {v9, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1886
    :cond_f
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    new-instance v1, Landroid/accounts/AccountManager$10;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p4

    move-object v5, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManager$10;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 1893
    invoke-virtual {v1}, Landroid/accounts/AccountManager$10;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 1887
    return-object v0

    .line 1881
    .end local v9    # "optionsIn":Landroid/os/Bundle;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1880
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 13
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1799
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "notifyAuthFailure":Z
    .end local p4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p5    # "handler":Landroid/os/Handler;
    .local v1, "account":Landroid/accounts/Account;
    .local v2, "authTokenType":Ljava/lang/String;
    .local v4, "notifyAuthFailure":Z
    .local v5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 19
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2825
    .local p7, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_21

    .line 2826
    if-eqz p2, :cond_19

    .line 2827
    new-instance v0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;-><init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    .line 2830
    .local v0, "task":Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    invoke-virtual {v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->start()Landroid/accounts/AccountManagerFuture;

    .line 2831
    return-object v0

    .line 2826
    .end local v0    # "task":Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2825
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 11
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 859
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    if-eqz p1, :cond_1d

    .line 860
    if-eqz p2, :cond_13

    .line 861
    new-instance v0, Landroid/accounts/AccountManager$3;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .local v4, "accountType":Ljava/lang/String;
    .local v5, "authTokenType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$3;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Landroid/accounts/AccountManager$3;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 861
    return-object p1

    .line 860
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "authTokenType":Ljava/lang/String;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_13
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 859
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "authTokenType":Ljava/lang/String;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    :cond_1d
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 4
    .param p1, "userId"    # I

    .line 659
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 660
    :catch_7
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1081
    if-eqz p1, :cond_b

    .line 1084
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 1085
    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 1086
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-object v0

    .line 1087
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_9
    move-exception v0

    goto :goto_13

    .line 1082
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "account":Landroid/accounts/Account;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_9

    .line 1088
    .local v0, "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "account":Landroid/accounts/Account;
    :goto_13
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 592
    if-eqz p1, :cond_f

    .line 594
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 595
    :catch_9
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 592
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1270
    if-eqz p1, :cond_f

    .line 1272
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 1273
    :catch_9
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/accounts/AccountManager$AccountKeyData;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountManager$AccountKeyData;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3428
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3429
    :catch_7
    move-exception v0

    .line 3430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 905
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "features":[Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "account":Landroid/accounts/Account;
    .local v3, "features":[Ljava/lang/String;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManager;->hasFeaturesAsUser(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;I)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 1452
    if-eqz p1, :cond_12

    .line 1454
    if-eqz p2, :cond_10

    .line 1455
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    .line 1457
    :catch_a
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    nop

    .line 1460
    return-void

    .line 1452
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCredentialsUpdateSuggested(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "statusToken"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3388
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_22

    .line 3392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3396
    new-instance v1, Landroid/accounts/AccountManager$24;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "statusToken":Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v5, "account":Landroid/accounts/Account;
    .local v6, "statusToken":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManager$24;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3411
    invoke-virtual {v1}, Landroid/accounts/AccountManager$24;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 3396
    return-object p1

    .line 3393
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "statusToken":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "statusToken":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_17
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "statusToken":Ljava/lang/String;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "statusToken":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "status token is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3389
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "statusToken":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "statusToken":Ljava/lang/String;
    :cond_22
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "statusToken":Ljava/lang/String;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "statusToken":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist notifyAccountAuthenticated(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1200
    if-eqz p1, :cond_f

    .line 1203
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1204
    :catch_9
    move-exception v0

    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1201
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .line 1484
    if-eqz p1, :cond_19

    .line 1485
    if-eqz p2, :cond_11

    .line 1487
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 1488
    :catch_b
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1485
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1306
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1356
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v2, "account":Landroid/accounts/Account;
    .local v3, "activity":Landroid/app/Activity;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1370
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1e

    .line 1371
    if-eqz p4, :cond_13

    .line 1372
    new-instance v0, Landroid/accounts/AccountManager$7;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "userHandle":Landroid/os/UserHandle;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .local v4, "account":Landroid/accounts/Account;
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$7;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;)V

    .line 1384
    invoke-virtual {v0}, Landroid/accounts/AccountManager$7;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 1372
    return-object p1

    .line 1371
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "userHandle":Landroid/os/UserHandle;
    :cond_13
    move-object v4, p1

    move-object v3, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v4    # "account":Landroid/accounts/Account;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "userHandle is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1370
    .end local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .end local v4    # "account":Landroid/accounts/Account;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    :cond_1e
    move-object v4, p1

    move-object v3, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    .restart local v4    # "account":Landroid/accounts/Account;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1394
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_20

    .line 1396
    if-eqz p5, :cond_15

    .line 1398
    new-instance v0, Landroid/accounts/AccountManager$8;

    move-object v6, p2

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    move-object v7, p5

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "userHandle":Landroid/os/UserHandle;
    .local v2, "activity":Landroid/app/Activity;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "account":Landroid/accounts/Account;
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManager$8;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/app/Activity;Landroid/os/UserHandle;)V

    .line 1404
    invoke-virtual {v0}, Landroid/accounts/AccountManager$8;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 1398
    return-object p1

    .line 1397
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "userHandle":Landroid/os/UserHandle;
    :cond_15
    move-object v5, p1

    move-object v2, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "activity":Landroid/app/Activity;
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v5    # "account":Landroid/accounts/Account;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "userHandle is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1395
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v5    # "account":Landroid/accounts/Account;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_20
    move-object v5, p1

    move-object v2, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "activity":Landroid/app/Activity;
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v5    # "account":Landroid/accounts/Account;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1427
    if-eqz p1, :cond_f

    .line 1429
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1430
    :catch_9
    move-exception v0

    .line 1431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;

    .line 3074
    if-eqz p1, :cond_5e

    .line 3075
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3076
    :try_start_5
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3077
    const-string v1, "AccountManager"

    const-string v2, "Listener was not previously added"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    monitor-exit v0

    return-void

    .line 3080
    :cond_16
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3082
    .local v1, "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    .line 3083
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "accountsArray":[Ljava/lang/String;
    goto :goto_2e

    .line 3085
    .end local v2    # "accountsArray":[Ljava/lang/String;
    :cond_2d
    const/4 v2, 0x0

    .line 3087
    .restart local v2    # "accountsArray":[Ljava/lang/String;
    :goto_2e
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3089
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3090
    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_5b

    .line 3093
    :cond_47
    :try_start_47
    iget-object v3, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/accounts/IAccountManager;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_55
    .catchall {:try_start_47 .. :try_end_52} :catchall_5b

    .line 3096
    nop

    .line 3097
    .end local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "accountsArray":[Ljava/lang/String;
    :try_start_53
    monitor-exit v0

    .line 3098
    return-void

    .line 3094
    .restart local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "accountsArray":[Ljava/lang/String;
    :catch_55
    move-exception v3

    .line 3095
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    throw v4

    .line 3097
    .end local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "accountsArray":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v1

    .line 3074
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1238
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    if-eqz p1, :cond_22

    .line 1239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1242
    new-instance v1, Landroid/accounts/AccountManager$6;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    .end local p4    # "handler":Landroid/os/Handler;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    .local v5, "account":Landroid/accounts/Account;
    .local v6, "newName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManager$6;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v1}, Landroid/accounts/AccountManager$6;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object p1

    .line 1242
    return-object p1

    .line 1240
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "newName":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "newName":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_17
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "newName":Ljava/lang/String;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "newName":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "newName is empty or null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1238
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "newName":Ljava/lang/String;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "newName":Ljava/lang/String;
    :cond_22
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "newName":Ljava/lang/String;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "newName":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "visibility"    # I

    .line 1145
    if-eqz p1, :cond_f

    .line 1148
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1149
    :catch_9
    move-exception v0

    .line 1150
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1146
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 1598
    if-eqz p1, :cond_19

    .line 1599
    if-eqz p2, :cond_11

    .line 1601
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 1604
    nop

    .line 1605
    return-void

    .line 1602
    :catch_b
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1598
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 1514
    if-eqz p1, :cond_f

    .line 1516
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 1519
    nop

    .line 1520
    return-void

    .line 1517
    :catch_9
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1514
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1569
    if-eqz p1, :cond_1a

    .line 1570
    if-eqz p2, :cond_11

    .line 1572
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 1575
    nop

    .line 1576
    return-void

    .line 1573
    :catch_b
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1569
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o someUserHasAccount(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2276
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2277
    :catch_7
    move-exception v0

    .line 2278
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAddAccountSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 20
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3169
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p4

    if-eqz p1, :cond_30

    .line 3170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v11, v1

    .line 3171
    .local v11, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_f

    .line 3172
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3174
    :cond_f
    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    new-instance v2, Landroid/accounts/AccountManager$21;

    move-object/from16 v10, p5

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    invoke-direct/range {v2 .. v11}, Landroid/accounts/AccountManager$21;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3187
    invoke-virtual {v2}, Landroid/accounts/AccountManager$21;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 3176
    return-object v1

    .line 3169
    .end local v11    # "optionsIn":Landroid/os/Bundle;
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startUpdateCredentialsSession(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 17
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3248
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_2a

    .line 3254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 3255
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz p3, :cond_d

    .line 3256
    invoke-virtual {v9, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3258
    :cond_d
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    new-instance v1, Landroid/accounts/AccountManager$22;

    move-object v8, p4

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v3, p4

    move-object v5, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManager$22;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3270
    invoke-virtual {v1}, Landroid/accounts/AccountManager$22;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 3260
    return-object v0

    .line 3249
    .end local v9    # "optionsIn":Landroid/os/Bundle;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 844
    nop

    .line 845
    return-void

    .line 842
    :catch_7
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 16
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
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2203
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_14

    .line 2204
    new-instance v0, Landroid/accounts/AccountManager$15;

    move-object v7, p4

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object v2, p4

    move-object v4, p5

    move-object v3, p6

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "options":Landroid/os/Bundle;
    .end local p4    # "activity":Landroid/app/Activity;
    .end local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local p6    # "handler":Landroid/os/Handler;
    .local v2, "activity":Landroid/app/Activity;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local v5, "account":Landroid/accounts/Account;
    .local v6, "authTokenType":Ljava/lang/String;
    .local v8, "options":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$15;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2210
    invoke-virtual {v0}, Landroid/accounts/AccountManager$15;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 2204
    return-object p1

    .line 2203
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5    # "account":Landroid/accounts/Account;
    .end local v6    # "authTokenType":Ljava/lang/String;
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "options":Landroid/os/Bundle;
    .restart local p4    # "activity":Landroid/app/Activity;
    .restart local p5    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local p6    # "handler":Landroid/os/Handler;
    :cond_14
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .restart local v5    # "account":Landroid/accounts/Account;
    .restart local v6    # "authTokenType":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

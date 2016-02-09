.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;,
        Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserStarted(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 169
    new-array v0, v4, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "type"

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "count(type)"

    #@d
    aput-object v1, v0, v3

    #@f
    .line 168
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@11
    .line 172
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1b
    .line 173
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1d
    const/high16 v1, 0x4000000

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    .line 187
    new-array v0, v4, [Ljava/lang/String;

    #@24
    const-string/jumbo v1, "type"

    #@27
    aput-object v1, v0, v2

    #@29
    .line 188
    const-string/jumbo v1, "authtoken"

    #@2c
    aput-object v1, v0, v3

    #@2e
    .line 187
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@30
    .line 192
    new-array v0, v4, [Ljava/lang/String;

    #@32
    const-string/jumbo v1, "key"

    #@35
    aput-object v1, v0, v2

    #@37
    const-string/jumbo v1, "value"

    #@3a
    aput-object v1, v0, v3

    #@3c
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    #@3e
    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@43
    .line 247
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@45
    .line 249
    new-array v0, v2, [Landroid/accounts/Account;

    #@47
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@49
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/accounts/AccountAuthenticatorCache;

    #@6
    invoke-direct {v1, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    #@9
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V

    #@c
    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "authenticatorCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 265
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    #@4
    .line 194
    new-instance v0, Ljava/util/LinkedHashMap;

    #@6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@b
    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 245
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@1a
    .line 267
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@1c
    .line 268
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1e
    .line 270
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@20
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@2d
    .line 272
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2f
    .line 273
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@31
    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    #@34
    .line 275
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@36
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@39
    .line 277
    new-instance v6, Landroid/content/IntentFilter;

    #@3b
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@3e
    .line 278
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@41
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@44
    .line 279
    const-string/jumbo v0, "package"

    #@47
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4a
    .line 280
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4c
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    #@4e
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@51
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@54
    .line 306
    new-instance v3, Landroid/content/IntentFilter;

    #@56
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@59
    .line 307
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@5c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5f
    .line 308
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    #@62
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 309
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@67
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    #@69
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@6c
    .line 319
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@6e
    move-object v5, v4

    #@6f
    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@72
    .line 266
    return-void
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZI)Z
    .locals 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "restricted"    # Z
    .param p6, "callingUid"    # I

    #@0
    .prologue
    .line 904
    if-nez p2, :cond_0

    #@2
    .line 905
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 907
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@7
    move-result-object v20

    #@8
    monitor-enter v20

    #@9
    .line 908
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@10
    move-result-object v3

    #@11
    .line 909
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 912
    :try_start_1
    const-string/jumbo v2, "select count(*) from accounts WHERE name=? AND type=?"

    #@17
    .line 914
    const/4 v8, 0x2

    #@18
    new-array v8, v8, [Ljava/lang/String;

    #@1a
    move-object/from16 v0, p2

    #@1c
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1e
    const/4 v10, 0x0

    #@1f
    aput-object v9, v8, v10

    #@21
    move-object/from16 v0, p2

    #@23
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@25
    const/4 v10, 0x1

    #@26
    aput-object v9, v8, v10

    #@28
    .line 911
    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@2b
    move-result-wide v18

    #@2c
    .line 915
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    #@2e
    cmp-long v2, v18, v8

    #@30
    if-lez v2, :cond_1

    #@32
    .line 916
    const-string/jumbo v2, "AccountManagerService"

    #@35
    new-instance v8, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    .line 917
    const-string/jumbo v9, ", skipping since the account already exists"

    #@4a
    .line 916
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 948
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@58
    .line 918
    const/4 v2, 0x0

    #@59
    monitor-exit v20

    #@5a
    return v2

    #@5b
    .line 920
    :cond_1
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    #@5d
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@60
    .line 921
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    #@63
    move-object/from16 v0, p2

    #@65
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@67
    move-object/from16 v0, v17

    #@69
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 922
    const-string/jumbo v2, "type"

    #@6f
    move-object/from16 v0, p2

    #@71
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@73
    move-object/from16 v0, v17

    #@75
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 923
    const-string/jumbo v2, "password"

    #@7b
    move-object/from16 v0, v17

    #@7d
    move-object/from16 v1, p3

    #@7f
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    .line 924
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    #@85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@88
    move-result-wide v8

    #@89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8c
    move-result-object v8

    #@8d
    move-object/from16 v0, v17

    #@8f
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@92
    .line 925
    const-string/jumbo v2, "accounts"

    #@95
    const-string/jumbo v8, "name"

    #@98
    move-object/from16 v0, v17

    #@9a
    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@9d
    move-result-wide v4

    #@9e
    .line 926
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    #@a0
    cmp-long v2, v4, v8

    #@a2
    if-gez v2, :cond_2

    #@a4
    .line 927
    const-string/jumbo v2, "AccountManagerService"

    #@a7
    new-instance v8, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@af
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    move-object/from16 v0, p2

    #@b5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    .line 928
    const-string/jumbo v9, ", skipping the DB insert failed"

    #@bc
    .line 927
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v8

    #@c4
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    .line 948
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ca
    .line 929
    const/4 v2, 0x0

    #@cb
    monitor-exit v20

    #@cc
    return v2

    #@cd
    .line 931
    :cond_2
    if-eqz p4, :cond_4

    #@cf
    .line 932
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@d2
    move-result-object v2

    #@d3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d6
    move-result-object v16

    #@d7
    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@da
    move-result v2

    #@db
    if-eqz v2, :cond_4

    #@dd
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e0
    move-result-object v6

    #@e1
    check-cast v6, Ljava/lang/String;

    #@e3
    .line 933
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    #@e5
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e8
    move-result-object v7

    #@e9
    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    #@eb
    .line 934
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    #@ee
    move-result-wide v8

    #@ef
    const-wide/16 v10, 0x0

    #@f1
    cmp-long v2, v8, v10

    #@f3
    if-gez v2, :cond_3

    #@f5
    .line 935
    const-string/jumbo v2, "AccountManagerService"

    #@f8
    new-instance v8, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v8

    #@104
    move-object/from16 v0, p2

    #@106
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    .line 936
    const-string/jumbo v9, ", skipping since insertExtra failed for key "

    #@10d
    .line 935
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v8

    #@111
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v8

    #@115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v8

    #@119
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@11c
    .line 948
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@11f
    .line 937
    const/4 v2, 0x0

    #@120
    monitor-exit v20

    #@121
    return v2

    #@122
    .line 941
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "key$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@125
    .line 943
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    #@128
    move-result-object v10

    #@129
    const-string/jumbo v11, "accounts"

    #@12c
    move-object/from16 v8, p0

    #@12e
    move-object v9, v3

    #@12f
    move-wide v12, v4

    #@130
    move-object/from16 v14, p1

    #@132
    move/from16 v15, p6

    #@134
    invoke-direct/range {v8 .. v15}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@137
    .line 946
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@13a
    .line 948
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@13d
    .line 950
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@140
    move-result v2

    #@141
    move-object/from16 v0, p0

    #@143
    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@146
    monitor-exit v20

    #@147
    .line 952
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@14a
    move-result v2

    #@14b
    if-nez v2, :cond_5

    #@14d
    .line 953
    move-object/from16 v0, p0

    #@14f
    move-object/from16 v1, p2

    #@151
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLimitedUsers(Landroid/accounts/Account;)V

    #@154
    .line 955
    :cond_5
    const/4 v2, 0x1

    #@155
    return v2

    #@156
    .line 947
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_0
    move-exception v2

    #@157
    .line 948
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@15a
    .line 947
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@15b
    .line 907
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    #@15c
    monitor-exit v20

    #@15d
    throw v2
.end method

.method private addAccountToLimitedUsers(Landroid/accounts/Account;)V
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 964
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 965
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/pm/UserInfo;

    #@18
    .line 966
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 967
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@20
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@23
    .line 969
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@26
    move-result-object v4

    #@27
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 970
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@32
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@34
    .line 971
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    #@36
    const/4 v7, 0x4

    #@37
    const/4 v8, 0x0

    #@38
    .line 970
    invoke-virtual {v5, v7, v8, v6, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 974
    :catch_0
    move-exception v0

    #@41
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0

    #@42
    .line 963
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2014
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    #@4
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@7
    move-result-object v0

    #@8
    .line 2015
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@a
    .line 2016
    const/16 v7, 0x40

    #@c
    .line 2015
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v2

    #@10
    .line 2017
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@12
    const/4 v6, 0x0

    #@13
    array-length v8, v7

    #@14
    :goto_0
    if-ge v6, v8, :cond_0

    #@16
    aget-object v3, v7, v6

    #@18
    .line 2018
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2017
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2023
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    #@23
    .line 2024
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountManagerService"

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "Could not find packageinfo for: "

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 2025
    const/4 v0, 0x0

    #@3e
    .line 2027
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@40
    :goto_2
    return-object v5

    #@41
    .line 2020
    :catch_1
    move-exception v4

    #@42
    .line 2021
    .local v4, "x":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "AccountManagerService"

    #@45
    const-string/jumbo v7, "SHA-256 should be available"

    #@48
    invoke-static {v6, v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 2022
    const/4 v0, 0x0

    #@4c
    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_1

    #@4d
    .line 2027
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "x":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    #@50
    move-result-object v5

    #@51
    goto :goto_2
.end method

.method private canUserModifyAccounts(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3892
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/os/UserHandle;

    #@6
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 3893
    const-string/jumbo v1, "no_modify_accounts"

    #@10
    .line 3892
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 3894
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 3896
    :cond_0
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 3900
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    .line 3901
    const-string/jumbo v5, "device_policy"

    #@7
    .line 3900
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@d
    .line 3902
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 3903
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@13
    .line 3904
    return v7

    #@14
    .line 3906
    :cond_0
    array-length v5, v2

    #@15
    move v3, v4

    #@16
    :goto_0
    if-ge v3, v5, :cond_2

    #@18
    aget-object v1, v2, v3

    #@1a
    .line 3907
    .local v1, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 3908
    return v4

    #@21
    .line 3906
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 3911
    .end local v1    # "forbiddenType":Ljava/lang/String;
    :cond_2
    return v7
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .locals 6
    .param p1, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 3703
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(I[Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 3705
    const-string/jumbo v2, "caller uid %s  lacks any of %s"

    #@d
    .line 3704
    const/4 v3, 0x2

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    .line 3706
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    .line 3707
    const-string/jumbo v4, ","

    #@1a
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    const/4 v5, 0x1

    #@1f
    aput-object v4, v3, v5

    #@21
    .line 3704
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 3708
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "AccountManagerService"

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "  "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 3709
    new-instance v2, Ljava/lang/SecurityException;

    #@41
    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 3701
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;I)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3881
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;II)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 3883
    const-string/jumbo v1, "caller uid %s cannot access %s accounts"

    #@9
    .line 3882
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    .line 3884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    .line 3885
    const/4 v3, 0x1

    #@14
    aput-object p2, v2, v3

    #@16
    .line 3882
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 3886
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AccountManagerService"

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "  "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 3887
    new-instance v1, Ljava/lang/SecurityException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 3880
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 3360
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "INSERT OR REPLACE INTO "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 3361
    const-string/jumbo v2, " VALUES (?,?,?,?,?,?)"

    #@17
    .line 3360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 3362
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@22
    move-result-object v1

    #@23
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    #@26
    .line 3359
    return-void
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 855
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v14

    #@4
    .line 857
    .local v14, "id":J
    :try_start_0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$4;

    #@6
    move-object/from16 v0, p3

    #@8
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a
    .line 858
    move-object/from16 v0, p3

    #@c
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@e
    .line 857
    const/4 v8, 0x0

    #@f
    .line 858
    const/4 v9, 0x0

    #@10
    .line 859
    const/4 v11, 0x0

    #@11
    move-object/from16 v3, p0

    #@13
    move-object/from16 v4, p0

    #@15
    move-object/from16 v5, p4

    #@17
    move-object/from16 v6, p1

    #@19
    move-object/from16 v12, p3

    #@1b
    move-object/from16 v13, p2

    #@1d
    .line 857
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/os/Bundle;)V

    #@20
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$4;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 898
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@26
    .line 854
    return-void

    #@27
    .line 897
    :catchall_0
    move-exception v2

    #@28
    .line 898
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2b
    .line 897
    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2033
    const-string/jumbo v2, "uid"

    #@3
    const/4 v3, -0x1

    #@4
    .line 2032
    move-object/from16 v0, p2

    #@6
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v15

    #@a
    .line 2035
    .local v15, "uid":I
    const-string/jumbo v2, "authTokenType"

    #@d
    .line 2034
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 2037
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@17
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 2038
    move-object/from16 v0, p1

    #@1c
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v3, v5

    #@21
    .line 2037
    const v4, 0x1040426

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    .line 2039
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    #@2a
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v10

    #@2e
    .line 2040
    .local v10, "index":I
    move-object v13, v14

    #@2f
    .line 2041
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@32
    .line 2042
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_0

    #@34
    .line 2043
    const/4 v2, 0x0

    #@35
    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    .line 2044
    add-int/lit8 v2, v10, 0x1

    #@3b
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    .line 2046
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    #@41
    move/from16 v0, p3

    #@43
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@46
    .line 2047
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@4b
    move-result-object v9

    #@4c
    .line 2048
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    #@4e
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@51
    .line 2049
    const v3, 0x108008a

    #@54
    .line 2048
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@57
    move-result-object v2

    #@58
    .line 2050
    const-wide/16 v4, 0x0

    #@5a
    .line 2048
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@5d
    move-result-object v2

    #@5e
    .line 2052
    const v3, 0x1060059

    #@61
    .line 2051
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    #@64
    move-result v3

    #@65
    .line 2048
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@70
    move-result-object v16

    #@71
    .line 2055
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@75
    const/4 v3, 0x0

    #@76
    .line 2056
    const/high16 v5, 0x10000000

    #@78
    const/4 v6, 0x0

    #@79
    move-object/from16 v4, p2

    #@7b
    .line 2055
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@7e
    move-result-object v2

    #@7f
    .line 2048
    move-object/from16 v0, v16

    #@81
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@88
    move-result-object v11

    #@89
    .line 2058
    .local v11, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, p1

    #@8d
    invoke-direct {v0, v1, v8, v15}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@94
    move-result v2

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-virtual {v0, v2, v11, v7}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@9a
    .line 2031
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 17
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 3637
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v12

    #@4
    .line 3639
    .local v12, "identityToken":J
    :try_start_0
    const-string/jumbo v4, "AccountManagerService"

    #@7
    const/4 v5, 0x2

    #@8
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 3640
    const-string/jumbo v4, "AccountManagerService"

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "doNotification: "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    move-object/from16 v0, p3

    #@1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    const-string/jumbo v6, " intent:"

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 3643
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3a
    move-result-object v4

    #@3b
    if-eqz v4, :cond_1

    #@3d
    .line 3644
    const-class v4, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@3f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 3645
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 3644
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    .line 3643
    if-eqz v4, :cond_1

    #@51
    .line 3646
    move-object/from16 v0, p0

    #@53
    move-object/from16 v1, p2

    #@55
    move-object/from16 v2, p4

    #@57
    move/from16 v3, p5

    #@59
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 3668
    :goto_0
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@5f
    .line 3636
    return-void

    #@60
    .line 3648
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@63
    move-result-object v14

    #@64
    .line 3649
    .local v14, "notificationId":Ljava/lang/Integer;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    move-object/from16 v0, p4

    #@6a
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@6d
    .line 3650
    new-instance v9, Landroid/os/UserHandle;

    #@6f
    move/from16 v0, p5

    #@71
    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@74
    .line 3651
    .local v9, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v9}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@79
    move-result-object v10

    #@7a
    .line 3653
    .local v10, "contextForUser":Landroid/content/Context;
    const v4, 0x10400e1

    #@7d
    invoke-virtual {v10, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@80
    move-result-object v4

    #@81
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@84
    move-result-object v15

    #@85
    .line 3654
    .local v15, "notificationTitleFormat":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    #@87
    invoke-direct {v4, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8a
    .line 3655
    const-wide/16 v6, 0x0

    #@8c
    .line 3654
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v4

    #@90
    .line 3656
    const v5, 0x108008a

    #@93
    .line 3654
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@96
    move-result-object v4

    #@97
    .line 3658
    const v5, 0x1060059

    #@9a
    .line 3657
    invoke-virtual {v10, v5}, Landroid/content/Context;->getColor(I)I

    #@9d
    move-result v5

    #@9e
    .line 3654
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a1
    move-result-object v4

    #@a2
    .line 3659
    const/4 v5, 0x1

    #@a3
    new-array v5, v5, [Ljava/lang/Object;

    #@a5
    move-object/from16 v0, p2

    #@a7
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a9
    const/4 v7, 0x0

    #@aa
    aput-object v6, v5, v7

    #@ac
    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@af
    move-result-object v5

    #@b0
    .line 3654
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@b3
    move-result-object v4

    #@b4
    move-object/from16 v0, p3

    #@b6
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@b9
    move-result-object v16

    #@ba
    .line 3662
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@be
    const/4 v5, 0x0

    #@bf
    const/high16 v7, 0x10000000

    #@c1
    .line 3663
    const/4 v8, 0x0

    #@c2
    move-object/from16 v6, p4

    #@c4
    .line 3661
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@c7
    move-result-object v4

    #@c8
    .line 3654
    move-object/from16 v0, v16

    #@ca
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@d1
    move-result-object v11

    #@d2
    .line 3665
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@d5
    move-result v4

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v4, v11, v9}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@db
    goto :goto_0

    #@dc
    .line 3667
    .end local v9    # "user":Landroid/os/UserHandle;
    .end local v10    # "contextForUser":Landroid/content/Context;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v14    # "notificationId":Ljava/lang/Integer;
    .end local v15    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@dd
    .line 3668
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@e0
    .line 3667
    throw v4
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    #@0
    .prologue
    .line 3578
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v19

    #@4
    monitor-enter v19

    #@5
    .line 3579
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v4

    #@d
    .line 3581
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_3

    #@f
    .line 3583
    const-string/jumbo v5, "accounts"

    #@12
    sget-object v6, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@14
    .line 3584
    const-string/jumbo v9, "type"

    #@17
    const/4 v7, 0x0

    #@18
    const/4 v8, 0x0

    #@19
    const/4 v10, 0x0

    #@1a
    const/4 v11, 0x0

    #@1b
    .line 3583
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-object v14

    #@1f
    .line 3586
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 3588
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const/4 v6, 0x0

    #@2b
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const-string/jumbo v6, ","

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const/4 v6, 0x1

    #@3b
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    move-object/from16 v0, p3

    #@49
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 3590
    :catchall_0
    move-exception v5

    #@4e
    .line 3591
    if-eqz v14, :cond_0

    #@50
    .line 3592
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@53
    .line 3590
    :cond_0
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@54
    .line 3578
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    #@55
    monitor-exit v19

    #@56
    throw v5

    #@57
    .line 3591
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    #@59
    .line 3592
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    :cond_2
    :goto_1
    monitor-exit v19

    #@5d
    .line 3577
    return-void

    #@5e
    .line 3597
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@61
    move-result v5

    #@62
    .line 3596
    const/4 v6, 0x0

    #@63
    .line 3597
    const/4 v7, 0x0

    #@64
    .line 3596
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-virtual {v0, v1, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@6b
    move-result-object v13

    #@6c
    .line 3598
    .local v13, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v6, "Accounts: "

    #@74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    array-length v6, v13

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    move-object/from16 v0, p3

    #@83
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 3599
    const/4 v5, 0x0

    #@87
    array-length v6, v13

    #@88
    :goto_2
    if-ge v5, v6, :cond_4

    #@8a
    aget-object v12, v13, v5

    #@8c
    .line 3600
    .local v12, "account":Landroid/accounts/Account;
    new-instance v7, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v8, "  "

    #@94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    move-object/from16 v0, p3

    #@a2
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5
    .line 3599
    add-int/lit8 v5, v5, 0x1

    #@a7
    goto :goto_2

    #@a8
    .line 3604
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@ab
    .line 3605
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    .line 3606
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;

    #@b2
    move-result-object v11

    #@b3
    .line 3605
    const/4 v6, 0x0

    #@b4
    .line 3606
    const/4 v7, 0x0

    #@b5
    const/4 v8, 0x0

    #@b6
    const/4 v9, 0x0

    #@b7
    const/4 v10, 0x0

    #@b8
    .line 3605
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@bb
    move-result-object v14

    #@bc
    .line 3607
    .restart local v14    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    #@bf
    move-object/from16 v0, p3

    #@c1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 3608
    const-string/jumbo v5, "Accounts History"

    #@c7
    move-object/from16 v0, p3

    #@c9
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@cc
    .line 3610
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@cf
    move-result v5

    #@d0
    if-eqz v5, :cond_5

    #@d2
    .line 3612
    new-instance v5, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const/4 v6, 0x0

    #@d8
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    const-string/jumbo v6, ","

    #@e3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    const/4 v6, 0x1

    #@e8
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@eb
    move-result-object v6

    #@ec
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    const-string/jumbo v6, ","

    #@f3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v5

    #@f7
    .line 3613
    const/4 v6, 0x2

    #@f8
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v5

    #@100
    .line 3613
    const-string/jumbo v6, ","

    #@103
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    .line 3613
    const/4 v6, 0x3

    #@108
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@10b
    move-result-object v6

    #@10c
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v5

    #@110
    .line 3613
    const-string/jumbo v6, ","

    #@113
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    .line 3614
    const/4 v6, 0x4

    #@118
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v5

    #@120
    .line 3614
    const-string/jumbo v6, ","

    #@123
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v5

    #@127
    .line 3614
    const/4 v6, 0x5

    #@128
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@12b
    move-result-object v6

    #@12c
    .line 3612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v5

    #@130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@139
    goto :goto_3

    #@13a
    .line 3616
    :catchall_2
    move-exception v5

    #@13b
    .line 3617
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@13e
    .line 3616
    throw v5

    #@13f
    .line 3617
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@142
    .line 3620
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@145
    .line 3621
    move-object/from16 v0, p0

    #@147
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@149
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@14a
    .line 3622
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14d
    move-result-wide v16

    #@14e
    .line 3623
    .local v16, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v7, "Active Sessions: "

    #@156
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v5

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@15e
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    #@161
    move-result v7

    #@162
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@165
    move-result-object v5

    #@166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v5

    #@16a
    move-object/from16 v0, p3

    #@16c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16f
    .line 3624
    move-object/from16 v0, p0

    #@171
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@173
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@176
    move-result-object v5

    #@177
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17a
    move-result-object v18

    #@17b
    .local v18, "session$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@17e
    move-result v5

    #@17f
    if-eqz v5, :cond_6

    #@181
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@184
    move-result-object v15

    #@185
    check-cast v15, Lcom/android/server/accounts/AccountManagerService$Session;

    #@187
    .line 3625
    .local v15, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v5, Ljava/lang/StringBuilder;

    #@189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v7, "  "

    #@18f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v5

    #@193
    invoke-virtual/range {v15 .. v17}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@196
    move-result-object v7

    #@197
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v5

    #@19f
    move-object/from16 v0, p3

    #@1a1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@1a4
    goto :goto_4

    #@1a5
    .line 3621
    .end local v15    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    .end local v16    # "now":J
    .end local v18    # "session$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    #@1a6
    :try_start_8
    monitor-exit v6

    #@1a7
    throw v5

    #@1a8
    .restart local v16    # "now":J
    .restart local v18    # "session$iterator":Ljava/util/Iterator;
    :cond_6
    monitor-exit v6

    #@1a9
    .line 3629
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@1ac
    .line 3630
    move-object/from16 v0, p0

    #@1ae
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@1b0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1b3
    move-result v6

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    move-object/from16 v1, p3

    #@1b8
    move-object/from16 v2, p4

    #@1ba
    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1bd
    goto/16 :goto_1
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4041
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v15

    #@4
    if-eqz v15, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    .line 4043
    :cond_0
    return-object p2

    #@9
    .line 4041
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@c
    move-result v15

    #@d
    if-ltz v15, :cond_0

    #@f
    .line 4042
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v15

    #@13
    move/from16 v0, p3

    #@15
    if-eq v0, v15, :cond_0

    #@17
    .line 4045
    move-object/from16 v0, p0

    #@19
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1e
    move-result v16

    #@1f
    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@22
    move-result-object v13

    #@23
    .line 4046
    .local v13, "user":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_e

    #@25
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@28
    move-result v15

    #@29
    if-eqz v15, :cond_e

    #@2b
    .line 4047
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2f
    move/from16 v0, p3

    #@31
    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    .line 4051
    .local v8, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@37
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v15

    #@3d
    .line 4052
    const v16, 0x1040048

    #@40
    .line 4051
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    .line 4053
    .local v14, "whiteList":Ljava/lang/String;
    const/4 v15, 0x0

    #@45
    array-length v0, v8

    #@46
    move/from16 v16, v0

    #@48
    :goto_0
    move/from16 v0, v16

    #@4a
    if-ge v15, v0, :cond_3

    #@4c
    aget-object v7, v8, v15

    #@4e
    .line 4054
    .local v7, "packageName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@50
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v18, ";"

    #@56
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v17

    #@5a
    move-object/from16 v0, v17

    #@5c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v17

    #@60
    const-string/jumbo v18, ";"

    #@63
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v17

    #@67
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v17

    #@6b
    move-object/from16 v0, v17

    #@6d
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@70
    move-result v17

    #@71
    if-eqz v17, :cond_2

    #@73
    .line 4055
    return-object p2

    #@74
    .line 4053
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@76
    goto :goto_0

    #@77
    .line 4058
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    #@79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7c
    .line 4059
    .local v3, "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@7f
    move-result v15

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@85
    move-result-object v12

    #@86
    .line 4060
    .local v12, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v12, :cond_4

    #@88
    array-length v15, v12

    #@89
    if-nez v15, :cond_5

    #@8b
    :cond_4
    return-object p2

    #@8c
    .line 4061
    :cond_5
    const-string/jumbo v10, ""

    #@8f
    .line 4065
    .local v10, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_8

    #@91
    .line 4066
    :try_start_0
    move-object/from16 v0, p0

    #@93
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@95
    const/16 v16, 0x0

    #@97
    move-object/from16 v0, p4

    #@99
    move/from16 v1, v16

    #@9b
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@9e
    move-result-object v9

    #@9f
    .line 4067
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_6

    #@a1
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@a3
    if-eqz v15, :cond_6

    #@a5
    .line 4068
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 4082
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_1
    const/4 v15, 0x0

    #@a8
    move-object/from16 v0, p2

    #@aa
    array-length v0, v0

    #@ab
    move/from16 v17, v0

    #@ad
    move/from16 v16, v15

    #@af
    :goto_2
    move/from16 v0, v16

    #@b1
    move/from16 v1, v17

    #@b3
    if-ge v0, v1, :cond_d

    #@b5
    aget-object v2, p2, v16

    #@b7
    .line 4083
    .local v2, "account":Landroid/accounts/Account;
    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b9
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_a

    #@bf
    .line 4084
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 4082
    :cond_7
    :goto_3
    add-int/lit8 v15, v16, 0x1

    #@c4
    move/from16 v16, v15

    #@c6
    goto :goto_2

    #@c7
    .line 4072
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_8
    const/4 v15, 0x0

    #@c8
    :try_start_1
    array-length v0, v8

    #@c9
    move/from16 v16, v0

    #@cb
    :goto_4
    move/from16 v0, v16

    #@cd
    if-ge v15, v0, :cond_6

    #@cf
    aget-object v7, v8, v15

    #@d1
    .line 4073
    .restart local v7    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@d5
    move-object/from16 v17, v0

    #@d7
    const/16 v18, 0x0

    #@d9
    move-object/from16 v0, v17

    #@db
    move/from16 v1, v18

    #@dd
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@e0
    move-result-object v9

    #@e1
    .line 4074
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_9

    #@e3
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@e5
    move-object/from16 v17, v0

    #@e7
    if-eqz v17, :cond_9

    #@e9
    .line 4075
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    goto :goto_1

    #@ec
    .line 4072
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@ee
    goto :goto_4

    #@ef
    .line 4086
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_a
    const/4 v5, 0x0

    #@f0
    .line 4087
    .local v5, "found":Z
    const/4 v15, 0x0

    #@f1
    array-length v0, v12

    #@f2
    move/from16 v18, v0

    #@f4
    :goto_5
    move/from16 v0, v18

    #@f6
    if-ge v15, v0, :cond_b

    #@f8
    aget-object v11, v12, v15

    #@fa
    .line 4088
    .local v11, "shared":Landroid/accounts/Account;
    invoke-virtual {v11, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v19

    #@fe
    if-eqz v19, :cond_c

    #@100
    .line 4089
    const/4 v5, 0x1

    #@101
    .line 4093
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_b
    if-nez v5, :cond_7

    #@103
    .line 4094
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@106
    goto :goto_3

    #@107
    .line 4087
    .restart local v11    # "shared":Landroid/accounts/Account;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    #@109
    goto :goto_5

    #@10a
    .line 4098
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v5    # "found":Z
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v15

    #@10e
    new-array v4, v15, [Landroid/accounts/Account;

    #@110
    .line 4099
    .local v4, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@113
    .line 4100
    return-object v4

    #@114
    .line 4102
    .end local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "filtered":[Landroid/accounts/Account;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "requiredAccountType":Ljava/lang/String;
    .end local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v14    # "whiteList":Ljava/lang/String;
    :cond_e
    return-object p2

    #@115
    .line 4080
    .restart local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v10    # "requiredAccountType":Ljava/lang/String;
    .restart local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .restart local v14    # "whiteList":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@116
    .local v6, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2825
    const-string/jumbo v1, "shared_accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 2826
    const-string/jumbo v3, "name=? AND type=?"

    #@10
    const/4 v0, 0x2

    #@11
    new-array v4, v0, [Ljava/lang/String;

    #@13
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@15
    aput-object v0, v4, v6

    #@17
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19
    aput-object v0, v4, v7

    #@1b
    move-object v0, p1

    #@1c
    move-object v6, v5

    #@1d
    move-object v7, v5

    #@1e
    .line 2825
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 2828
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 2829
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 2833
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 2829
    return-wide v0

    #@31
    .line 2831
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 2833
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 2831
    return-wide v0

    #@37
    .line 2832
    :catchall_0
    move-exception v0

    #@38
    .line 2833
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 2832
    throw v0
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2838
    const-string/jumbo v1, "accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 2839
    const-string/jumbo v3, "name=? AND type=?"

    #@10
    const/4 v0, 0x2

    #@11
    new-array v4, v0, [Ljava/lang/String;

    #@13
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@15
    aput-object v0, v4, v6

    #@17
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19
    aput-object v0, v4, v7

    #@1b
    move-object v0, p1

    #@1c
    move-object v6, v5

    #@1d
    move-object v7, v5

    #@1e
    .line 2838
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 2841
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 2842
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 2846
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 2842
    return-wide v0

    #@31
    .line 2844
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 2846
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 2844
    return-wide v0

    #@37
    .line 2845
    :catchall_0
    move-exception v0

    #@38
    .line 2846
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 2845
    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    #@0
    .prologue
    .line 2556
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v3

    #@4
    .line 2557
    .local v3, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    const/4 v6, 0x0

    #@5
    array-length v7, p1

    #@6
    :goto_0
    if-ge v6, v7, :cond_2

    #@8
    aget v5, p1, v6

    #@a
    .line 2558
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@d
    move-result-object v4

    #@e
    .line 2559
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v4, :cond_0

    #@10
    .line 2557
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2560
    :cond_0
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    monitor-enter v8

    #@18
    .line 2562
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v9

    #@1c
    .line 2561
    const/4 v10, 0x0

    #@1d
    .line 2562
    const/4 v11, 0x0

    #@1e
    .line 2561
    invoke-virtual {p0, v4, v10, v9, v11}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@21
    move-result-object v1

    #@22
    .line 2563
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    #@23
    .local v0, "a":I
    :goto_2
    array-length v9, v1

    #@24
    if-ge v0, v9, :cond_1

    #@26
    .line 2564
    new-instance v9, Landroid/accounts/AccountAndUser;

    #@28
    aget-object v10, v1, v0

    #@2a
    invoke-direct {v9, v10, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@2d
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 2563
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_2

    #@33
    :cond_1
    monitor-exit v8

    #@34
    goto :goto_1

    #@35
    .line 2560
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    #@36
    monitor-exit v8

    #@37
    throw v6

    #@38
    .line 2569
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v6

    #@3c
    new-array v2, v6, [Landroid/accounts/AccountAndUser;

    #@3e
    .line 2570
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, [Landroid/accounts/AccountAndUser;

    #@44
    return-object v6
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2585
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v5

    #@9
    if-eq p2, v5, :cond_0

    #@b
    .line 2586
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@e
    move-result v5

    #@f
    if-eq v1, v5, :cond_0

    #@11
    .line 2587
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@13
    .line 2588
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@16
    .line 2587
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 2590
    new-instance v5, Ljava/lang/SecurityException;

    #@1e
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "User "

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2d
    move-result v7

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    .line 2591
    const-string/jumbo v7, " trying to get account for "

    #@35
    .line 2590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@44
    throw v5

    #@45
    .line 2594
    :cond_0
    const-string/jumbo v5, "AccountManagerService"

    #@48
    const/4 v6, 0x2

    #@49
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 2595
    const-string/jumbo v5, "AccountManagerService"

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "getAccounts: accountType "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 2596
    const-string/jumbo v7, ", caller\'s uid "

    #@65
    .line 2595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 2596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6c
    move-result v7

    #@6d
    .line 2595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 2597
    const-string/jumbo v7, ", pid "

    #@74
    .line 2595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    .line 2597
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7b
    move-result v7

    #@7c
    .line 2595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 2601
    :cond_1
    const/4 v5, -0x1

    #@88
    if-eq p4, v5, :cond_2

    #@8a
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@8d
    move-result v5

    #@8e
    invoke-static {v1, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_2

    #@94
    .line 2602
    move v1, p4

    #@95
    .line 2605
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(II)Ljava/util/List;

    #@98
    move-result-object v4

    #@99
    .line 2606
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@9c
    move-result v5

    #@9d
    if-nez v5, :cond_5

    #@9f
    .line 2607
    if-eqz p1, :cond_3

    #@a1
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a4
    move-result v5

    #@a5
    if-eqz v5, :cond_5

    #@a7
    .line 2609
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@aa
    move-result v5

    #@ab
    if-eqz v5, :cond_4

    #@ad
    .line 2611
    new-instance v4, Ljava/util/ArrayList;

    #@af
    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b2
    .line 2612
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b5
    .line 2616
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@b8
    move-result-wide v2

    #@b9
    .line 2618
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@bc
    move-result-object v0

    #@bd
    .line 2619
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c0
    move-result-object v5

    #@c1
    .line 2625
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c4
    .line 2619
    return-object v5

    #@c5
    .line 2608
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_5
    new-array v5, v8, [Landroid/accounts/Account;

    #@c7
    return-object v5

    #@c8
    .line 2624
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v5

    #@c9
    .line 2625
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cc
    .line 2624
    throw v5
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    .locals 8
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    #@0
    .prologue
    .line 2634
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v7

    #@4
    monitor-enter v7

    #@5
    .line 2635
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 2636
    .local v3, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v5

    #@e
    .local v5, "visibleType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/lang/String;

    #@1a
    .line 2637
    .local v4, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1d
    move-result-object v0

    #@1e
    .line 2639
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@20
    .line 2640
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2634
    .end local v0    # "accountsForType":[Landroid/accounts/Account;
    .end local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "visibleType":Ljava/lang/String;
    .end local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@29
    monitor-exit v7

    #@2a
    throw v6

    #@2b
    .line 2643
    .restart local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v6

    #@2f
    new-array v2, v6, [Landroid/accounts/Account;

    #@31
    .line 2644
    .local v2, "result":[Landroid/accounts/Account;
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v6

    #@36
    if-ge v1, v6, :cond_2

    #@38
    .line 2645
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, Landroid/accounts/Account;

    #@3e
    aput-object v6, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 2644
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_1

    #@43
    :cond_2
    monitor-exit v7

    #@44
    .line 2647
    return-object v2
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 684
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2
    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    .line 686
    .local v2, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@9
    move-result v5

    #@a
    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    #@c
    .line 687
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    #@d
    .line 688
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "authenticator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@1d
    .line 690
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1f
    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    #@21
    aput-object v5, v4, v3

    #@23
    .line 691
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 693
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 4249
    :catch_0
    move-exception v0

    #@f
    .line 4251
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@11
    return-object v1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2084
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v3

    #@4
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v0

    #@8
    .line 2085
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@b
    move-result-object v4

    #@c
    monitor-enter v4

    #@d
    .line 2087
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    #@f
    .line 2088
    new-instance v3, Landroid/util/Pair;

    #@11
    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    .line 2087
    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1b
    .line 2089
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Integer;

    #@25
    .line 2090
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@27
    .line 2091
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    #@29
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@2c
    move-result v3

    #@2d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v1

    #@31
    .line 2092
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    :cond_0
    monitor-exit v4

    #@39
    .line 2095
    return-object v1

    #@3a
    .line 2085
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 3237
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@3
    move-result-object v2

    #@4
    .line 3238
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@6
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@9
    move-result-object v4

    #@a
    const-string/jumbo v5, "accounts.db"

    #@d
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 3239
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p0, :cond_0

    #@12
    .line 3244
    new-instance v1, Ljava/io/File;

    #@14
    const-string/jumbo v4, "accounts.db"

    #@17
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .line 3245
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 3258
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 3247
    .restart local v1    # "oldFile":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@2e
    move-result-object v3

    #@2f
    .line 3248
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 3249
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 3250
    new-instance v4, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "User dir cannot be created: "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    throw v4

    #@55
    .line 3253
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@58
    move-result v4

    #@59
    if-nez v4, :cond_0

    #@5b
    .line 3254
    new-instance v4, Ljava/lang/IllegalStateException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "User dir cannot be migrated: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@74
    throw v4
.end method

.method private getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3377
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3378
    const-string/jumbo v2, "SELECT "

    #@8
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 3378
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 3379
    const-string/jumbo v2, " FROM "

    #@17
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 3379
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 3380
    const-string/jumbo v2, " ORDER BY "

    #@26
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 3381
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 3381
    const-string/jumbo v2, ","

    #@35
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 3381
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 3382
    const-string/jumbo v2, " LIMIT 1"

    #@44
    .line 3377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 3384
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    #@4d
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@50
    move-result-wide v2

    #@51
    return-wide v2
.end method

.method private getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3366
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "SELECT COUNT(*) FROM "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 3367
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    #@19
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@1c
    move-result-wide v2

    #@1d
    return-wide v2
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2851
    const-string/jumbo v1, "extras"

    #@6
    new-array v2, v4, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "accounts_id="

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v3, " AND "

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string/jumbo v3, "key"

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v3, "=?"

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 2853
    new-array v4, v4, [Ljava/lang/String;

    #@38
    aput-object p4, v4, v6

    #@3a
    move-object v0, p1

    #@3b
    move-object v6, v5

    #@3c
    move-object v7, v5

    #@3d
    .line 2851
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@40
    move-result-object v8

    #@41
    .line 2855
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_0

    #@47
    .line 2856
    const/4 v0, 0x0

    #@48
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-wide v0

    #@4c
    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4f
    .line 2856
    return-wide v0

    #@50
    .line 2858
    :cond_0
    const-wide/16 v0, -0x1

    #@52
    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@55
    .line 2858
    return-wide v0

    #@56
    .line 2859
    :catchall_0
    move-exception v0

    #@57
    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@5a
    .line 2859
    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 2100
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 2101
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    .line 2102
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@11
    .line 2103
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@16
    move-result v1

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v0

    #@1b
    .line 2104
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v2

    #@23
    .line 2107
    return-object v0

    #@24
    .line 2100
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    #@0
    .prologue
    .line 258
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    #@8
    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3796
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3797
    .local v2, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 3800
    .local v0, "identityToken":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@b
    invoke-interface {v7, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v5

    #@f
    .line 3802
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 3804
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v4

    #@16
    .local v4, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_2

    #@1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@22
    .line 3806
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@24
    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@26
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@29
    move-result v6

    #@2a
    .line 3807
    .local v6, "sigChk":I
    if-nez p3, :cond_1

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 3808
    :cond_1
    iget-object v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@30
    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    #@32
    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@34
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 3801
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_0
    move-exception v7

    #@39
    .line 3802
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 3801
    throw v7

    #@3d
    .line 3811
    .restart local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .restart local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :cond_2
    return-object v2
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3791
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private getTypesVisibleToCaller(II)Ljava/util/List;
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 3784
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    #@8
    aput-object v2, v1, v5

    #@a
    .line 3785
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    #@d
    aput-object v2, v1, v3

    #@f
    .line 3784
    invoke-direct {p0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(I[Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 3786
    .local v0, "isPermitted":Z
    const-string/jumbo v1, "AccountManagerService"

    #@16
    const-string/jumbo v2, "getTypesVisibleToCaller: isPermitted? %s"

    #@19
    new-array v3, v3, [Ljava/lang/Object;

    #@1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v4

    #@1f
    aput-object v4, v3, v5

    #@21
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 3787
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    #@0
    .prologue
    .line 434
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 342
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@c
    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@e
    return-object v0
.end method

.method private grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 3938
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 3939
    :cond_0
    const-string/jumbo v5, "AccountManagerService"

    #@7
    const-string/jumbo v6, "grantAppPermission: called with invalid arguments"

    #@a
    new-instance v7, Ljava/lang/Exception;

    #@c
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    #@f
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3940
    return-void

    #@13
    .line 3942
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v5

    #@17
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 3943
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    monitor-enter v6

    #@20
    .line 3944
    :try_start_0
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@27
    move-result-object v3

    #@28
    .line 3945
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    .line 3947
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2e
    move-result-wide v0

    #@2f
    .line 3948
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    #@31
    cmp-long v5, v0, v8

    #@33
    if-ltz v5, :cond_2

    #@35
    .line 3949
    new-instance v4, Landroid/content/ContentValues;

    #@37
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@3a
    .line 3950
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "accounts_id"

    #@3d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@44
    .line 3951
    const-string/jumbo v5, "auth_token_type"

    #@47
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 3952
    const-string/jumbo v5, "uid"

    #@4d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@54
    .line 3953
    const-string/jumbo v5, "grants"

    #@57
    const-string/jumbo v7, "accounts_id"

    #@5a
    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@5d
    .line 3954
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 3957
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@63
    .line 3959
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@6a
    move-result v5

    #@6b
    .line 3960
    new-instance v7, Landroid/os/UserHandle;

    #@6d
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@70
    move-result v8

    #@71
    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    #@74
    .line 3959
    invoke-virtual {p0, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@77
    monitor-exit v6

    #@78
    .line 3937
    return-void

    #@79
    .line 3956
    .end local v0    # "accountId":J
    :catchall_0
    move-exception v5

    #@7a
    .line 3957
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@7d
    .line 3956
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7e
    .line 3943
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    #@7f
    monitor-exit v6

    #@80
    throw v5
.end method

.method private handleIncomingUser(I)I
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3715
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 3716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v2

    #@c
    const-string/jumbo v6, ""

    #@f
    const/4 v4, 0x1

    #@10
    const/4 v5, 0x1

    #@11
    const/4 v7, 0x0

    #@12
    move v3, p1

    #@13
    .line 3715
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 3717
    :catch_0
    move-exception v8

    #@19
    .line 3720
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 3827
    const/16 v4, 0x3e8

    #@3
    if-ne p3, v4, :cond_0

    #@5
    .line 3828
    return v10

    #@6
    .line 3830
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v0

    #@a
    .line 3831
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    monitor-enter v5

    #@f
    .line 3832
    :try_start_0
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@16
    move-result-object v2

    #@17
    .line 3833
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x4

    #@18
    new-array v1, v4, [Ljava/lang/String;

    #@1a
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    const/4 v6, 0x0

    #@1f
    aput-object v4, v1, v6

    #@21
    const/4 v4, 0x1

    #@22
    aput-object p2, v1, v4

    #@24
    .line 3834
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@26
    const/4 v6, 0x2

    #@27
    aput-object v4, v1, v6

    #@29
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2b
    const/4 v6, 0x3

    #@2c
    aput-object v4, v1, v6

    #@2e
    .line 3836
    .local v1, "args":[Ljava/lang/String;
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    #@31
    invoke-static {v2, v4, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@34
    move-result-wide v6

    #@35
    const-wide/16 v8, 0x0

    #@37
    cmp-long v4, v6, v8

    #@39
    if-eqz v4, :cond_1

    #@3b
    const/4 v3, 0x1

    #@3c
    .line 3837
    .local v3, "permissionGranted":Z
    :goto_0
    if-nez v3, :cond_2

    #@3e
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_2

    #@44
    .line 3840
    const-string/jumbo v4, "AccountManagerService"

    #@47
    new-instance v6, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v7, "no credentials permission for usage of "

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    const-string/jumbo v7, ", "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    .line 3841
    const-string/jumbo v7, " by uid "

    #@65
    .line 3840
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    .line 3842
    const-string/jumbo v7, " but ignoring since device is in test harness."

    #@70
    .line 3840
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    monitor-exit v5

    #@7c
    .line 3843
    return v10

    #@7d
    .line 3836
    .end local v3    # "permissionGranted":Z
    :cond_1
    const/4 v3, 0x0

    #@7e
    .restart local v3    # "permissionGranted":Z
    goto :goto_0

    #@7f
    :cond_2
    monitor-exit v5

    #@80
    .line 3845
    return v3

    #@81
    .line 3831
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    :catchall_0
    move-exception v4

    #@82
    monitor-exit v5

    #@83
    throw v4
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 3349
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    #@3
    move-result-wide v2

    #@4
    long-to-int v0, v2

    #@5
    .line 3350
    .local v0, "size":I
    const/16 v1, 0x40

    #@7
    if-lt v0, v1, :cond_0

    #@9
    .line 3352
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    #@c
    move-result-wide v2

    #@d
    long-to-int v1, v2

    #@e
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@11
    .line 3356
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@14
    .line 3347
    return-void

    #@15
    .line 3354
    :cond_0
    invoke-static {p2, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@18
    goto :goto_0
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4029
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@4
    move-result-object v3

    #@5
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Landroid/accounts/Account;

    #@d
    .line 4030
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    #@f
    array-length v2, v0

    #@10
    .line 4031
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@12
    new-array v1, v3, [Landroid/accounts/Account;

    #@14
    .line 4032
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@16
    .line 4033
    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 4035
    :cond_0
    aput-object p2, v1, v2

    #@1b
    .line 4036
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 4028
    return-void

    #@25
    .line 4030
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    :cond_1
    const/4 v2, 0x0

    #@26
    .restart local v2    # "oldLength":I
    goto :goto_0
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 982
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 983
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    #@8
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 984
    const-string/jumbo v1, "accounts_id"

    #@e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@15
    .line 985
    const-string/jumbo v1, "value"

    #@18
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 986
    const-string/jumbo v1, "extras"

    #@1e
    const-string/jumbo v2, "key"

    #@21
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@24
    move-result-wide v2

    #@25
    return-wide v2
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1441
    if-eqz p4, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 1442
    :cond_0
    return-void

    #@8
    .line 1445
    :cond_1
    const-string/jumbo v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    #@b
    .line 1454
    new-array v1, v1, [Ljava/lang/String;

    #@d
    aput-object p4, v1, v2

    #@f
    aput-object p3, v1, v3

    #@11
    .line 1444
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v7

    #@15
    .line 1456
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1457
    const/4 v0, 0x0

    #@1c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    #@1f
    move-result-wide v8

    #@20
    .line 1458
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    #@21
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 1459
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    #@26
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 1460
    .local v4, "authTokenType":Ljava/lang/String;
    const-string/jumbo v0, "authtokens"

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "_id="

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@45
    .line 1464
    new-instance v3, Landroid/accounts/Account;

    #@47
    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 1466
    const/4 v5, 0x0

    #@4b
    move-object v0, p0

    #@4c
    move-object v1, p1

    #@4d
    move-object v2, p2

    #@4e
    .line 1461
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1468
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_0
    move-exception v0

    #@53
    .line 1469
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@56
    .line 1468
    throw v0

    #@57
    .line 1469
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@5a
    .line 1440
    return-void
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1432
    if-eqz p3, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1433
    :cond_0
    return-void

    #@5
    .line 1436
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1431
    return-void
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3775
    if-nez p1, :cond_0

    #@2
    .line 3776
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 3778
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3815
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 3816
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, [Landroid/accounts/Account;

    #@1d
    array-length v4, v1

    #@1e
    move v2, v3

    #@1f
    :goto_0
    if-ge v2, v4, :cond_1

    #@21
    aget-object v0, v1, v2

    #@23
    .line 3817
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@25
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 3818
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 3816
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 3822
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3767
    if-nez p1, :cond_0

    #@2
    .line 3768
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 3770
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(II)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isCrossUser(II)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v1

    #@5
    if-eq p2, v1, :cond_0

    #@7
    .line 700
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@a
    move-result v1

    #@b
    if-eq p1, v1, :cond_0

    #@d
    .line 701
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@f
    .line 702
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@12
    .line 701
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 699
    :cond_0
    return v0
.end method

.method private varargs isPermitted(I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3689
    array-length v3, p2

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_2

    #@5
    aget-object v0, p2, v1

    #@7
    .line 3690
    .local v0, "perm":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v4, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    .line 3691
    const-string/jumbo v1, "AccountManagerService"

    #@12
    const/4 v2, 0x2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 3692
    const-string/jumbo v1, "AccountManagerService"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "  caller uid "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " has "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 3694
    :cond_0
    const/4 v1, 0x1

    #@3f
    return v1

    #@40
    .line 3689
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 3697
    .end local v0    # "perm":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private isPrivileged(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3724
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v0

    #@5
    .line 3728
    .local v0, "callingUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@7
    .line 3729
    const-string/jumbo v8, "android"

    #@a
    new-instance v9, Landroid/os/UserHandle;

    #@c
    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    const/4 v10, 0x0

    #@10
    .line 3728
    invoke-virtual {v6, v8, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v5

    #@18
    .line 3734
    .local v5, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 3735
    .local v4, "packages":[Ljava/lang/String;
    array-length v8, v4

    #@1d
    move v6, v7

    #@1e
    :goto_0
    if-ge v6, v8, :cond_1

    #@20
    aget-object v2, v4, v6

    #@22
    .line 3737
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@23
    :try_start_1
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@26
    move-result-object v3

    #@27
    .line 3738
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    #@29
    .line 3739
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@2d
    and-int/lit8 v9, v9, 0x8

    #@2f
    if-eqz v9, :cond_0

    #@31
    .line 3741
    const/4 v6, 0x1

    #@32
    return v6

    #@33
    .line 3730
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    #@34
    .line 3731
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@35
    .line 3743
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    #@36
    .line 3744
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@37
    .line 3735
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 3747
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v7
.end method

.method private isSystemUid(I)Z
    .locals 13
    .param p1, "callingUid"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3850
    const/4 v5, 0x0

    #@3
    .line 3851
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 3853
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@9
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v5

    #@d
    .line 3855
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 3857
    if-eqz v5, :cond_1

    #@12
    .line 3858
    array-length v8, v5

    #@13
    move v6, v7

    #@14
    :goto_0
    if-ge v6, v8, :cond_2

    #@16
    aget-object v1, v5, v6

    #@18
    .line 3860
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1a
    const/4 v10, 0x0

    #@1b
    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1e
    move-result-object v4

    #@1f
    .line 3861
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    #@21
    .line 3862
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@25
    and-int/lit8 v9, v9, 0x1

    #@27
    if-eqz v9, :cond_0

    #@29
    .line 3864
    return v12

    #@2a
    .line 3854
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v5, "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@2b
    .line 3855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 3854
    throw v6

    #@2f
    .line 3866
    .restart local v1    # "name":Ljava/lang/String;
    .local v5, "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@30
    .line 3867
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "AccountManagerService"

    #@33
    const-string/jumbo v10, "Could not find package [%s]"

    #@36
    new-array v11, v12, [Ljava/lang/Object;

    #@38
    aput-object v1, v11, v7

    #@3a
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v10

    #@3e
    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    .line 3858
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 3871
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    #@47
    new-instance v8, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v9, "No known packages with uid "

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 3873
    :cond_2
    return v7
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 3321
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3
    move-result v7

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-wide v4, p4

    #@9
    move-object v6, p6

    #@a
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@d
    .line 3320
    return-void
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p7, "callingUid"    # I

    #@0
    .prologue
    .line 3329
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get9(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 3330
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@8
    .line 3331
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@c
    .line 3332
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get11()Ljava/text/SimpleDateFormat;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/util/Date;

    #@12
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@15
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@1d
    .line 3333
    int-to-long v2, p7

    #@1e
    const/4 v1, 0x4

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@22
    .line 3334
    const/4 v1, 0x5

    #@23
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@26
    .line 3335
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@29
    move-result v1

    #@2a
    int-to-long v2, v1

    #@2b
    const/4 v1, 0x6

    #@2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@2f
    .line 3336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    #@32
    .line 3337
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    #@35
    .line 3338
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@38
    move-result v1

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    rem-int/lit8 v1, v1, 0x40

    #@3d
    invoke-static {p6, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@40
    .line 3328
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3307
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v1

    #@8
    .line 3308
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    #@a
    move-object v0, p0

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v6, p1

    #@e
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@11
    .line 3306
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    #@0
    .prologue
    .line 3312
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v1

    #@8
    .line 3313
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    #@a
    move-object v0, p0

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v6, p1

    #@e
    move v7, p4

    #@f
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@12
    .line 3311
    return-void
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p4, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2065
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 2069
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@e
    .line 2071
    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 2070
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 2073
    const-string/jumbo v1, "account"

    #@1c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 2074
    const-string/jumbo v1, "authTokenType"

    #@22
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 2075
    const-string/jumbo v1, "response"

    #@28
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2b
    .line 2076
    const-string/jumbo v1, "uid"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@31
    .line 2078
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1737
    if-nez p2, :cond_0

    #@3
    .line 1738
    const-string/jumbo v1, "AccountManagerService"

    #@6
    const-string/jumbo v2, "the result is unexpectedly null"

    #@9
    new-instance v3, Ljava/lang/Exception;

    #@b
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    #@e
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1740
    :cond_0
    const-string/jumbo v1, "AccountManagerService"

    #@14
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1741
    const-string/jumbo v1, "AccountManagerService"

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, " calling onResult() on response "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1745
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1736
    :cond_2
    :goto_0
    return-void

    #@44
    .line 1746
    :catch_0
    move-exception v0

    #@45
    .line 1749
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    #@48
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 1750
    const-string/jumbo v1, "AccountManagerService"

    #@51
    const-string/jumbo v2, "failure while notifying response"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 485
    const-string/jumbo v3, "android.intent.extra.user_handle"

    #@3
    const/4 v4, -0x1

    #@4
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v2

    #@8
    .line 486
    .local v2, "userId":I
    const/4 v3, 0x1

    #@9
    if-ge v2, v3, :cond_0

    #@b
    return-void

    #@c
    .line 489
    :cond_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@e
    monitor-enter v4

    #@f
    .line 490
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@17
    .line 491
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v4

    #@1d
    .line 493
    if-nez v0, :cond_1

    #@1f
    .line 494
    new-instance v1, Ljava/io/File;

    #@21
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@28
    .line 495
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@2b
    .line 496
    return-void

    #@2c
    .line 489
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3

    #@2f
    .line 499
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    monitor-enter v4

    #@34
    .line 500
    :try_start_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->close()V

    #@3b
    .line 501
    new-instance v1, Ljava/io/File;

    #@3d
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@44
    .line 502
    .restart local v1    # "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    monitor-exit v4

    #@48
    .line 484
    return-void

    #@49
    .line 499
    .end local v1    # "dbFile":Ljava/io/File;
    :catchall_1
    move-exception v3

    #@4a
    monitor-exit v4

    #@4b
    throw v3
.end method

.method private onUserStarted(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 507
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@5
    const/4 v6, -0x1

    #@6
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v3

    #@a
    .line 508
    .local v3, "userId":I
    const/4 v4, 0x1

    #@b
    if-ge v3, v4, :cond_0

    #@d
    return-void

    #@e
    .line 511
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@11
    move-result-object v2

    #@12
    .line 512
    .local v2, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    #@14
    array-length v4, v2

    #@15
    if-nez v4, :cond_2

    #@17
    :cond_1
    return-void

    #@18
    .line 513
    :cond_2
    invoke-virtual {p0, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@1b
    move-result-object v0

    #@1c
    .line 514
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v6, v2

    #@1d
    move v4, v5

    #@1e
    :goto_0
    if-ge v4, v6, :cond_4

    #@20
    aget-object v1, v2, v4

    #@22
    .line 515
    .local v1, "sa":Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_3

    #@28
    .line 514
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 517
    :cond_3
    invoke-virtual {p0, v8, v1, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@2e
    goto :goto_1

    #@2f
    .line 506
    .end local v1    # "sa":Landroid/accounts/Account;
    :cond_4
    return-void
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 3752
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    #@3
    move-result v2

    #@4
    .line 3753
    .local v2, "isPrivileged":Z
    if-eqz p1, :cond_1

    #@6
    .line 3754
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@8
    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@b
    move-result v0

    #@c
    .line 3755
    :goto_0
    if-eqz p1, :cond_2

    #@e
    .line 3756
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@11
    move-result v1

    #@12
    .line 3757
    :goto_1
    const-string/jumbo v3, "AccountManagerService"

    #@15
    const/4 v4, 0x2

    #@16
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 3758
    const-string/jumbo v3, "AccountManagerService"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 3759
    const-string/jumbo v5, ", "

    #@32
    .line 3758
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 3760
    const-string/jumbo v5, ": is authenticator? "

    #@3d
    .line 3758
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 3761
    const-string/jumbo v5, ", has explicit permission? "

    #@48
    .line 3758
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 3763
    :cond_0
    if-nez v0, :cond_3

    #@59
    if-nez v1, :cond_3

    #@5b
    .end local v2    # "isPrivileged":Z
    :goto_2
    return v2

    #@5c
    .line 3753
    .restart local v2    # "isPrivileged":Z
    :cond_1
    const/4 v0, 0x0

    #@5d
    .local v0, "fromAuthenticator":Z
    goto :goto_0

    #@5e
    .line 3755
    .end local v0    # "fromAuthenticator":Z
    :cond_2
    const/4 v1, 0x0

    #@5f
    .local v1, "hasExplicitGrants":Z
    goto :goto_1

    #@60
    .line 3763
    .end local v1    # "hasExplicitGrants":Z
    :cond_3
    const/4 v2, 0x1

    #@61
    goto :goto_2
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 461
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v11

    #@4
    monitor-enter v11

    #@5
    .line 462
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v0

    #@d
    .line 463
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    #@10
    .line 464
    const/4 v2, 0x1

    #@11
    new-array v2, v2, [Ljava/lang/String;

    #@13
    const-string/jumbo v3, "uid"

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    .line 465
    const-string/jumbo v5, "uid"

    #@1c
    const/4 v3, 0x0

    #@1d
    const/4 v4, 0x0

    #@1e
    const/4 v6, 0x0

    #@1f
    const/4 v7, 0x0

    #@20
    .line 463
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@23
    move-result-object v8

    #@24
    .line 467
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 468
    const/4 v1, 0x0

    #@2b
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    #@2e
    move-result v10

    #@2f
    .line 469
    .local v10, "uid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@31
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    if-eqz v1, :cond_1

    #@37
    const/4 v9, 0x1

    #@38
    .line 470
    .local v9, "packageExists":Z
    :goto_1
    if-nez v9, :cond_0

    #@3a
    .line 473
    const-string/jumbo v1, "AccountManagerService"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "deleting grants for UID "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 474
    const-string/jumbo v3, " because its package is no longer installed"

    #@50
    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 475
    const-string/jumbo v1, "grants"

    #@5e
    const-string/jumbo v2, "uid=?"

    #@61
    .line 476
    const/4 v3, 0x1

    #@62
    new-array v3, v3, [Ljava/lang/String;

    #@64
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    const/4 v5, 0x0

    #@69
    aput-object v4, v3, v5

    #@6b
    .line 475
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .line 478
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_0
    move-exception v1

    #@70
    .line 479
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@73
    .line 478
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    .line 461
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    #@75
    monitor-exit v11

    #@76
    throw v1

    #@77
    .line 469
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    #@78
    .restart local v9    # "packageExists":Z
    goto :goto_1

    #@79
    .line 479
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    monitor-exit v11

    #@7d
    .line 460
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    #@0
    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 454
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 455
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@14
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 454
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 452
    return-void

    #@1c
    .line 453
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 553
    if-nez p2, :cond_0

    #@3
    .line 554
    return-object v10

    #@4
    .line 557
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@7
    move-result-object v9

    #@8
    monitor-enter v9

    #@9
    .line 558
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@10
    move-result-object v0

    #@11
    .line 559
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    #@14
    const/4 v2, 0x1

    #@15
    new-array v2, v2, [Ljava/lang/String;

    #@17
    const-string/jumbo v3, "password"

    #@1a
    const/4 v4, 0x0

    #@1b
    aput-object v3, v2, v4

    #@1d
    .line 560
    const-string/jumbo v3, "name=? AND type=?"

    #@20
    .line 561
    const/4 v4, 0x2

    #@21
    new-array v4, v4, [Ljava/lang/String;

    #@23
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@25
    const/4 v6, 0x0

    #@26
    aput-object v5, v4, v6

    #@28
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2a
    const/4 v6, 0x1

    #@2b
    aput-object v5, v4, v6

    #@2d
    const/4 v5, 0x0

    #@2e
    const/4 v6, 0x0

    #@2f
    const/4 v7, 0x0

    #@30
    .line 559
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@33
    move-result-object v8

    #@34
    .line 563
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 564
    const/4 v1, 0x0

    #@3b
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    move-result-object v1

    #@3f
    .line 568
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    monitor-exit v9

    #@43
    .line 564
    return-object v1

    #@44
    .line 568
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@47
    monitor-exit v9

    #@48
    .line 566
    return-object v10

    #@49
    .line 567
    :catchall_0
    move-exception v1

    #@4a
    .line 568
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4d
    .line 567
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4e
    .line 557
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    #@4f
    monitor-exit v9

    #@50
    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 592
    if-nez p2, :cond_0

    #@2
    .line 593
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 595
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@7
    move-result-object v12

    #@8
    monitor-enter v12

    #@9
    .line 596
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v10

    #@11
    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    .line 597
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    #@15
    .line 598
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@1c
    move-result-object v0

    #@1d
    .line 600
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    #@20
    .line 601
    const/4 v2, 0x1

    #@21
    new-array v2, v2, [Ljava/lang/String;

    #@23
    const-string/jumbo v3, "previous_name"

    #@26
    const/4 v4, 0x0

    #@27
    aput-object v3, v2, v4

    #@29
    .line 602
    const-string/jumbo v3, "name=? AND type=?"

    #@2c
    .line 603
    const/4 v4, 0x2

    #@2d
    new-array v4, v4, [Ljava/lang/String;

    #@2f
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@31
    const/4 v6, 0x0

    #@32
    aput-object v5, v4, v6

    #@34
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@36
    const/4 v6, 0x1

    #@37
    aput-object v5, v4, v6

    #@39
    .line 604
    const/4 v5, 0x0

    #@3a
    .line 605
    const/4 v6, 0x0

    #@3b
    .line 606
    const/4 v7, 0x0

    #@3c
    .line 599
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    move-result-object v8

    #@40
    .line 608
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 609
    const/4 v1, 0x0

    #@47
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    .line 610
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    #@4d
    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 611
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local v11, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@57
    .line 617
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5a
    monitor-exit v12

    #@5b
    .line 612
    return-object v9

    #@5c
    .line 617
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5f
    .line 614
    const/4 v1, 0x0

    #@60
    monitor-exit v12

    #@61
    return-object v1

    #@62
    .line 616
    :catchall_0
    move-exception v1

    #@63
    .line 617
    :goto_0
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@66
    .line 616
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@67
    .line 595
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    #@68
    monitor-exit v12

    #@69
    throw v1

    #@6a
    .line 620
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6d
    move-result-object v1

    #@6e
    check-cast v1, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@70
    monitor-exit v12

    #@71
    return-object v1

    #@72
    .line 616
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "previousName":Ljava/lang/String;
    .restart local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    #@73
    move-object v10, v11

    #@74
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 4004
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v4

    #@4
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, [Landroid/accounts/Account;

    #@c
    .line 4005
    .local v3, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_2

    #@e
    .line 4006
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 4007
    .local v2, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v4, 0x0

    #@14
    array-length v5, v3

    #@15
    :goto_0
    if-ge v4, v5, :cond_1

    #@17
    aget-object v0, v3, v4

    #@19
    .line 4008
    .local v0, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 4009
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 4007
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 4012
    .end local v0    # "curAccount":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 4013
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@31
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 4020
    .end local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 4021
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 4022
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 4003
    return-void

    #@4a
    .line 4015
    .restart local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v4

    #@4e
    new-array v1, v4, [Landroid/accounts/Account;

    #@50
    .line 4016
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v1, [Landroid/accounts/Account;

    #@56
    .line 4017
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@59
    move-result-object v4

    #@5a
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5c
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    goto :goto_1
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 18
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1368
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v16

    #@4
    monitor-enter v16

    #@5
    .line 1369
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v3

    #@d
    .line 1370
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    #@f
    move-object/from16 v1, p2

    #@11
    invoke-direct {v0, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@14
    move-result-wide v6

    #@15
    .line 1371
    .local v6, "accountId":J
    const-string/jumbo v2, "accounts"

    #@18
    const-string/jumbo v4, "name=? AND type=?"

    #@1b
    .line 1373
    const/4 v5, 0x2

    #@1c
    new-array v5, v5, [Ljava/lang/String;

    #@1e
    move-object/from16 v0, p2

    #@20
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@22
    const/16 v17, 0x0

    #@24
    aput-object v8, v5, v17

    #@26
    move-object/from16 v0, p2

    #@28
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2a
    const/16 v17, 0x1

    #@2c
    aput-object v8, v5, v17

    #@2e
    .line 1371
    invoke-virtual {v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@31
    move-result v10

    #@32
    .line 1374
    .local v10, "deleted":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@35
    .line 1375
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@38
    move-result v2

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@3e
    .line 1377
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, "accounts"

    #@45
    move-object/from16 v2, p0

    #@47
    move-object/from16 v8, p1

    #@49
    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4c
    monitor-exit v16

    #@4d
    .line 1379
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_2

    #@53
    .line 1382
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@56
    move-result v9

    #@57
    .line 1383
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5a
    move-result-wide v12

    #@5b
    .line 1385
    .local v12, "id":J
    :try_start_1
    move-object/from16 v0, p0

    #@5d
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@5f
    const/4 v4, 0x1

    #@60
    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@63
    move-result-object v15

    #@64
    .line 1386
    .local v15, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v14

    #@68
    .local v14, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_1

    #@6e
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v11

    #@72
    check-cast v11, Landroid/content/pm/UserInfo;

    #@74
    .line 1387
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@77
    move-result v2

    #@78
    if-nez v2, :cond_0

    #@7a
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_0

    #@80
    .line 1388
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    #@82
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p2

    #@86
    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    goto :goto_0

    #@8a
    .line 1391
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v14    # "user$iterator":Ljava/util/Iterator;
    .end local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v2

    #@8b
    .line 1392
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8e
    .line 1391
    throw v2

    #@8f
    .line 1368
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "accountId":J
    .end local v9    # "callingUid":I
    .end local v10    # "deleted":I
    .end local v12    # "id":J
    :catchall_1
    move-exception v2

    #@90
    monitor-exit v16

    #@91
    throw v2

    #@92
    .line 1392
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "accountId":J
    .restart local v9    # "callingUid":I
    .restart local v10    # "deleted":I
    .restart local v12    # "id":J
    .restart local v14    # "user$iterator":Ljava/util/Iterator;
    .restart local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@95
    .line 1395
    .end local v9    # "callingUid":I
    .end local v12    # "id":J
    .end local v14    # "user$iterator":Ljava/util/Iterator;
    .end local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    if-lez v10, :cond_3

    #@97
    const/4 v2, 0x1

    #@98
    :goto_1
    return v2

    #@99
    :cond_3
    const/4 v2, 0x0

    #@9a
    goto :goto_1
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2701
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 2702
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 2703
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v1

    #@12
    .line 2704
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@15
    move-result-wide v4

    #@16
    .line 2705
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    #@19
    const-string/jumbo v2, "name=? AND type=?"

    #@1c
    .line 2706
    const/4 v3, 0x2

    #@1d
    new-array v3, v3, [Ljava/lang/String;

    #@1f
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@21
    aput-object v7, v3, v10

    #@23
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@25
    aput-object v7, v3, v9

    #@27
    .line 2705
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@2a
    move-result v8

    #@2b
    .line 2707
    .local v8, "r":I
    if-lez v8, :cond_0

    #@2d
    .line 2708
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, "shared_accounts"

    #@34
    move-object v0, p0

    #@35
    move v7, p3

    #@36
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@39
    .line 2710
    invoke-direct {p0, v6, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    #@3c
    .line 2712
    :cond_0
    if-lez v8, :cond_1

    #@3e
    move v0, v9

    #@3f
    :goto_0
    return v0

    #@40
    :cond_1
    move v0, v10

    #@41
    goto :goto_0
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 25
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1108
    const/16 v17, 0x0

    #@2
    .line 1119
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v4

    #@a
    .line 1120
    new-instance v6, Landroid/os/UserHandle;

    #@c
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@f
    move-result v7

    #@10
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@13
    .line 1118
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@18
    .line 1121
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1b
    move-result-object v6

    #@1c
    monitor-enter v6

    #@1d
    .line 1123
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@24
    move-result-object v4

    #@25
    .line 1122
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v15

    #@29
    .local v15, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v14

    #@33
    check-cast v14, Landroid/util/Pair;

    #@35
    .line 1124
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@37
    check-cast v4, Landroid/util/Pair;

    #@39
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_0

    #@43
    .line 1125
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v12

    #@51
    .line 1126
    .local v12, "id":I
    new-instance v4, Landroid/os/UserHandle;

    #@53
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@56
    move-result v7

    #@57
    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@5a
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v12, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    goto :goto_0

    #@60
    .line 1121
    .end local v12    # "id":I
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v6

    #@62
    throw v4

    #@63
    .restart local v15    # "pair$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    #@64
    .line 1130
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@67
    move-result-object v24

    #@68
    monitor-enter v24

    #@69
    .line 1131
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@70
    move-result-object v5

    #@71
    .line 1132
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@74
    .line 1133
    const/4 v13, 0x0

    #@75
    .line 1134
    .local v13, "isSuccessful":Z
    new-instance v16, Landroid/accounts/Account;

    #@77
    move-object/from16 v0, p2

    #@79
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7b
    move-object/from16 v0, v16

    #@7d
    move-object/from16 v1, p3

    #@7f
    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@82
    .line 1136
    .local v16, "renamedAccount":Landroid/accounts/Account;
    :try_start_2
    new-instance v23, Landroid/content/ContentValues;

    #@84
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@87
    .line 1137
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    #@8a
    move-object/from16 v0, v23

    #@8c
    move-object/from16 v1, p3

    #@8e
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 1138
    const-string/jumbo v4, "previous_name"

    #@94
    move-object/from16 v0, p2

    #@96
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@98
    move-object/from16 v0, v23

    #@9a
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9d
    .line 1139
    move-object/from16 v0, p0

    #@9f
    move-object/from16 v1, p2

    #@a1
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@a4
    move-result-wide v8

    #@a5
    .line 1140
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    #@a7
    cmp-long v4, v8, v6

    #@a9
    if-ltz v4, :cond_2

    #@ab
    .line 1141
    const/4 v4, 0x1

    #@ac
    new-array v11, v4, [Ljava/lang/String;

    #@ae
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b1
    move-result-object v4

    #@b2
    const/4 v6, 0x0

    #@b3
    aput-object v4, v11, v6

    #@b5
    .line 1142
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v4, "accounts"

    #@b8
    const-string/jumbo v6, "_id=?"

    #@bb
    move-object/from16 v0, v23

    #@bd
    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@c0
    .line 1143
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@c3
    .line 1144
    const/4 v13, 0x1

    #@c4
    .line 1145
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;

    #@c7
    move-result-object v6

    #@c8
    const-string/jumbo v7, "accounts"

    #@cb
    move-object/from16 v4, p0

    #@cd
    move-object/from16 v10, p1

    #@cf
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@d2
    .line 1149
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@d5
    .line 1150
    if-eqz v13, :cond_5

    #@d7
    .line 1155
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, p1

    #@db
    move-object/from16 v2, v16

    #@dd
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@e0
    .line 1161
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@e3
    move-result-object v4

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    move-result-object v18

    #@ea
    check-cast v18, Ljava/util/HashMap;

    #@ec
    .line 1162
    .local v18, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@ef
    move-result-object v4

    #@f0
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    move-result-object v19

    #@f6
    check-cast v19, Ljava/util/HashMap;

    #@f8
    .line 1163
    .local v19, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@fb
    .line 1168
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@fe
    move-result-object v4

    #@ff
    move-object/from16 v0, v16

    #@101
    move-object/from16 v1, v18

    #@103
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@106
    .line 1169
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@109
    move-result-object v4

    #@10a
    move-object/from16 v0, v16

    #@10c
    move-object/from16 v1, v19

    #@10e
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 1170
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@114
    move-result-object v4

    #@115
    .line 1172
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@117
    move-object/from16 v0, p2

    #@119
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@11b
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@11e
    .line 1170
    move-object/from16 v0, v16

    #@120
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    .line 1173
    move-object/from16 v17, v16

    #@125
    .line 1175
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@128
    move-result v4

    #@129
    if-nez v4, :cond_4

    #@12b
    .line 1180
    move-object/from16 v0, p0

    #@12d
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@12f
    const/4 v6, 0x1

    #@130
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@133
    move-result-object v22

    #@134
    .line 1181
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@137
    move-result-object v21

    #@138
    .local v21, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@13b
    move-result v4

    #@13c
    if-eqz v4, :cond_4

    #@13e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@141
    move-result-object v20

    #@142
    check-cast v20, Landroid/content/pm/UserInfo;

    #@144
    .line 1182
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@147
    move-result v4

    #@148
    if-nez v4, :cond_3

    #@14a
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@14d
    move-result v4

    #@14e
    if-eqz v4, :cond_3

    #@150
    .line 1183
    move-object/from16 v0, v20

    #@152
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@154
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, p2

    #@158
    move-object/from16 v2, p3

    #@15a
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@15d
    goto :goto_1

    #@15e
    .line 1130
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v13    # "isSuccessful":Z
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v23    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    #@15f
    monitor-exit v24

    #@160
    throw v4

    #@161
    .line 1187
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v13    # "isSuccessful":Z
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    .restart local v17    # "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@164
    move-result v4

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@16a
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    monitor-exit v24

    #@16b
    .line 1191
    return-object v17

    #@16c
    .line 1148
    .end local v8    # "accountId":J
    .end local v23    # "values":Landroid/content/ContentValues;
    .local v17, "resultAccount":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    #@16d
    .line 1149
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@170
    .line 1150
    if-eqz v13, :cond_8

    #@172
    .line 1155
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, p1

    #@176
    move-object/from16 v2, v16

    #@178
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@17b
    .line 1161
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@17e
    move-result-object v6

    #@17f
    move-object/from16 v0, p2

    #@181
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@184
    move-result-object v18

    #@185
    check-cast v18, Ljava/util/HashMap;

    #@187
    .line 1162
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@18a
    move-result-object v6

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@190
    move-result-object v19

    #@191
    check-cast v19, Ljava/util/HashMap;

    #@193
    .line 1163
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@196
    .line 1168
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@199
    move-result-object v6

    #@19a
    move-object/from16 v0, v16

    #@19c
    move-object/from16 v1, v18

    #@19e
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a1
    .line 1169
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1a4
    move-result-object v6

    #@1a5
    move-object/from16 v0, v16

    #@1a7
    move-object/from16 v1, v19

    #@1a9
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ac
    .line 1170
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1af
    move-result-object v6

    #@1b0
    .line 1172
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1b6
    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1b9
    .line 1170
    move-object/from16 v0, v16

    #@1bb
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    .line 1173
    move-object/from16 v17, v16

    #@1c0
    .line 1175
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1c3
    move-result v6

    #@1c4
    if-nez v6, :cond_7

    #@1c6
    .line 1180
    move-object/from16 v0, p0

    #@1c8
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@1ca
    const/4 v7, 0x1

    #@1cb
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@1ce
    move-result-object v22

    #@1cf
    .line 1181
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d2
    move-result-object v21

    #@1d3
    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@1d6
    move-result v6

    #@1d7
    if-eqz v6, :cond_7

    #@1d9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1dc
    move-result-object v20

    #@1dd
    check-cast v20, Landroid/content/pm/UserInfo;

    #@1df
    .line 1182
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@1e2
    move-result v6

    #@1e3
    if-nez v6, :cond_6

    #@1e5
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@1e8
    move-result v6

    #@1e9
    if-eqz v6, :cond_6

    #@1eb
    .line 1183
    move-object/from16 v0, v20

    #@1ed
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move-object/from16 v1, p2

    #@1f3
    move-object/from16 v2, p3

    #@1f5
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@1f8
    goto :goto_2

    #@1f9
    .line 1187
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1fc
    move-result v6

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@202
    .line 1148
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 3973
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 3974
    :cond_0
    const-string/jumbo v4, "AccountManagerService"

    #@7
    const-string/jumbo v5, "revokeAppPermission: called with invalid arguments"

    #@a
    new-instance v6, Ljava/lang/Exception;

    #@c
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    #@f
    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 3975
    return-void

    #@13
    .line 3977
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v4

    #@17
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 3978
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    monitor-enter v5

    #@20
    .line 3979
    :try_start_0
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@27
    move-result-object v3

    #@28
    .line 3980
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    .line 3982
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2e
    move-result-wide v0

    #@2f
    .line 3983
    .local v0, "accountId":J
    const-wide/16 v6, 0x0

    #@31
    cmp-long v4, v0, v6

    #@33
    if-ltz v4, :cond_2

    #@35
    .line 3984
    const-string/jumbo v4, "grants"

    #@38
    .line 3985
    const-string/jumbo v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    #@3b
    .line 3987
    const/4 v7, 0x3

    #@3c
    new-array v7, v7, [Ljava/lang/String;

    #@3e
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    const/4 v9, 0x0

    #@43
    aput-object v8, v7, v9

    #@45
    const/4 v8, 0x1

    #@46
    aput-object p2, v7, v8

    #@48
    .line 3988
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    const/4 v9, 0x2

    #@4d
    aput-object v8, v7, v9

    #@4f
    .line 3984
    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@52
    .line 3989
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 3992
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@58
    .line 3994
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v4

    #@60
    .line 3995
    new-instance v6, Landroid/os/UserHandle;

    #@62
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@65
    move-result v7

    #@66
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@69
    .line 3994
    invoke-virtual {p0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6c
    monitor-exit v5

    #@6d
    .line 3972
    return-void

    #@6e
    .line 3991
    .end local v0    # "accountId":J
    :catchall_0
    move-exception v4

    #@6f
    .line 3992
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@72
    .line 3991
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@73
    .line 3978
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    #@74
    monitor-exit v5

    #@75
    throw v4
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1495
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1496
    :cond_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1498
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    .line 1499
    new-instance v1, Landroid/os/UserHandle;

    #@10
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@13
    move-result v3

    #@14
    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@17
    .line 1498
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@1a
    .line 1500
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1d
    move-result-object v9

    #@1e
    monitor-enter v9

    #@1f
    .line 1501
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@26
    move-result-object v2

    #@27
    .line 1502
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 1504
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-wide v6

    #@2e
    .line 1505
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    #@30
    cmp-long v0, v6, v0

    #@32
    if-gez v0, :cond_2

    #@34
    .line 1522
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 1506
    const/4 v0, 0x0

    #@38
    monitor-exit v9

    #@39
    return v0

    #@3a
    .line 1508
    :cond_2
    :try_start_3
    const-string/jumbo v0, "authtokens"

    #@3d
    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "accounts_id="

    #@45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    const-string/jumbo v3, " AND "

    #@50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v3, "type"

    #@57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v3, "=?"

    #@5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    .line 1510
    const/4 v3, 0x1

    #@67
    new-array v3, v3, [Ljava/lang/String;

    #@69
    const/4 v4, 0x0

    #@6a
    aput-object p3, v3, v4

    #@6c
    .line 1508
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@6f
    .line 1511
    new-instance v8, Landroid/content/ContentValues;

    #@71
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    #@74
    .line 1512
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "accounts_id"

    #@77
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@7e
    .line 1513
    const-string/jumbo v0, "type"

    #@81
    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 1514
    const-string/jumbo v0, "authtoken"

    #@87
    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@8a
    .line 1515
    const-string/jumbo v0, "authtokens"

    #@8d
    const-string/jumbo v1, "authtoken"

    #@90
    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@93
    move-result-wide v0

    #@94
    const-wide/16 v4, 0x0

    #@96
    cmp-long v0, v0, v4

    #@98
    if-ltz v0, :cond_3

    #@9a
    .line 1516
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@9d
    move-object v0, p0

    #@9e
    move-object v1, p1

    #@9f
    move-object v3, p2

    #@a0
    move-object v4, p3

    #@a1
    move-object v5, p4

    #@a2
    .line 1517
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a5
    .line 1522
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a8
    .line 1518
    const/4 v0, 0x1

    #@a9
    monitor-exit v9

    #@aa
    return v0

    #@ab
    .line 1522
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ae
    .line 1520
    const/4 v0, 0x0

    #@af
    monitor-exit v9

    #@b0
    return v0

    #@b1
    .line 1521
    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@b2
    .line 1522
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@b5
    .line 1521
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b6
    .line 1500
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@b7
    monitor-exit v9

    #@b8
    throw v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    #@0
    .prologue
    .line 1482
    if-eqz p2, :cond_0

    #@2
    if-nez p5, :cond_1

    #@4
    .line 1483
    :cond_0
    return-void

    #@5
    .line 1482
    :cond_1
    if-eqz p3, :cond_0

    #@7
    if-eqz p4, :cond_0

    #@9
    .line 1485
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    .line 1486
    new-instance v1, Landroid/os/UserHandle;

    #@13
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@16
    move-result v2

    #@17
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@1a
    .line 1485
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@1d
    .line 1487
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    monitor-enter v8

    #@22
    .line 1488
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@25
    move-result-object v0

    #@26
    move-object v1, p2

    #@27
    move-object v2, p6

    #@28
    move-object v3, p5

    #@29
    move-object v4, p3

    #@2a
    move-object v5, p4

    #@2b
    move-wide/from16 v6, p7

    #@2d
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v8

    #@31
    .line 1480
    return-void

    #@32
    .line 1487
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v8

    #@34
    throw v0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3544
    if-eqz p0, :cond_1

    #@3
    .line 3545
    array-length v3, p0

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p0, v1

    #@9
    .line 3546
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 3547
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 3545
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 3551
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1642
    const-string/jumbo v0, "AccountManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 1643
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@11
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1644
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@22
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@24
    new-instance v2, Landroid/os/UserHandle;

    #@26
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2c
    .line 1641
    return-void
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    .line 1611
    if-nez p2, :cond_0

    #@2
    .line 1612
    return-void

    #@3
    .line 1614
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@6
    move-result-object v10

    #@7
    monitor-enter v10

    #@8
    .line 1615
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 1616
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 1618
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    #@15
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@18
    .line 1619
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    #@1b
    invoke-virtual {v9, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 1620
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@21
    move-result-wide v4

    #@22
    .line 1621
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@24
    cmp-long v0, v4, v6

    #@26
    if-ltz v0, :cond_2

    #@28
    .line 1622
    const/4 v0, 0x1

    #@29
    new-array v8, v0, [Ljava/lang/String;

    #@2b
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    const/4 v3, 0x0

    #@30
    aput-object v0, v8, v3

    #@32
    .line 1623
    .local v8, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v0, "accounts"

    #@35
    const-string/jumbo v3, "_id=?"

    #@38
    invoke-virtual {v1, v0, v9, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    .line 1624
    const-string/jumbo v0, "authtokens"

    #@3e
    const-string/jumbo v3, "accounts_id=?"

    #@41
    invoke-virtual {v1, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@44
    .line 1625
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 1626
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    #@52
    .line 1627
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@55
    .line 1629
    if-eqz p3, :cond_1

    #@57
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_3

    #@5d
    .line 1630
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 1632
    .local v2, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "accounts"

    #@64
    move-object v0, p0

    #@65
    move-object v6, p1

    #@66
    move v7, p4

    #@67
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 1635
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@6d
    .line 1637
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@70
    move-result v0

    #@71
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    monitor-exit v10

    #@75
    .line 1610
    return-void

    #@76
    .line 1631
    .restart local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get7()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    move-result-object v2

    #@7a
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    #@7b
    .line 1634
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@7c
    .line 1635
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@7f
    .line 1634
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@80
    .line 1614
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@81
    monitor-exit v10

    #@82
    throw v0
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1703
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1704
    :cond_0
    return-void

    #@5
    .line 1706
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@8
    move-result-object v15

    #@9
    monitor-enter v15

    #@a
    .line 1707
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v3

    #@12
    .line 1708
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 1710
    :try_start_1
    move-object/from16 v0, p0

    #@17
    move-object/from16 v1, p2

    #@19
    invoke-direct {v0, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-wide v4

    #@1d
    .line 1711
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@1f
    cmp-long v2, v4, v6

    #@21
    if-gez v2, :cond_2

    #@23
    .line 1731
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    monitor-exit v15

    #@27
    .line 1712
    return-void

    #@28
    .line 1714
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@2a
    move-object/from16 v1, p3

    #@2c
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    #@2f
    move-result-wide v12

    #@30
    .line 1715
    .local v12, "extrasId":J
    const-wide/16 v6, 0x0

    #@32
    cmp-long v2, v12, v6

    #@34
    if-gez v2, :cond_3

    #@36
    move-object/from16 v2, p0

    #@38
    move-object/from16 v6, p3

    #@3a
    move-object/from16 v7, p4

    #@3c
    .line 1716
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    move-result-wide v12

    #@40
    .line 1717
    const-wide/16 v6, 0x0

    #@42
    cmp-long v2, v12, v6

    #@44
    if-gez v2, :cond_4

    #@46
    .line 1731
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@49
    monitor-exit v15

    #@4a
    .line 1718
    return-void

    #@4b
    .line 1721
    :cond_3
    :try_start_5
    new-instance v14, Landroid/content/ContentValues;

    #@4d
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    #@50
    .line 1722
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    #@53
    move-object/from16 v0, p4

    #@55
    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 1723
    const-string/jumbo v2, "extras"

    #@5b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v7, "_id="

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    const/4 v7, 0x0

    #@70
    invoke-virtual {v3, v2, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@73
    move-result v2

    #@74
    const/4 v6, 0x1

    #@75
    if-eq v6, v2, :cond_4

    #@77
    .line 1731
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    monitor-exit v15

    #@7b
    .line 1724
    return-void

    #@7c
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v6, p0

    #@7e
    move-object/from16 v7, p1

    #@80
    move-object v8, v3

    #@81
    move-object/from16 v9, p2

    #@83
    move-object/from16 v10, p3

    #@85
    move-object/from16 v11, p4

    #@87
    .line 1728
    :try_start_7
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@8a
    .line 1729
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@8d
    .line 1731
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@90
    monitor-exit v15

    #@91
    .line 1702
    return-void

    #@92
    .line 1730
    .end local v4    # "accountId":J
    .end local v12    # "extrasId":J
    :catchall_0
    move-exception v2

    #@93
    .line 1731
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@96
    .line 1730
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@97
    .line 1706
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    #@98
    monitor-exit v15

    #@99
    throw v2
.end method

.method private showCantAddAccount(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2267
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v4, Landroid/accounts/CantAddAccountActivity;

    #@6
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 2268
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string/jumbo v1, "android.accounts.extra.ERROR_CODE"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f
    .line 2269
    const/high16 v1, 0x10000000

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14
    .line 2270
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 2272
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@1a
    new-instance v4, Landroid/os/UserHandle;

    #@1c
    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@1f
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 2274
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@25
    .line 2266
    return-void

    #@26
    .line 2273
    :catchall_0
    move-exception v1

    #@27
    .line 2274
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2a
    .line 2273
    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4000
    if-eqz p0, :cond_0

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "["

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ","

    #@12
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "]"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    :cond_0
    return-object v0
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 834
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@5
    move-result-object v0

    #@6
    .line 835
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    monitor-enter v5

    #@b
    .line 836
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    #@d
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 837
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    #@13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v6

    #@17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1e
    .line 838
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@25
    move-result-object v1

    #@26
    .line 840
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "accounts"

    #@29
    .line 842
    const-string/jumbo v6, "name=? AND type=?"

    #@2c
    .line 843
    const/4 v7, 0x2

    #@2d
    new-array v7, v7, [Ljava/lang/String;

    #@2f
    .line 844
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@31
    const/4 v9, 0x0

    #@32
    aput-object v8, v7, v9

    #@34
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@36
    const/4 v9, 0x1

    #@37
    aput-object v8, v7, v9

    #@39
    .line 839
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result v2

    #@3d
    .line 846
    .local v2, "i":I
    if-lez v2, :cond_0

    #@3f
    monitor-exit v5

    #@40
    .line 847
    return v11

    #@41
    :cond_0
    monitor-exit v5

    #@42
    .line 850
    return v10

    #@43
    .line 835
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@44
    monitor-exit v5

    #@45
    throw v4
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 27
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    #@0
    .prologue
    .line 365
    if-eqz p2, :cond_0

    #@2
    .line 366
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@6
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@9
    move-result v4

    #@a
    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    #@d
    .line 369
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@10
    move-result-object v23

    #@11
    .line 371
    .local v23, "knownAuth":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@15
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@18
    move-result v4

    #@19
    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    #@1c
    move-result-object v3

    #@1d
    .line 370
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v25

    #@21
    .local v25, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v24

    #@2b
    check-cast v24, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@2d
    .line 372
    .local v24, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, v24

    #@2f
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@31
    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    #@33
    move-object/from16 v0, v23

    #@35
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 375
    .end local v24    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3c
    move-result-object v26

    #@3d
    monitor-enter v26

    #@3e
    .line 376
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@45
    move-result-object v2

    #@46
    .line 377
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    #@47
    .line 378
    .local v12, "accountDeleted":Z
    const-string/jumbo v3, "accounts"

    #@4a
    .line 379
    const/4 v4, 0x3

    #@4b
    new-array v4, v4, [Ljava/lang/String;

    #@4d
    const-string/jumbo v5, "_id"

    #@50
    const/4 v6, 0x0

    #@51
    aput-object v5, v4, v6

    #@53
    const-string/jumbo v5, "type"

    #@56
    const/4 v6, 0x1

    #@57
    aput-object v5, v4, v6

    #@59
    const-string/jumbo v5, "name"

    #@5c
    const/4 v6, 0x2

    #@5d
    aput-object v5, v4, v6

    #@5f
    .line 380
    const-string/jumbo v9, "_id"

    #@62
    const/4 v5, 0x0

    #@63
    const/4 v6, 0x0

    #@64
    const/4 v7, 0x0

    #@65
    const/4 v8, 0x0

    #@66
    .line 378
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@69
    move-result-object v21

    #@6a
    .line 382
    .local v21, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@71
    .line 384
    new-instance v16, Ljava/util/LinkedHashMap;

    #@73
    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    #@76
    .line 385
    .local v16, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_5

    #@7c
    .line 386
    const/4 v3, 0x0

    #@7d
    move-object/from16 v0, v21

    #@7f
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    #@82
    move-result-wide v8

    #@83
    .line 387
    .local v8, "accountId":J
    const/4 v3, 0x1

    #@84
    move-object/from16 v0, v21

    #@86
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@89
    move-result-object v17

    #@8a
    .line 388
    .local v17, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    #@8b
    move-object/from16 v0, v21

    #@8d
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@90
    move-result-object v13

    #@91
    .line 390
    .local v13, "accountName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@94
    move-result-object v3

    #@95
    move-object/from16 v0, v23

    #@97
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9a
    move-result v3

    #@9b
    if-nez v3, :cond_3

    #@9d
    .line 391
    const-string/jumbo v3, "AccountManagerService"

    #@a0
    new-instance v4, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v5, "deleting account "

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    const-string/jumbo v5, " because type "

    #@b3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    move-object/from16 v0, v17

    #@b9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    .line 392
    const-string/jumbo v5, " no longer has a registered authenticator"

    #@c0
    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v4

    #@c8
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 393
    const-string/jumbo v3, "accounts"

    #@ce
    new-instance v4, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v5, "_id="

    #@d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    const/4 v5, 0x0

    #@e3
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@e6
    .line 394
    const/4 v12, 0x1

    #@e7
    .line 396
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    #@ea
    move-result-object v6

    #@eb
    const-string/jumbo v7, "accounts"

    #@ee
    move-object/from16 v4, p0

    #@f0
    move-object v5, v2

    #@f1
    move-object/from16 v10, p1

    #@f3
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@f6
    .line 399
    new-instance v11, Landroid/accounts/Account;

    #@f8
    move-object/from16 v0, v17

    #@fa
    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@fd
    .line 400
    .local v11, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@100
    move-result-object v3

    #@101
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 401
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@107
    move-result-object v3

    #@108
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    .line 402
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@112
    goto/16 :goto_1

    #@114
    .line 424
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v16    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v17    # "accountType":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@115
    .line 425
    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    #@118
    .line 426
    if-eqz v12, :cond_2

    #@11a
    .line 427
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@11d
    move-result v4

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@123
    .line 424
    :cond_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@124
    .line 375
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v21    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    #@125
    monitor-exit v26

    #@126
    throw v3

    #@127
    .line 404
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v12    # "accountDeleted":Z
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v16    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v17    # "accountType":Ljava/lang/String;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    move-result-object v15

    #@12b
    check-cast v15, Ljava/util/ArrayList;

    #@12d
    .line 405
    .local v15, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_4

    #@12f
    .line 406
    new-instance v15, Ljava/util/ArrayList;

    #@131
    .end local v15    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@134
    .line 407
    .restart local v15    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@136
    move-object/from16 v1, v17

    #@138
    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    .line 409
    :cond_4
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13e
    goto/16 :goto_1

    #@140
    .line 413
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "accountType":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@143
    move-result-object v3

    #@144
    .line 412
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@147
    move-result-object v20

    #@148
    .local v20, "cur$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_7

    #@14e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@151
    move-result-object v19

    #@152
    check-cast v19, Ljava/util/Map$Entry;

    #@154
    .line 414
    .local v19, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@157
    move-result-object v17

    #@158
    check-cast v17, Ljava/lang/String;

    #@15a
    .line 415
    .restart local v17    # "accountType":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@15d
    move-result-object v15

    #@15e
    check-cast v15, Ljava/util/ArrayList;

    #@160
    .line 416
    .restart local v15    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@163
    move-result v3

    #@164
    new-array v0, v3, [Landroid/accounts/Account;

    #@166
    move-object/from16 v18, v0

    #@168
    .line 417
    .local v18, "accountsForType":[Landroid/accounts/Account;
    const/16 v22, 0x0

    #@16a
    .line 418
    .local v22, "i":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16d
    move-result-object v14

    #@16e
    .local v14, "accountName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@171
    move-result v3

    #@172
    if-eqz v3, :cond_6

    #@174
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@177
    move-result-object v13

    #@178
    check-cast v13, Ljava/lang/String;

    #@17a
    .line 419
    .restart local v13    # "accountName":Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    #@17c
    move-object/from16 v0, v17

    #@17e
    invoke-direct {v3, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@181
    aput-object v3, v18, v22

    #@183
    .line 420
    add-int/lit8 v22, v22, 0x1

    #@185
    goto :goto_3

    #@186
    .line 422
    .end local v13    # "accountName":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@189
    move-result-object v3

    #@18a
    move-object/from16 v0, v17

    #@18c
    move-object/from16 v1, v18

    #@18e
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@191
    goto :goto_2

    #@192
    .line 425
    .end local v14    # "accountName$iterator":Ljava/util/Iterator;
    .end local v15    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v18    # "accountsForType":[Landroid/accounts/Account;
    .end local v19    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22    # "i":I
    :cond_7
    :try_start_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    #@195
    .line 426
    if-eqz v12, :cond_8

    #@197
    .line 427
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@19a
    move-result v3

    #@19b
    move-object/from16 v0, p0

    #@19d
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1a0
    :cond_8
    monitor-exit v26

    #@1a1
    .line 364
    return-void
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x0

    #@3
    .line 800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 801
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@a
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 803
    const-string/jumbo v6, "accountAuthenticated( account: %s, callerUid: %s)"

    #@13
    .line 802
    new-array v7, v10, [Ljava/lang/Object;

    #@15
    .line 804
    aput-object p1, v7, v9

    #@17
    .line 805
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v8

    #@1b
    aput-object v8, v7, v11

    #@1d
    .line 802
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 806
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@24
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 808
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@29
    .line 809
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v7, "account is null"

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 811
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@35
    move-result v5

    #@36
    .line 812
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@38
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@3b
    move-result v6

    #@3c
    if-nez v6, :cond_2

    #@3e
    .line 814
    const-string/jumbo v6, "uid %s cannot notify authentication for accounts of type: %s"

    #@41
    .line 813
    new-array v7, v10, [Ljava/lang/Object;

    #@43
    .line 815
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v8

    #@47
    aput-object v8, v7, v9

    #@49
    .line 816
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4b
    aput-object v8, v7, v11

    #@4d
    .line 813
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 817
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@53
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v6

    #@57
    .line 820
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    #@5a
    move-result v6

    #@5b
    if-eqz v6, :cond_3

    #@5d
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5f
    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_3

    #@65
    .line 824
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@68
    move-result-wide v2

    #@69
    .line 826
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@6c
    move-result-object v0

    #@6d
    .line 827
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result v6

    #@71
    .line 829
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 827
    return v6

    #@75
    .line 821
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    #@76
    .line 828
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    #@77
    .line 829
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@7a
    .line 828
    throw v6
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2114
    const-string/jumbo v4, "AccountManagerService"

    #@3
    const/4 v5, 0x2

    #@4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 2115
    const-string/jumbo v4, "AccountManagerService"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "addAccount: accountType "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 2116
    const-string/jumbo v6, ", response "

    #@22
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 2117
    const-string/jumbo v6, ", authTokenType "

    #@2f
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    move-object/from16 v0, p3

    #@35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 2118
    const-string/jumbo v6, ", requiredFeatures "

    #@3c
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    .line 2118
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 2119
    const-string/jumbo v6, ", expectActivityLaunch "

    #@4b
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    move/from16 v0, p5

    #@51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 2120
    const-string/jumbo v6, ", caller\'s uid "

    #@58
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 2120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5f
    move-result v6

    #@60
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 2121
    const-string/jumbo v6, ", pid "

    #@67
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 2121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6e
    move-result v6

    #@6f
    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 2123
    :cond_0
    if-nez p1, :cond_1

    #@7c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7e
    const-string/jumbo v5, "response is null"

    #@81
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v4

    #@85
    .line 2124
    :cond_1
    if-nez p2, :cond_2

    #@87
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@89
    const-string/jumbo v5, "accountType is null"

    #@8c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v4

    #@90
    .line 2127
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@97
    move-result v24

    #@98
    .line 2128
    .local v24, "userId":I
    move-object/from16 v0, p0

    #@9a
    move/from16 v1, v24

    #@9c
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    #@9f
    move-result v4

    #@a0
    if-nez v4, :cond_3

    #@a2
    .line 2131
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@a5
    .line 2130
    const/16 v5, 0x64

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@ac
    .line 2134
    :goto_0
    const/16 v4, 0x64

    #@ae
    move-object/from16 v0, p0

    #@b0
    move/from16 v1, v24

    #@b2
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@b5
    .line 2135
    return-void

    #@b6
    .line 2137
    :cond_3
    move-object/from16 v0, p0

    #@b8
    move/from16 v1, v24

    #@ba
    move-object/from16 v2, p2

    #@bc
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;)Z

    #@bf
    move-result v4

    #@c0
    if-nez v4, :cond_4

    #@c2
    .line 2140
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@c5
    .line 2139
    const/16 v5, 0x65

    #@c7
    move-object/from16 v0, p1

    #@c9
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@cc
    .line 2143
    :goto_1
    const/16 v4, 0x65

    #@ce
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, v24

    #@d2
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@d5
    .line 2145
    return-void

    #@d6
    .line 2148
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d9
    move-result v19

    #@da
    .line 2149
    .local v19, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@dd
    move-result v23

    #@de
    .line 2150
    .local v23, "uid":I
    if-nez p6, :cond_5

    #@e0
    new-instance v17, Landroid/os/Bundle;

    #@e2
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@e5
    .line 2151
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    #@e8
    move-object/from16 v0, v17

    #@ea
    move/from16 v1, v23

    #@ec
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ef
    .line 2152
    const-string/jumbo v4, "callerPid"

    #@f2
    move-object/from16 v0, v17

    #@f4
    move/from16 v1, v19

    #@f6
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f9
    .line 2154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@fc
    move-result v25

    #@fd
    .line 2155
    .local v25, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@100
    move-result-wide v20

    #@101
    .line 2157
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    #@103
    move/from16 v1, v25

    #@105
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@108
    move-result-object v7

    #@109
    .line 2159
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    #@10c
    move-result-object v4

    #@10d
    const-string/jumbo v5, "accounts"

    #@110
    .line 2158
    move-object/from16 v0, p0

    #@112
    move/from16 v1, v23

    #@114
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@117
    .line 2160
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$7;

    #@119
    .line 2161
    const/4 v11, 0x1

    #@11a
    const/4 v12, 0x0

    #@11b
    .line 2162
    const/4 v13, 0x0

    #@11c
    const/4 v14, 0x1

    #@11d
    move-object/from16 v5, p0

    #@11f
    move-object/from16 v6, p0

    #@121
    move-object/from16 v8, p1

    #@123
    move-object/from16 v9, p2

    #@125
    move/from16 v10, p5

    #@127
    move-object/from16 v15, p3

    #@129
    move-object/from16 v16, p4

    #@12b
    move-object/from16 v18, p2

    #@12d
    .line 2160
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@130
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@133
    .line 2180
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@136
    .line 2113
    return-void

    #@137
    .line 2150
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :cond_5
    move-object/from16 v17, p6

    #@139
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@13a
    .line 2179
    .restart local v20    # "identityToken":J
    .restart local v25    # "usrId":I
    :catchall_0
    move-exception v4

    #@13b
    .line 2180
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@13e
    .line 2179
    throw v4

    #@13f
    .line 2141
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "pid":I
    .end local v20    # "identityToken":J
    .end local v23    # "uid":I
    .end local v25    # "usrId":I
    :catch_0
    move-exception v22

    #@140
    .local v22, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@141
    .line 2132
    .end local v22    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    #@142
    .restart local v22    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 25
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    #@0
    .prologue
    .line 2188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v19

    #@4
    .line 2189
    .local v19, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    #@7
    const/4 v5, 0x2

    #@8
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 2190
    const-string/jumbo v4, "AccountManagerService"

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "addAccount: accountType "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 2191
    const-string/jumbo v6, ", response "

    #@26
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 2192
    const-string/jumbo v6, ", authTokenType "

    #@33
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    move-object/from16 v0, p3

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 2193
    const-string/jumbo v6, ", requiredFeatures "

    #@40
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 2193
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 2194
    const-string/jumbo v6, ", expectActivityLaunch "

    #@4f
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    move/from16 v0, p5

    #@55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    .line 2195
    const-string/jumbo v6, ", caller\'s uid "

    #@5c
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    .line 2195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v6

    #@64
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 2196
    const-string/jumbo v6, ", pid "

    #@6b
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 2196
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@72
    move-result v6

    #@73
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    .line 2197
    const-string/jumbo v6, ", for user id "

    #@7a
    .line 2190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    move/from16 v0, p7

    #@80
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 2199
    :cond_0
    if-nez p1, :cond_1

    #@8d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v5, "response is null"

    #@92
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 2200
    :cond_1
    if-nez p2, :cond_2

    #@98
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9a
    const-string/jumbo v5, "accountType is null"

    #@9d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v4

    #@a1
    .line 2202
    :cond_2
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, v19

    #@a5
    move/from16 v2, p7

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_3

    #@ad
    .line 2203
    new-instance v4, Ljava/lang/SecurityException;

    #@af
    .line 2205
    const-string/jumbo v5, "User %s trying to add account for %s"

    #@b2
    .line 2204
    const/4 v6, 0x2

    #@b3
    new-array v6, v6, [Ljava/lang/Object;

    #@b5
    .line 2206
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b8
    move-result v8

    #@b9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v8

    #@bd
    const/4 v9, 0x0

    #@be
    aput-object v8, v6, v9

    #@c0
    .line 2207
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v8

    #@c4
    const/4 v9, 0x1

    #@c5
    aput-object v8, v6, v9

    #@c7
    .line 2204
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    .line 2203
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v4

    #@cf
    .line 2211
    :cond_3
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, p7

    #@d3
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    #@d6
    move-result v4

    #@d7
    if-nez v4, :cond_4

    #@d9
    .line 2214
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@dc
    .line 2213
    const/16 v5, 0x64

    #@de
    move-object/from16 v0, p1

    #@e0
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@e3
    .line 2217
    :goto_0
    const/16 v4, 0x64

    #@e5
    move-object/from16 v0, p0

    #@e7
    move/from16 v1, p7

    #@e9
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@ec
    .line 2218
    return-void

    #@ed
    .line 2220
    :cond_4
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, p7

    #@f1
    move-object/from16 v2, p2

    #@f3
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;)Z

    #@f6
    move-result v4

    #@f7
    if-nez v4, :cond_5

    #@f9
    .line 2223
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@fc
    .line 2222
    const/16 v5, 0x65

    #@fe
    move-object/from16 v0, p1

    #@100
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@103
    .line 2226
    :goto_1
    const/16 v4, 0x65

    #@105
    move-object/from16 v0, p0

    #@107
    move/from16 v1, p7

    #@109
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@10c
    .line 2228
    return-void

    #@10d
    .line 2231
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@110
    move-result v22

    #@111
    .line 2232
    .local v22, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@114
    move-result v24

    #@115
    .line 2233
    .local v24, "uid":I
    if-nez p6, :cond_6

    #@117
    new-instance v17, Landroid/os/Bundle;

    #@119
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@11c
    .line 2234
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    #@11f
    move-object/from16 v0, v17

    #@121
    move/from16 v1, v24

    #@123
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@126
    .line 2235
    const-string/jumbo v4, "callerPid"

    #@129
    move-object/from16 v0, v17

    #@12b
    move/from16 v1, v22

    #@12d
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@130
    .line 2237
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@133
    move-result-wide v20

    #@134
    .line 2239
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    #@136
    move/from16 v1, p7

    #@138
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@13b
    move-result-object v7

    #@13c
    .line 2241
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    #@13f
    move-result-object v4

    #@140
    const-string/jumbo v5, "accounts"

    #@143
    .line 2240
    move-object/from16 v0, p0

    #@145
    move/from16 v1, p7

    #@147
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@14a
    .line 2242
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$8;

    #@14c
    .line 2243
    const/4 v11, 0x1

    #@14d
    const/4 v12, 0x0

    #@14e
    .line 2244
    const/4 v13, 0x0

    #@14f
    const/4 v14, 0x1

    #@150
    move-object/from16 v5, p0

    #@152
    move-object/from16 v6, p0

    #@154
    move-object/from16 v8, p1

    #@156
    move-object/from16 v9, p2

    #@158
    move/from16 v10, p5

    #@15a
    move-object/from16 v15, p3

    #@15c
    move-object/from16 v16, p4

    #@15e
    move-object/from16 v18, p2

    #@160
    .line 2242
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@163
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@166
    .line 2262
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@169
    .line 2187
    return-void

    #@16a
    .line 2233
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    #@16c
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@16d
    .line 2261
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@16e
    .line 2262
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@171
    .line 2261
    throw v4

    #@172
    .line 2224
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v22    # "pid":I
    .end local v24    # "uid":I
    :catch_0
    move-exception v23

    #@173
    .local v23, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@174
    .line 2215
    .end local v23    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    #@175
    .restart local v23    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v6

    #@6
    .line 709
    .local v6, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@9
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 710
    const-string/jumbo v0, "AccountManagerService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "addAccountExplicitly: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 711
    const-string/jumbo v3, ", caller\'s uid "

    #@25
    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 712
    const-string/jumbo v3, ", pid "

    #@30
    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 712
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v3

    #@38
    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 714
    :cond_0
    if-nez p1, :cond_1

    #@45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    const-string/jumbo v2, "account is null"

    #@4a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 715
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@51
    move-result v10

    #@52
    .line 716
    .local v10, "userId":I
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@54
    invoke-direct {p0, v0, v6, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_2

    #@5a
    .line 718
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    #@5d
    .line 717
    new-array v2, v5, [Ljava/lang/Object;

    #@5f
    .line 719
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v3

    #@63
    aput-object v3, v2, v4

    #@65
    .line 720
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v4, 0x1

    #@68
    aput-object v3, v2, v4

    #@6a
    .line 717
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    .line 721
    .local v7, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v0

    #@74
    .line 732
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v8

    #@78
    .line 734
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v1

    #@7c
    .line 735
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@7d
    move-object v0, p0

    #@7e
    move-object v2, p1

    #@7f
    move-object v3, p2

    #@80
    move-object v4, p3

    #@81
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    move-result v0

    #@85
    .line 737
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@88
    .line 735
    return v0

    #@89
    .line 736
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@8a
    .line 737
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8d
    .line 736
    throw v0
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 2653
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 2654
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 2655
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v1

    #@12
    .line 2656
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    #@14
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@17
    .line 2657
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@1a
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1c
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 2658
    const-string/jumbo v0, "type"

    #@22
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@24
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 2659
    const-string/jumbo v0, "shared_accounts"

    #@2a
    const-string/jumbo v2, "name=? AND type=?"

    #@2d
    .line 2660
    const/4 v3, 0x2

    #@2e
    new-array v3, v3, [Ljava/lang/String;

    #@30
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@32
    aput-object v8, v3, v9

    #@34
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@36
    aput-object v8, v3, v10

    #@38
    .line 2659
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    .line 2661
    const-string/jumbo v0, "shared_accounts"

    #@3e
    const-string/jumbo v2, "name"

    #@41
    invoke-virtual {v1, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@44
    move-result-wide v4

    #@45
    .line 2662
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    #@47
    cmp-long v0, v4, v2

    #@49
    if-gez v0, :cond_0

    #@4b
    .line 2663
    const-string/jumbo v0, "AccountManagerService"

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "insertAccountIntoDatabase: "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 2664
    const-string/jumbo v3, ", skipping the DB insert failed"

    #@61
    .line 2663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 2665
    return v9

    #@6d
    .line 2667
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    const-string/jumbo v3, "shared_accounts"

    #@74
    move-object v0, p0

    #@75
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@78
    .line 2668
    return v10
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3679
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3681
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v3, "notification"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/app/NotificationManager;

    #@f
    .line 3682
    const/4 v3, 0x0

    #@10
    .line 3681
    invoke-virtual {v2, v3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 3684
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@16
    .line 3678
    return-void

    #@17
    .line 3683
    :catchall_0
    move-exception v2

    #@18
    .line 3684
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1b
    .line 3683
    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1650
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1651
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "clearPassword: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1652
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1651
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1653
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1651
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1653
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1651
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1655
    :cond_0
    if-nez p1, :cond_1

    #@44
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v7, "account is null"

    #@49
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 1656
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 1657
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 1659
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    #@5c
    .line 1658
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 1660
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 1661
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1658
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 1662
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1664
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 1666
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 1667
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    #@7d
    invoke-direct {p0, v0, p1, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 1669
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@83
    .line 1648
    return-void

    #@84
    .line 1668
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@85
    .line 1669
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@88
    .line 1668
    throw v6
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 2285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v15

    #@4
    .line 2286
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    #@7
    const/4 v3, 0x2

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2287
    const-string/jumbo v2, "AccountManagerService"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "confirmCredentials: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 2288
    const-string/jumbo v4, ", response "

    #@26
    .line 2287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 2289
    const-string/jumbo v4, ", expectActivityLaunch "

    #@33
    .line 2287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    move/from16 v0, p4

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 2290
    const-string/jumbo v4, ", caller\'s uid "

    #@40
    .line 2287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 2291
    const-string/jumbo v4, ", pid "

    #@4b
    .line 2287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 2291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@52
    move-result v4

    #@53
    .line 2287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2294
    :cond_0
    move-object/from16 v0, p0

    #@60
    move/from16 v1, p5

    #@62
    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_1

    #@68
    .line 2295
    new-instance v2, Ljava/lang/SecurityException;

    #@6a
    .line 2297
    const-string/jumbo v3, "User %s trying to confirm account credentials for %s"

    #@6d
    .line 2296
    const/4 v4, 0x2

    #@6e
    new-array v4, v4, [Ljava/lang/Object;

    #@70
    .line 2298
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@73
    move-result v6

    #@74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v6

    #@78
    const/4 v7, 0x0

    #@79
    aput-object v6, v4, v7

    #@7b
    .line 2299
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v6

    #@7f
    const/4 v7, 0x1

    #@80
    aput-object v6, v4, v7

    #@82
    .line 2296
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    .line 2295
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v2

    #@8a
    .line 2301
    :cond_1
    if-nez p1, :cond_2

    #@8c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8e
    const-string/jumbo v3, "response is null"

    #@91
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v2

    #@95
    .line 2302
    :cond_2
    if-nez p2, :cond_3

    #@97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@99
    const-string/jumbo v3, "account is null"

    #@9c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v2

    #@a0
    .line 2303
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a3
    move-result-wide v16

    #@a4
    .line 2305
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@a6
    move/from16 v1, p5

    #@a8
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@ab
    move-result-object v5

    #@ac
    .line 2306
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$9;

    #@ae
    move-object/from16 v0, p2

    #@b0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b2
    .line 2307
    move-object/from16 v0, p2

    #@b4
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b6
    const/4 v9, 0x1

    #@b7
    .line 2308
    const/4 v11, 0x1

    #@b8
    const/4 v12, 0x1

    #@b9
    move-object/from16 v3, p0

    #@bb
    move-object/from16 v4, p0

    #@bd
    move-object/from16 v6, p1

    #@bf
    move/from16 v8, p4

    #@c1
    move-object/from16 v13, p2

    #@c3
    move-object/from16 v14, p3

    #@c5
    .line 2306
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    #@c8
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cb
    .line 2320
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@ce
    .line 2284
    return-void

    #@cf
    .line 2319
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@d0
    .line 2320
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d3
    .line 2319
    throw v2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    #@0
    .prologue
    .line 744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v15

    #@4
    .line 745
    .local v15, "callingUid":I
    const/4 v2, -0x1

    #@5
    move-object/from16 v0, p0

    #@7
    invoke-direct {v0, v15, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 746
    new-instance v2, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 749
    :cond_0
    move-object/from16 v0, p0

    #@18
    move/from16 v1, p3

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1d
    move-result-object v5

    #@1e
    .line 750
    .local v5, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@20
    move/from16 v1, p4

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@25
    move-result-object v14

    #@26
    .line 751
    .local v14, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v5, :cond_1

    #@28
    if-nez v14, :cond_3

    #@2a
    .line 752
    :cond_1
    if-eqz p1, :cond_2

    #@2c
    .line 753
    new-instance v17, Landroid/os/Bundle;

    #@2e
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@31
    .line 754
    .local v17, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    #@34
    const/4 v3, 0x0

    #@35
    move-object/from16 v0, v17

    #@37
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3a
    .line 756
    :try_start_0
    move-object/from16 v0, p1

    #@3c
    move-object/from16 v1, v17

    #@3e
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 761
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    #@42
    .line 757
    .restart local v17    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v16

    #@43
    .line 758
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "Failed to report error back to the client."

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    move-object/from16 v0, v16

    #@54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_0

    #@60
    .line 764
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v17    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v2, "AccountManagerService"

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "Copying account "

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    move-object/from16 v0, p2

    #@71
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    .line 765
    const-string/jumbo v4, " from user "

    #@7a
    .line 764
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    move/from16 v0, p3

    #@80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    .line 765
    const-string/jumbo v4, " to user "

    #@87
    .line 764
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    move/from16 v0, p4

    #@8d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 766
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@9b
    move-result-wide v18

    #@9c
    .line 768
    .local v18, "identityToken":J
    :try_start_1
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$3;

    #@9e
    move-object/from16 v0, p2

    #@a0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a2
    .line 769
    move-object/from16 v0, p2

    #@a4
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a6
    .line 768
    const/4 v8, 0x0

    #@a7
    .line 769
    const/4 v9, 0x0

    #@a8
    .line 770
    const/4 v11, 0x0

    #@a9
    move-object/from16 v3, p0

    #@ab
    move-object/from16 v4, p0

    #@ad
    move-object/from16 v6, p1

    #@af
    move-object/from16 v12, p2

    #@b1
    move-object/from16 v13, p1

    #@b3
    .line 768
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@b6
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$3;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b9
    .line 794
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@bc
    .line 743
    return-void

    #@bd
    .line 793
    :catchall_0
    move-exception v2

    #@be
    .line 794
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c1
    .line 793
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3556
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3558
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 3559
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 3558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 3559
    const-string/jumbo v1, ", uid="

    #@22
    .line 3558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 3559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 3558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 3560
    const-string/jumbo v1, " without permission "

    #@31
    .line 3558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 3560
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 3558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 3561
    return-void

    #@44
    .line 3563
    :cond_0
    const-string/jumbo v0, "--checkin"

    #@47
    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_1

    #@4d
    const-string/jumbo v0, "-c"

    #@50
    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    #@53
    move-result v5

    #@54
    .line 3564
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@56
    const-string/jumbo v0, "  "

    #@59
    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@5c
    .line 3566
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@63
    move-result-object v8

    #@64
    .line 3567
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v7

    #@68
    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_2

    #@6e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v6

    #@72
    check-cast v6, Landroid/content/pm/UserInfo;

    #@74
    .line 3568
    .local v6, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v1, "User "

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    const-string/jumbo v1, ":"

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 3569
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@95
    .line 3570
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    #@97
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9a
    move-result-object v1

    #@9b
    move-object v0, p0

    #@9c
    move-object v2, p1

    #@9d
    move-object v4, p3

    #@9e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    #@a1
    .line 3571
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a4
    .line 3572
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@a7
    goto :goto_1

    #@a8
    .line 3563
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v5, 0x1

    #@a9
    .local v5, "isCheckinRequest":Z
    goto :goto_0

    #@aa
    .line 3555
    .end local v5    # "isCheckinRequest":Z
    .restart local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v7    # "user$iterator":Ljava/util/Iterator;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    #@0
    .prologue
    .line 2367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v15

    #@4
    .line 2368
    .local v15, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    #@7
    const/4 v5, 0x2

    #@8
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 2369
    const-string/jumbo v4, "AccountManagerService"

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "editProperties: accountType "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 2370
    const-string/jumbo v6, ", response "

    #@26
    .line 2369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 2371
    const-string/jumbo v6, ", expectActivityLaunch "

    #@33
    .line 2369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    move/from16 v0, p3

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 2372
    const-string/jumbo v6, ", caller\'s uid "

    #@40
    .line 2369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 2373
    const-string/jumbo v6, ", pid "

    #@4b
    .line 2369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 2373
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@52
    move-result v6

    #@53
    .line 2369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2375
    :cond_0
    if-nez p1, :cond_1

    #@60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@62
    const-string/jumbo v5, "response is null"

    #@65
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v4

    #@69
    .line 2376
    :cond_1
    if-nez p2, :cond_2

    #@6b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v5, "accountType is null"

    #@70
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v4

    #@74
    .line 2377
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@77
    move-result v19

    #@78
    .line 2378
    .local v19, "userId":I
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, p2

    #@7c
    move/from16 v2, v19

    #@7e
    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@81
    move-result v4

    #@82
    if-nez v4, :cond_3

    #@84
    move-object/from16 v0, p0

    #@86
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@89
    move-result v4

    #@8a
    if-eqz v4, :cond_4

    #@8c
    .line 2385
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8f
    move-result-wide v16

    #@90
    .line 2387
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@92
    move/from16 v1, v19

    #@94
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@97
    move-result-object v7

    #@98
    .line 2388
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$11;

    #@9a
    .line 2389
    const/4 v11, 0x1

    #@9b
    const/4 v12, 0x0

    #@9c
    .line 2390
    const/4 v13, 0x0

    #@9d
    move-object/from16 v5, p0

    #@9f
    move-object/from16 v6, p0

    #@a1
    move-object/from16 v8, p1

    #@a3
    move-object/from16 v9, p2

    #@a5
    move/from16 v10, p3

    #@a7
    move-object/from16 v14, p2

    #@a9
    .line 2388
    invoke-direct/range {v4 .. v14}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    #@ac
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@af
    .line 2402
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b2
    .line 2366
    return-void

    #@b3
    .line 2380
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "identityToken":J
    :cond_4
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    #@b6
    .line 2379
    const/4 v5, 0x2

    #@b7
    new-array v5, v5, [Ljava/lang/Object;

    #@b9
    .line 2381
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v6

    #@bd
    const/4 v8, 0x0

    #@be
    aput-object v6, v5, v8

    #@c0
    .line 2382
    const/4 v6, 0x1

    #@c1
    aput-object p2, v5, v6

    #@c3
    .line 2379
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c6
    move-result-object v18

    #@c7
    .line 2383
    .local v18, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v4

    #@cf
    .line 2401
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    #@d0
    .line 2402
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d3
    .line 2401
    throw v4
.end method

.method public getAccounts(I)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 2512
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(II)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 2513
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 2514
    const/4 v5, 0x0

    #@f
    new-array v5, v5, [Landroid/accounts/Account;

    #@11
    return-object v5

    #@12
    .line 2516
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 2518
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@19
    move-result-object v0

    #@1a
    .line 2522
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@1b
    .line 2519
    invoke-direct {p0, v0, v1, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v5

    #@1f
    .line 2525
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@22
    .line 2519
    return-object v5

    #@23
    .line 2524
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v5

    #@24
    .line 2525
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@27
    .line 2524
    throw v5
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2745
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2575
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 2777
    .local v8, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    #@7
    const/4 v3, 0x2

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2778
    const-string/jumbo v2, "AccountManagerService"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "getAccounts: accountType "

    #@19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 2779
    const-string/jumbo v5, ", response "

    #@26
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 2780
    const-string/jumbo v5, ", features "

    #@33
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 2780
    invoke-static/range {p3 .. p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 2781
    const-string/jumbo v5, ", caller\'s uid "

    #@42
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 2782
    const-string/jumbo v5, ", pid "

    #@4d
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 2782
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v5

    #@55
    .line 2778
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 2784
    :cond_0
    if-nez p1, :cond_1

    #@62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v3, "response is null"

    #@67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 2785
    :cond_1
    if-nez p2, :cond_2

    #@6d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v3, "accountType is null"

    #@72
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 2786
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@79
    move-result v14

    #@7a
    .line 2788
    .local v14, "userId":I
    move-object/from16 v0, p0

    #@7c
    invoke-direct {v0, v8, v14}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(II)Ljava/util/List;

    #@7f
    move-result-object v15

    #@80
    .line 2789
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    #@82
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@85
    move-result v2

    #@86
    if-nez v2, :cond_3

    #@88
    .line 2790
    new-instance v11, Landroid/os/Bundle;

    #@8a
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@8d
    .line 2792
    .local v11, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@90
    const/4 v3, 0x0

    #@91
    new-array v3, v3, [Landroid/accounts/Account;

    #@93
    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@96
    .line 2794
    :try_start_0
    move-object/from16 v0, p1

    #@98
    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    .line 2798
    :goto_0
    return-void

    #@9c
    .line 2795
    :catch_0
    move-exception v10

    #@9d
    .line 2796
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@a0
    const-string/jumbo v3, "Cannot respond to caller do to exception."

    #@a3
    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a6
    goto :goto_0

    #@a7
    .line 2800
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@aa
    move-result-wide v12

    #@ab
    .line 2802
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b0
    move-result-object v4

    #@b1
    .line 2803
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_4

    #@b3
    move-object/from16 v0, p3

    #@b5
    array-length v2, v0

    #@b6
    if-nez v2, :cond_5

    #@b8
    .line 2805
    :cond_4
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@bb
    move-result-object v2

    #@bc
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@bd
    .line 2806
    const/4 v3, 0x0

    #@be
    :try_start_2
    move-object/from16 v0, p0

    #@c0
    move-object/from16 v1, p2

    #@c2
    invoke-virtual {v0, v4, v1, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c5
    move-result-object v9

    #@c6
    .local v9, "accounts":[Landroid/accounts/Account;
    :try_start_3
    monitor-exit v2

    #@c7
    .line 2808
    new-instance v11, Landroid/os/Bundle;

    #@c9
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@cc
    .line 2809
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@cf
    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@d2
    .line 2810
    move-object/from16 v0, p0

    #@d4
    move-object/from16 v1, p1

    #@d6
    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d9
    .line 2820
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@dc
    .line 2811
    return-void

    #@dd
    .line 2805
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@de
    :try_start_4
    monitor-exit v2

    #@df
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e0
    .line 2819
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v2

    #@e1
    .line 2820
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@e4
    .line 2819
    throw v2

    #@e5
    .line 2813
    .restart local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_5
    :try_start_5
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    #@e7
    move-object/from16 v3, p0

    #@e9
    move-object/from16 v5, p1

    #@eb
    move-object/from16 v6, p2

    #@ed
    move-object/from16 v7, p3

    #@ef
    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    #@f2
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f5
    .line 2820
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@f8
    .line 2775
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2760
    const/4 v0, -0x1

    #@1
    .line 2762
    .local v0, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    .line 2763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v3

    #@9
    .line 2762
    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v0

    #@d
    .line 2768
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v2

    #@11
    invoke-direct {p0, p1, v2, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 2764
    :catch_0
    move-exception v1

    #@17
    .line 2765
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Couldn\'t determine the packageUid for "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2766
    const/4 v2, 0x0

    #@36
    new-array v2, v2, [Landroid/accounts/Account;

    #@38
    return-object v2
.end method

.method public getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 2750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 2751
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 2752
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "getAccountsForPackage() called from unauthorized uid "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 2753
    const-string/jumbo v3, " with uid="

    #@23
    .line 2752
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 2755
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@36
    move-result v1

    #@37
    const/4 v2, 0x0

    #@38
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;I)[Landroid/accounts/Account;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method protected getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4112
    if-eqz p2, :cond_1

    #@3
    .line 4113
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Landroid/accounts/Account;

    #@d
    .line 4114
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_0

    #@f
    .line 4115
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@11
    return-object v5

    #@12
    .line 4117
    :cond_0
    array-length v5, v0

    #@13
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, [Landroid/accounts/Account;

    #@19
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1c
    move-result-object v5

    #@1d
    return-object v5

    #@1e
    .line 4121
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    #@1f
    .line 4122
    .local v4, "totalLength":I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v5

    #@27
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "accounts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, [Landroid/accounts/Account;

    #@37
    .line 4123
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    #@38
    add-int/2addr v4, v5

    #@39
    goto :goto_0

    #@3a
    .line 4125
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    #@3c
    .line 4126
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@3e
    return-object v5

    #@3f
    .line 4128
    :cond_3
    new-array v0, v4, [Landroid/accounts/Account;

    #@41
    .line 4129
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    #@42
    .line 4130
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@49
    move-result-object v5

    #@4a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v3

    #@4e
    .local v3, "accountsOfType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_4

    #@54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, [Landroid/accounts/Account;

    #@5a
    .line 4132
    .local v2, "accountsOfType":[Landroid/accounts/Account;
    array-length v5, v2

    #@5b
    .line 4131
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5e
    .line 4133
    array-length v5, v2

    #@5f
    add-int/2addr v4, v5

    #@60
    goto :goto_1

    #@61
    .line 4135
    .end local v2    # "accountsOfType":[Landroid/accounts/Account;
    :cond_4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    #@64
    move-result-object v5

    #@65
    return-object v5
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 4

    #@0
    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 2548
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    new-array v1, v3, [I

    #@e
    .line 2549
    .local v1, "userIds":[I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@10
    if-ge v0, v3, :cond_0

    #@12
    .line 2550
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/content/pm/UserInfo;

    #@18
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@1a
    aput v3, v1, v0

    #@1c
    .line 2549
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2552
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 44
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1812
    const-string/jumbo v6, "AccountManagerService"

    #@3
    const/4 v8, 0x2

    #@4
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 1813
    const-string/jumbo v6, "AccountManagerService"

    #@d
    new-instance v8, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v9, "getAuthToken: "

    #@15
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    .line 1814
    const-string/jumbo v9, ", response "

    #@22
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    .line 1815
    const-string/jumbo v9, ", authTokenType "

    #@2f
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    move-object/from16 v0, p3

    #@35
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    .line 1816
    const-string/jumbo v9, ", notifyOnAuthFailure "

    #@3c
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    move/from16 v0, p4

    #@42
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    .line 1817
    const-string/jumbo v9, ", expectActivityLaunch "

    #@49
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    move/from16 v0, p5

    #@4f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    .line 1818
    const-string/jumbo v9, ", caller\'s uid "

    #@56
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5d
    move-result v9

    #@5e
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    .line 1819
    const-string/jumbo v9, ", pid "

    #@65
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6c
    move-result v9

    #@6d
    .line 1813
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 1821
    :cond_0
    if-nez p1, :cond_1

    #@7a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v8, "response is null"

    #@7f
    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v6

    #@83
    .line 1823
    :cond_1
    if-nez p2, :cond_2

    #@85
    .line 1824
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    #@88
    const-string/jumbo v8, "getAuthToken called with null account"

    #@8b
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 1825
    const-string/jumbo v6, "account is null"

    #@91
    const/4 v8, 0x7

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    #@97
    .line 1826
    return-void

    #@98
    .line 1828
    :cond_2
    if-nez p3, :cond_3

    #@9a
    .line 1829
    const-string/jumbo v6, "AccountManagerService"

    #@9d
    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    #@a0
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 1830
    const-string/jumbo v6, "authTokenType is null"

    #@a6
    const/4 v8, 0x7

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    .line 1831
    return-void

    #@ad
    .line 1833
    :catch_0
    move-exception v35

    #@ae
    .line 1834
    .local v35, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccountManagerService"

    #@b1
    new-instance v8, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v9, "Failed to report error back to the client."

    #@b9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v8

    #@bd
    move-object/from16 v0, v35

    #@bf
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v8

    #@c3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v8

    #@c7
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 1835
    return-void

    #@cb
    .line 1837
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@ce
    move-result v43

    #@cf
    .line 1838
    .local v43, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d2
    move-result-wide v36

    #@d3
    .line 1842
    .local v36, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    #@d5
    move/from16 v1, v43

    #@d7
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@da
    move-result-object v7

    #@db
    .line 1843
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@dd
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@df
    .line 1844
    move-object/from16 v0, p2

    #@e1
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e3
    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@e6
    move-result-object v8

    #@e7
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@ea
    move-result v9

    #@eb
    .line 1843
    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ee
    move-result-object v33

    #@ef
    .line 1846
    .local v33, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f2
    .line 1850
    if-eqz v33, :cond_5

    #@f4
    move-object/from16 v0, v33

    #@f6
    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@f8
    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    #@fa
    iget-boolean v0, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@fc
    move/from16 v28, v0

    #@fe
    .line 1853
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@101
    move-result v27

    #@102
    .line 1855
    .local v27, "callerUid":I
    if-nez v28, :cond_6

    #@104
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, p2

    #@108
    move-object/from16 v2, p3

    #@10a
    move/from16 v3, v27

    #@10c
    move/from16 v4, v43

    #@10e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    #@111
    move-result v26

    #@112
    .line 1858
    :goto_1
    const-string/jumbo v6, "androidPackageName"

    #@115
    move-object/from16 v0, p6

    #@117
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v10

    #@11b
    .line 1860
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11e
    move-result-wide v36

    #@11f
    .line 1862
    :try_start_2
    move-object/from16 v0, p0

    #@121
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@123
    move/from16 v0, v27

    #@125
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@128
    move-result-object v6

    #@129
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12c
    move-result-object v34

    #@12d
    .line 1864
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@130
    .line 1866
    if-eqz v10, :cond_7

    #@132
    move-object/from16 v0, v34

    #@134
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@137
    move-result v6

    #@138
    if-eqz v6, :cond_7

    #@13a
    .line 1875
    const-string/jumbo v6, "callerUid"

    #@13d
    move-object/from16 v0, p6

    #@13f
    move/from16 v1, v27

    #@141
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@144
    .line 1876
    const-string/jumbo v6, "callerPid"

    #@147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14a
    move-result v8

    #@14b
    move-object/from16 v0, p6

    #@14d
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@150
    .line 1878
    if-eqz p4, :cond_4

    #@152
    .line 1879
    const-string/jumbo v6, "notifyOnAuthFailure"

    #@155
    const/4 v8, 0x1

    #@156
    move-object/from16 v0, p6

    #@158
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@15b
    .line 1882
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@15e
    move-result-wide v38

    #@15f
    .line 1885
    .local v38, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    #@161
    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    #@164
    move-result-object v11

    #@165
    .line 1889
    .local v11, "callerPkgSigDigest":[B
    if-nez v28, :cond_8

    #@167
    if-eqz v26, :cond_8

    #@169
    .line 1890
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, p2

    #@16d
    move-object/from16 v2, p3

    #@16f
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@172
    move-result-object v32

    #@173
    .line 1891
    .local v32, "authToken":Ljava/lang/String;
    if-eqz v32, :cond_8

    #@175
    .line 1892
    new-instance v41, Landroid/os/Bundle;

    #@177
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@17a
    .line 1893
    .local v41, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@17d
    move-object/from16 v0, v41

    #@17f
    move-object/from16 v1, v32

    #@181
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@184
    .line 1894
    const-string/jumbo v6, "authAccount"

    #@187
    move-object/from16 v0, p2

    #@189
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@18b
    move-object/from16 v0, v41

    #@18d
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@190
    .line 1895
    const-string/jumbo v6, "accountType"

    #@193
    move-object/from16 v0, p2

    #@195
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@197
    move-object/from16 v0, v41

    #@199
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@19c
    .line 1896
    move-object/from16 v0, p0

    #@19e
    move-object/from16 v1, p1

    #@1a0
    move-object/from16 v2, v41

    #@1a2
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1a5
    .line 2007
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a8
    .line 1897
    return-void

    #@1a9
    .line 1845
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "callerPkg":Ljava/lang/String;
    .end local v11    # "callerPkgSigDigest":[B
    .end local v27    # "callerUid":I
    .end local v32    # "authToken":Ljava/lang/String;
    .end local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "identityToken":J
    .end local v41    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    #@1aa
    .line 1846
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1ad
    .line 1845
    throw v6

    #@1ae
    .line 1850
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_5
    const/16 v28, 0x0

    #@1b0
    .local v28, "customTokens":Z
    goto/16 :goto_0

    #@1b2
    .line 1855
    .end local v28    # "customTokens":Z
    .restart local v27    # "callerUid":I
    :cond_6
    const/16 v26, 0x1

    #@1b4
    .local v26, "permissionGranted":Z
    goto/16 :goto_1

    #@1b6
    .line 1863
    .end local v26    # "permissionGranted":Z
    .restart local v10    # "callerPkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    #@1b7
    .line 1864
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1ba
    .line 1863
    throw v6

    #@1bb
    .line 1868
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "Uid %s is attempting to illegally masquerade as package %s!"

    #@1be
    .line 1867
    const/4 v8, 0x2

    #@1bf
    new-array v8, v8, [Ljava/lang/Object;

    #@1c1
    .line 1869
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c4
    move-result-object v9

    #@1c5
    const/4 v12, 0x0

    #@1c6
    aput-object v9, v8, v12

    #@1c8
    .line 1870
    const/4 v9, 0x1

    #@1c9
    aput-object v10, v8, v9

    #@1cb
    .line 1867
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1ce
    move-result-object v40

    #@1cf
    .line 1871
    .local v40, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@1d1
    move-object/from16 v0, v40

    #@1d3
    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d6
    throw v6

    #@1d7
    .line 1901
    .end local v40    # "msg":Ljava/lang/String;
    .restart local v11    # "callerPkgSigDigest":[B
    .restart local v38    # "identityToken":J
    :cond_8
    if-eqz v28, :cond_a

    #@1d9
    move-object/from16 v6, p0

    #@1db
    move-object/from16 v8, p2

    #@1dd
    move-object/from16 v9, p3

    #@1df
    .line 1907
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    #@1e2
    move-result-object v42

    #@1e3
    .line 1913
    .local v42, "token":Ljava/lang/String;
    if-eqz v42, :cond_a

    #@1e5
    .line 1914
    const-string/jumbo v6, "AccountManagerService"

    #@1e8
    const/4 v8, 0x2

    #@1e9
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1ec
    move-result v6

    #@1ed
    if-eqz v6, :cond_9

    #@1ef
    .line 1915
    const-string/jumbo v6, "AccountManagerService"

    #@1f2
    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    #@1f5
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f8
    .line 1917
    :cond_9
    new-instance v41, Landroid/os/Bundle;

    #@1fa
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@1fd
    .line 1918
    .restart local v41    # "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@200
    move-object/from16 v0, v41

    #@202
    move-object/from16 v1, v42

    #@204
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@207
    .line 1919
    const-string/jumbo v6, "authAccount"

    #@20a
    move-object/from16 v0, p2

    #@20c
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@20e
    move-object/from16 v0, v41

    #@210
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@213
    .line 1920
    const-string/jumbo v6, "accountType"

    #@216
    move-object/from16 v0, p2

    #@218
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@21a
    move-object/from16 v0, v41

    #@21c
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21f
    .line 1921
    move-object/from16 v0, p0

    #@221
    move-object/from16 v1, p1

    #@223
    move-object/from16 v2, v41

    #@225
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@228
    .line 2007
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@22b
    .line 1922
    return-void

    #@22c
    .line 1926
    .end local v41    # "result":Landroid/os/Bundle;
    .end local v42    # "token":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$6;

    #@22e
    move-object/from16 v0, p2

    #@230
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@232
    move-object/from16 v17, v0

    #@234
    .line 1927
    move-object/from16 v0, p2

    #@236
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@238
    move-object/from16 v20, v0

    #@23a
    const/16 v19, 0x0

    #@23c
    .line 1928
    const/16 v21, 0x0

    #@23e
    move-object/from16 v13, p0

    #@240
    move-object/from16 v14, p0

    #@242
    move-object v15, v7

    #@243
    move-object/from16 v16, p1

    #@245
    move/from16 v18, p5

    #@247
    move-object/from16 v22, p6

    #@249
    move-object/from16 v23, p2

    #@24b
    move-object/from16 v24, p3

    #@24d
    move/from16 v25, p4

    #@24f
    move-object/from16 v29, v10

    #@251
    move-object/from16 v30, v11

    #@253
    move-object/from16 v31, v7

    #@255
    .line 1926
    invoke-direct/range {v12 .. v31}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@258
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@25b
    .line 2007
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@25e
    .line 1811
    return-void

    #@25f
    .line 2006
    .end local v11    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v6

    #@260
    .line 2007
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@263
    .line 2006
    throw v6
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1759
    if-nez p2, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "accountType is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1760
    :cond_0
    if-nez p3, :cond_1

    #@d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "authTokenType is null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1762
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@19
    move-result v14

    #@1a
    .line 1763
    .local v14, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@1d
    .line 1764
    const/16 v2, 0x3e8

    #@1f
    if-eq v14, v2, :cond_2

    #@21
    .line 1765
    new-instance v2, Ljava/lang/SecurityException;

    #@23
    const-string/jumbo v3, "can only call from system"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1767
    :cond_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    #@2d
    move-result v15

    #@2e
    .line 1768
    .local v15, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@31
    move-result-wide v16

    #@32
    .line 1770
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@37
    move-result-object v5

    #@38
    .line 1771
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$5;

    #@3a
    const/4 v8, 0x0

    #@3b
    .line 1772
    const/4 v9, 0x0

    #@3c
    const/4 v10, 0x0

    #@3d
    .line 1773
    const/4 v11, 0x0

    #@3e
    move-object/from16 v3, p0

    #@40
    move-object/from16 v4, p0

    #@42
    move-object/from16 v6, p1

    #@44
    move-object/from16 v7, p2

    #@46
    move-object/from16 v12, p2

    #@48
    move-object/from16 v13, p3

    #@4a
    .line 1771
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@4d
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 1800
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@53
    .line 1758
    return-void

    #@54
    .line 1799
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@55
    .line 1800
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@58
    .line 1799
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    .line 655
    .local v0, "callingUid":I
    const-string/jumbo v1, "AccountManagerService"

    #@8
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 656
    const-string/jumbo v1, "AccountManagerService"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "getAuthenticatorTypes: for user id "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 658
    const-string/jumbo v5, "caller\'s uid "

    #@24
    .line 656
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 659
    const-string/jumbo v5, ", pid "

    #@2f
    .line 656
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 659
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v5

    #@37
    .line 656
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 662
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 663
    new-instance v1, Ljava/lang/SecurityException;

    #@4a
    .line 665
    const-string/jumbo v4, "User %s tying to get authenticator types for %s"

    #@4d
    .line 664
    new-array v5, v6, [Ljava/lang/Object;

    #@4f
    .line 666
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@52
    move-result v6

    #@53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v6

    #@57
    const/4 v7, 0x0

    #@58
    aput-object v6, v5, v7

    #@5a
    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    const/4 v7, 0x1

    #@5f
    aput-object v6, v5, v7

    #@61
    .line 664
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 663
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 670
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@6c
    move-result-wide v2

    #@6d
    .line 672
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result-object v1

    #@71
    .line 675
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 672
    return-object v1

    #@75
    .line 674
    :catchall_0
    move-exception v1

    #@76
    .line 675
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@79
    .line 674
    throw v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 529
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 530
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "getPassword: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 531
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 530
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    .line 531
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v8

    #@2c
    .line 530
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 532
    const-string/jumbo v8, ", pid "

    #@33
    .line 530
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 532
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v8

    #@3b
    .line 530
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 534
    :cond_0
    if-nez p1, :cond_1

    #@48
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v7, "account is null"

    #@4d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 535
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@54
    move-result v5

    #@55
    .line 536
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@57
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5a
    move-result v6

    #@5b
    if-nez v6, :cond_2

    #@5d
    .line 538
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    #@60
    .line 537
    new-array v7, v9, [Ljava/lang/Object;

    #@62
    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v8

    #@66
    const/4 v9, 0x0

    #@67
    aput-object v8, v7, v9

    #@69
    .line 540
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6b
    const/4 v9, 0x1

    #@6c
    aput-object v8, v7, v9

    #@6e
    .line 537
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    .line 541
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@74
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@77
    throw v6

    #@78
    .line 543
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@7b
    move-result-wide v2

    #@7c
    .line 545
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7f
    move-result-object v0

    #@80
    .line 546
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result-object v6

    #@84
    .line 548
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 546
    return-object v6

    #@88
    .line 547
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@89
    .line 548
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8c
    .line 547
    throw v6
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 575
    const-string/jumbo v4, "AccountManagerService"

    #@3
    const/4 v5, 0x2

    #@4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 576
    const-string/jumbo v4, "AccountManagerService"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "getPreviousName: "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    .line 577
    const-string/jumbo v6, ", caller\'s uid "

    #@20
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v6

    #@28
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 578
    const-string/jumbo v6, ", pid "

    #@2f
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v6

    #@37
    .line 576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 580
    :cond_0
    if-nez p1, :cond_1

    #@44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v5, "account is null"

    #@49
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 581
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v1

    #@51
    .line 582
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@54
    move-result-wide v2

    #@55
    .line 584
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@58
    move-result-object v0

    #@59
    .line 585
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    move-result-object v4

    #@5d
    .line 587
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@60
    .line 585
    return-object v4

    #@61
    .line 586
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    #@62
    .line 587
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@65
    .line 586
    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    #@0
    .prologue
    .line 2537
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 2542
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 2538
    .end local v1    # "runningUserIds":[I
    :catch_0
    move-exception v0

    #@e
    .line 2540
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v2
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 14
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2717
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p1

    #@4
    .line 2718
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v10

    #@8
    .line 2719
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    #@a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 2720
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    #@e
    .line 2722
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@15
    move-result-object v0

    #@16
    .line 2723
    const-string/jumbo v1, "shared_accounts"

    #@19
    const/4 v2, 0x2

    #@1a
    new-array v2, v2, [Ljava/lang/String;

    #@1c
    const-string/jumbo v3, "name"

    #@1f
    const/4 v4, 0x0

    #@20
    aput-object v3, v2, v4

    #@22
    const-string/jumbo v3, "type"

    #@25
    const/4 v4, 0x1

    #@26
    aput-object v3, v2, v4

    #@28
    .line 2724
    const/4 v3, 0x0

    #@29
    const/4 v4, 0x0

    #@2a
    const/4 v5, 0x0

    #@2b
    const/4 v6, 0x0

    #@2c
    const/4 v7, 0x0

    #@2d
    .line 2722
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v11

    #@31
    .line 2725
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    #@33
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 2726
    const-string/jumbo v0, "name"

    #@3c
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3f
    move-result v12

    #@40
    .line 2727
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    #@43
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@46
    move-result v13

    #@47
    .line 2729
    .local v13, "typeIndex":I
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    #@49
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 2730
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 2729
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 2731
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_0

    #@5d
    .line 2734
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_1
    if-eqz v11, :cond_2

    #@5f
    .line 2735
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@62
    .line 2738
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v0

    #@66
    new-array v8, v0, [Landroid/accounts/Account;

    #@68
    .line 2739
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6b
    .line 2740
    return-object v8

    #@6c
    .line 2733
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@6d
    .line 2734
    if-eqz v11, :cond_3

    #@6f
    .line 2735
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@72
    .line 2733
    :cond_3
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b
    .line 440
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_0

    #@d
    .line 441
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@f
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@11
    invoke-direct {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    #@14
    .line 443
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v1

    #@1c
    .line 442
    invoke-direct {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@1f
    .line 444
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@24
    .line 445
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@27
    .line 446
    const/4 v1, 0x1

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :cond_0
    monitor-exit v2

    #@2c
    .line 448
    return-object v0

    #@2d
    .line 438
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x2

    #@3
    .line 627
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 628
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@a
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 629
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    #@13
    const/4 v7, 0x4

    #@14
    new-array v7, v7, [Ljava/lang/Object;

    #@16
    .line 630
    aput-object p1, v7, v11

    #@18
    aput-object p2, v7, v12

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    aput-object v8, v7, v10

    #@20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@23
    move-result v8

    #@24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v8

    #@28
    const/4 v9, 0x3

    #@29
    aput-object v8, v7, v9

    #@2b
    .line 629
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 631
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@32
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 633
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@37
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v7, "account is null"

    #@3c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 634
    :cond_1
    if-nez p2, :cond_2

    #@42
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@44
    const-string/jumbo v7, "key is null"

    #@47
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v6

    #@4b
    .line 635
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4e
    move-result v5

    #@4f
    .line 636
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@51
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@54
    move-result v6

    #@55
    if-nez v6, :cond_3

    #@57
    .line 638
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    #@5a
    .line 637
    new-array v7, v10, [Ljava/lang/Object;

    #@5c
    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v8

    #@60
    aput-object v8, v7, v11

    #@62
    .line 640
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@64
    aput-object v8, v7, v12

    #@66
    .line 637
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    .line 641
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@6c
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v6

    #@70
    .line 643
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@73
    move-result-wide v2

    #@74
    .line 645
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@77
    move-result-object v0

    #@78
    .line 646
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    move-result-object v6

    #@7c
    .line 648
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@7f
    .line 646
    return-object v6

    #@80
    .line 647
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@81
    .line 648
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@84
    .line 647
    throw v6
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 993
    .local v6, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@7
    const/4 v1, 0x2

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 994
    const-string/jumbo v0, "AccountManagerService"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "hasFeatures: "

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 995
    const-string/jumbo v3, ", response "

    #@24
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 996
    const-string/jumbo v3, ", features "

    #@2f
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 996
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 997
    const-string/jumbo v3, ", caller\'s uid "

    #@3e
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 998
    const-string/jumbo v3, ", pid "

    #@49
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 998
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v3

    #@51
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 1000
    :cond_0
    if-nez p1, :cond_1

    #@5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@60
    const-string/jumbo v1, "response is null"

    #@63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v0

    #@67
    .line 1001
    :cond_1
    if-nez p2, :cond_2

    #@69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6b
    const-string/jumbo v1, "account is null"

    #@6e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v0

    #@72
    .line 1002
    :cond_2
    if-nez p3, :cond_3

    #@74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@76
    const-string/jumbo v1, "features is null"

    #@79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0

    #@7d
    .line 1003
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@80
    move-result v7

    #@81
    .line 1004
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@83
    invoke-direct {p0, v6, v0, v7}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;I)V

    #@86
    .line 1006
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@89
    move-result-wide v8

    #@8a
    .line 1008
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8d
    move-result-object v2

    #@8e
    .line 1009
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    #@90
    move-object v1, p0

    #@91
    move-object v3, p1

    #@92
    move-object v4, p2

    #@93
    move-object v5, p3

    #@94
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    #@97
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9a
    .line 1011
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 991
    return-void

    #@9e
    .line 1010
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@9f
    .line 1011
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a2
    .line 1010
    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3674
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "notification"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/NotificationManager;

    #@b
    .line 3675
    const/4 v1, 0x0

    #@c
    .line 3674
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@f
    .line 3673
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 1401
    .local v1, "callerUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@7
    const/4 v7, 0x2

    #@8
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1402
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "invalidateAuthToken: accountType "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1403
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1402
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1404
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1402
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1402
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1406
    :cond_0
    if-nez p1, :cond_1

    #@44
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v7, "accountType is null"

    #@49
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 1407
    :cond_1
    if-nez p2, :cond_2

    #@4f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v7, "authToken is null"

    #@54
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v6

    #@58
    .line 1408
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5b
    move-result v3

    #@5c
    .line 1409
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@5f
    move-result-wide v4

    #@60
    .line 1411
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@63
    move-result-object v0

    #@64
    .line 1412
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@67
    move-result-object v7

    #@68
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@69
    .line 1413
    :try_start_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@70
    move-result-object v2

    #@71
    .line 1414
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@74
    .line 1416
    :try_start_2
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    #@77
    .line 1417
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 1418
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    .line 1420
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@80
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@81
    .line 1424
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@84
    .line 1399
    return-void

    #@85
    .line 1419
    :catchall_0
    move-exception v6

    #@86
    .line 1420
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@89
    .line 1419
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8a
    .line 1412
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    #@8b
    :try_start_6
    monitor-exit v7

    #@8c
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@8d
    .line 1423
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v6

    #@8e
    .line 1424
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@91
    .line 1423
    throw v6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3534
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 2
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    .line 523
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 522
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    .line 522
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    #@2
    .end local p1    # "desc":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    #@5
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 327
    :catch_0
    move-exception v0

    #@6
    .line 330
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 331
    const-string/jumbo v1, "AccountManagerService"

    #@d
    const-string/jumbo v2, "Account Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 333
    :cond_0
    throw v0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1530
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1531
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "peekAuthToken: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1532
    const-string/jumbo v8, ", authTokenType "

    #@24
    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1533
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 1534
    const-string/jumbo v8, ", pid "

    #@3a
    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 1531
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1536
    :cond_0
    if-nez p1, :cond_1

    #@4f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v7, "account is null"

    #@54
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v6

    #@58
    .line 1537
    :cond_1
    if-nez p2, :cond_2

    #@5a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5c
    const-string/jumbo v7, "authTokenType is null"

    #@5f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v6

    #@63
    .line 1538
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 1539
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 1541
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    #@72
    .line 1540
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 1542
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 1543
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 1540
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 1544
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 1546
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 1548
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 1549
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    move-result-object v6

    #@96
    .line 1551
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@99
    .line 1549
    return-object v6

    #@9a
    .line 1550
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@9b
    .line 1551
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9e
    .line 1550
    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4181
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    monitor-enter v3

    #@5
    .line 4182
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/HashMap;

    #@f
    .line 4183
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@11
    .line 4185
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@18
    move-result-object v1

    #@19
    .line 4186
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@1c
    move-result-object v0

    #@1d
    .line 4187
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 4189
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    return-object v2

    #@2c
    .line 4181
    .end local v0    # "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 4228
    new-instance v9, Ljava/util/HashMap;

    #@5
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 4229
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "authtokens"

    #@b
    .line 4230
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@d
    .line 4231
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 4232
    const/4 v0, 0x2

    #@11
    new-array v4, v0, [Ljava/lang/String;

    #@13
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@15
    aput-object v0, v4, v6

    #@17
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19
    aput-object v0, v4, v7

    #@1b
    move-object v0, p1

    #@1c
    move-object v6, v5

    #@1d
    move-object v7, v5

    #@1e
    .line 4229
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v10

    #@22
    .line 4235
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 4236
    const/4 v0, 0x0

    #@29
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v11

    #@2d
    .line 4237
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 4238
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 4240
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 4241
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3a
    .line 4240
    throw v0

    #@3b
    .line 4241
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3e
    .line 4243
    return-object v9
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    #@0
    .prologue
    .line 4159
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 4160
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 4159
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 4208
    new-instance v10, Ljava/util/HashMap;

    #@5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 4209
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "extras"

    #@b
    .line 4210
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    #@d
    .line 4211
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 4212
    const/4 v0, 0x2

    #@11
    new-array v4, v0, [Ljava/lang/String;

    #@13
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@15
    aput-object v0, v4, v6

    #@17
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19
    aput-object v0, v4, v7

    #@1b
    move-object v0, p1

    #@1c
    move-object v6, v5

    #@1d
    move-object v7, v5

    #@1e
    .line 4209
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 4215
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 4216
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 4217
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 4218
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 4220
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 4221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    .line 4220
    throw v0

    #@3b
    .line 4221
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3e
    .line 4223
    return-object v10
.end method

.method protected readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4194
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    monitor-enter v3

    #@5
    .line 4195
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/util/HashMap;

    #@f
    .line 4196
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@11
    .line 4198
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@18
    move-result-object v0

    #@19
    .line 4199
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@1c
    move-result-object v1

    #@1d
    .line 4200
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 4202
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    return-object v2

    #@2c
    .line 4194
    .end local v1    # "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 1
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    #@0
    .prologue
    .line 1201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1197
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    #@7
    .line 1196
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 17
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 1208
    .local v8, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    #@7
    const/4 v3, 0x2

    #@8
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1209
    const-string/jumbo v2, "AccountManagerService"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "removeAccount: "

    #@19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 1210
    const-string/jumbo v5, ", response "

    #@26
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 1211
    const-string/jumbo v5, ", caller\'s uid "

    #@33
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 1212
    const-string/jumbo v5, ", pid "

    #@3e
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v5

    #@46
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 1213
    const-string/jumbo v5, ", for user id "

    #@4d
    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    move/from16 v0, p4

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1215
    :cond_0
    if-nez p1, :cond_1

    #@60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@62
    const-string/jumbo v3, "response is null"

    #@65
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v2

    #@69
    .line 1216
    :cond_1
    if-nez p2, :cond_2

    #@6b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v3, "account is null"

    #@70
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2

    #@74
    .line 1218
    :cond_2
    move-object/from16 v0, p0

    #@76
    move/from16 v1, p4

    #@78
    invoke-direct {v0, v8, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@7b
    move-result v2

    #@7c
    if-eqz v2, :cond_3

    #@7e
    .line 1219
    new-instance v2, Ljava/lang/SecurityException;

    #@80
    .line 1221
    const-string/jumbo v3, "User %s tying remove account for %s"

    #@83
    .line 1220
    const/4 v5, 0x2

    #@84
    new-array v5, v5, [Ljava/lang/Object;

    #@86
    .line 1222
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@89
    move-result v6

    #@8a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v6

    #@8e
    const/4 v7, 0x0

    #@8f
    aput-object v6, v5, v7

    #@91
    .line 1223
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v6

    #@95
    const/4 v7, 0x1

    #@96
    aput-object v6, v5, v7

    #@98
    .line 1220
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    .line 1219
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v2

    #@a0
    .line 1230
    :cond_3
    new-instance v16, Landroid/os/UserHandle;

    #@a2
    move-object/from16 v0, v16

    #@a4
    move/from16 v1, p4

    #@a6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@a9
    .line 1231
    .local v16, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p2

    #@ab
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@ad
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    #@b0
    move-result v3

    #@b1
    move-object/from16 v0, p0

    #@b3
    invoke-direct {v0, v2, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@b6
    move-result v2

    #@b7
    if-nez v2, :cond_4

    #@b9
    .line 1232
    move-object/from16 v0, p0

    #@bb
    invoke-direct {v0, v8}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@be
    move-result v2

    #@bf
    if-eqz v2, :cond_5

    #@c1
    .line 1239
    :cond_4
    move-object/from16 v0, p0

    #@c3
    move/from16 v1, p4

    #@c5
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    #@c8
    move-result v2

    #@c9
    if-nez v2, :cond_6

    #@cb
    .line 1242
    :try_start_0
    const-string/jumbo v2, "User cannot modify accounts"

    #@ce
    .line 1241
    const/16 v3, 0x64

    #@d0
    move-object/from16 v0, p1

    #@d2
    invoke-interface {v0, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d5
    .line 1245
    :goto_0
    return-void

    #@d6
    .line 1234
    :cond_5
    const-string/jumbo v2, "uid %s cannot remove accounts of type: %s"

    #@d9
    .line 1233
    const/4 v3, 0x2

    #@da
    new-array v3, v3, [Ljava/lang/Object;

    #@dc
    .line 1235
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v5

    #@e0
    const/4 v6, 0x0

    #@e1
    aput-object v5, v3, v6

    #@e3
    .line 1236
    move-object/from16 v0, p2

    #@e5
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e7
    const/4 v6, 0x1

    #@e8
    aput-object v5, v3, v6

    #@ea
    .line 1233
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ed
    move-result-object v12

    #@ee
    .line 1237
    .local v12, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    #@f0
    invoke-direct {v2, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f3
    throw v2

    #@f4
    .line 1247
    .end local v12    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    #@f6
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@f8
    move-object/from16 v0, p0

    #@fa
    move/from16 v1, p4

    #@fc
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;)Z

    #@ff
    move-result v2

    #@100
    if-nez v2, :cond_7

    #@102
    .line 1250
    :try_start_1
    const-string/jumbo v2, "User cannot modify accounts of this type (policy)."

    #@105
    .line 1249
    const/16 v3, 0x65

    #@107
    move-object/from16 v0, p1

    #@109
    invoke-interface {v0, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@10c
    .line 1253
    :goto_1
    return-void

    #@10d
    .line 1255
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@110
    move-result-wide v10

    #@111
    .line 1256
    .local v10, "identityToken":J
    move-object/from16 v0, p0

    #@113
    move/from16 v1, p4

    #@115
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@118
    move-result-object v4

    #@119
    .line 1257
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@11b
    move-object/from16 v1, p2

    #@11d
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@124
    move-result v2

    #@125
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v16

    #@129
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@12c
    .line 1258
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@12f
    move-result-object v3

    #@130
    monitor-enter v3

    #@131
    .line 1260
    :try_start_2
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@134
    move-result-object v2

    #@135
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@138
    move-result-object v2

    #@139
    .line 1259
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13c
    move-result-object v14

    #@13d
    .local v14, "pair$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@140
    move-result v2

    #@141
    if-eqz v2, :cond_9

    #@143
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@146
    move-result-object v13

    #@147
    check-cast v13, Landroid/util/Pair;

    #@149
    .line 1261
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14b
    check-cast v2, Landroid/util/Pair;

    #@14d
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v2

    #@155
    if-eqz v2, :cond_8

    #@157
    .line 1262
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@15a
    move-result-object v2

    #@15b
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15e
    move-result-object v2

    #@15f
    check-cast v2, Ljava/lang/Integer;

    #@161
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@164
    move-result v9

    #@165
    .line 1263
    .local v9, "id":I
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v16

    #@169
    invoke-virtual {v0, v9, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16c
    goto :goto_2

    #@16d
    .line 1258
    .end local v9    # "id":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v14    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@16e
    monitor-exit v3

    #@16f
    throw v2

    #@170
    .restart local v14    # "pair$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v3

    #@171
    .line 1268
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@174
    move-result-object v2

    #@175
    const-string/jumbo v3, "accounts"

    #@178
    move-object/from16 v0, p0

    #@17a
    invoke-direct {v0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@17d
    .line 1271
    :try_start_3
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    #@17f
    move-object/from16 v3, p0

    #@181
    move-object/from16 v5, p1

    #@183
    move-object/from16 v6, p2

    #@185
    move/from16 v7, p3

    #@187
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    #@18a
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@18d
    .line 1273
    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@190
    .line 1206
    return-void

    #@191
    .line 1272
    :catchall_1
    move-exception v2

    #@192
    .line 1273
    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@195
    .line 1272
    throw v2

    #@196
    .line 1251
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "identityToken":J
    .end local v14    # "pair$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v15

    #@197
    .local v15, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@199
    .line 1243
    .end local v15    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    #@19a
    .restart local v15    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    .line 1280
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@9
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 1281
    const-string/jumbo v6, "AccountManagerService"

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "removeAccountExplicitly: "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    .line 1282
    const-string/jumbo v8, ", caller\'s uid "

    #@25
    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    .line 1283
    const-string/jumbo v8, ", pid "

    #@30
    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    .line 1283
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v8

    #@38
    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1285
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@4a
    move-result v5

    #@4b
    .line 1286
    .local v5, "userId":I
    if-nez p1, :cond_1

    #@4d
    .line 1291
    const-string/jumbo v6, "AccountManagerService"

    #@50
    const-string/jumbo v7, "account is null"

    #@53
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1292
    return v9

    #@57
    .line 1293
    :cond_1
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@59
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5c
    move-result v6

    #@5d
    if-nez v6, :cond_2

    #@5f
    .line 1295
    const-string/jumbo v6, "uid %s cannot explicitly add accounts of type: %s"

    #@62
    .line 1294
    new-array v7, v10, [Ljava/lang/Object;

    #@64
    .line 1296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v8

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1297
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6c
    const/4 v9, 0x1

    #@6d
    aput-object v8, v7, v9

    #@6f
    .line 1294
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 1298
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@75
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@78
    throw v6

    #@79
    .line 1300
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7c
    move-result-object v0

    #@7d
    .line 1301
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(I)Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_3

    #@83
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@85
    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_3

    #@8b
    .line 1304
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    const-string/jumbo v7, "accounts"

    #@92
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 1305
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@98
    move-result-wide v2

    #@99
    .line 1307
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9c
    move-result v6

    #@9d
    .line 1309
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a0
    .line 1307
    return v6

    #@a1
    .line 1302
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    #@a2
    .line 1308
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    #@a3
    .line 1309
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a6
    .line 1308
    throw v6
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    #@7
    .line 1362
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2697
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 15
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1075
    .local v3, "callingUid":I
    const-string/jumbo v11, "AccountManagerService"

    #@7
    const/4 v12, 0x2

    #@8
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v11

    #@c
    if-eqz v11, :cond_0

    #@e
    .line 1076
    const-string/jumbo v11, "AccountManagerService"

    #@11
    new-instance v12, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v13, "renameAccount: "

    #@19
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v12

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v12

    #@23
    const-string/jumbo v13, " -> "

    #@26
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v12

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v12

    #@30
    .line 1077
    const-string/jumbo v13, ", caller\'s uid "

    #@33
    .line 1076
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    .line 1078
    const-string/jumbo v13, ", pid "

    #@3e
    .line 1076
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    .line 1078
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v13

    #@46
    .line 1076
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v12

    #@4e
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 1080
    :cond_0
    if-nez p2, :cond_1

    #@53
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v12, "account is null"

    #@58
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v11

    #@5c
    .line 1081
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5f
    move-result v10

    #@60
    .line 1082
    .local v10, "userId":I
    move-object/from16 v0, p2

    #@62
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@64
    invoke-direct {p0, v11, v3, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@67
    move-result v11

    #@68
    if-nez v11, :cond_2

    #@6a
    .line 1084
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    #@6d
    .line 1083
    const/4 v12, 0x2

    #@6e
    new-array v12, v12, [Ljava/lang/Object;

    #@70
    .line 1085
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v13

    #@74
    const/4 v14, 0x0

    #@75
    aput-object v13, v12, v14

    #@77
    .line 1086
    move-object/from16 v0, p2

    #@79
    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7b
    const/4 v14, 0x1

    #@7c
    aput-object v13, v12, v14

    #@7e
    .line 1083
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 1087
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    #@84
    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@87
    throw v11

    #@88
    .line 1089
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8b
    move-result-wide v6

    #@8c
    .line 1091
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8f
    move-result-object v2

    #@90
    .line 1092
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, p3

    #@94
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@97
    move-result-object v9

    #@98
    .line 1093
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    #@9a
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@9d
    .line 1094
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v11, "authAccount"

    #@a0
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a2
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    .line 1095
    const-string/jumbo v11, "accountType"

    #@a8
    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@aa
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ad
    .line 1097
    :try_start_1
    move-object/from16 v0, p1

    #@af
    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b2
    .line 1102
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b5
    .line 1073
    return-void

    #@b6
    .line 1098
    :catch_0
    move-exception v4

    #@b7
    .line 1099
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v11, "AccountManagerService"

    #@ba
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@bd
    move-result-object v12

    #@be
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c1
    goto :goto_0

    #@c2
    .line 1101
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v11

    #@c3
    .line 1102
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c6
    .line 1101
    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2673
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p3

    #@4
    .line 2674
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v6

    #@8
    .line 2675
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 2676
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@13
    move-result-wide v4

    #@14
    .line 2677
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    #@16
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@19
    .line 2678
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@1c
    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 2679
    const-string/jumbo v0, "previous_name"

    #@22
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@24
    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 2681
    const-string/jumbo v0, "shared_accounts"

    #@2a
    .line 2683
    const-string/jumbo v2, "name=? AND type=?"

    #@2d
    .line 2684
    const/4 v3, 0x2

    #@2e
    new-array v3, v3, [Ljava/lang/String;

    #@30
    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@32
    const/4 v11, 0x0

    #@33
    aput-object v10, v3, v11

    #@35
    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@37
    const/4 v11, 0x1

    #@38
    aput-object v10, v3, v11

    #@3a
    .line 2680
    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3d
    move-result v8

    #@3e
    .line 2685
    .local v8, "r":I
    if-lez v8, :cond_0

    #@40
    .line 2686
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@43
    move-result v7

    #@44
    .line 2687
    .local v7, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "shared_accounts"

    #@4b
    move-object v0, p0

    #@4c
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@4f
    .line 2690
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@52
    .line 2692
    .end local v7    # "callingUid":I
    :cond_0
    if-lez v8, :cond_1

    #@54
    const/4 v0, 0x1

    #@55
    :goto_0
    return v0

    #@56
    :cond_1
    const/4 v0, 0x0

    #@57
    goto :goto_0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1558
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1559
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "setAuthToken: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1560
    const-string/jumbo v8, ", authTokenType "

    #@24
    .line 1559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1561
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 1559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 1562
    const-string/jumbo v8, ", pid "

    #@3a
    .line 1559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 1562
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 1559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1564
    :cond_0
    if-nez p1, :cond_1

    #@4f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v7, "account is null"

    #@54
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v6

    #@58
    .line 1565
    :cond_1
    if-nez p2, :cond_2

    #@5a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5c
    const-string/jumbo v7, "authTokenType is null"

    #@5f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v6

    #@63
    .line 1566
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 1567
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 1569
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    #@72
    .line 1568
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 1570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 1571
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 1568
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 1572
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 1574
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 1576
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 1577
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    .line 1579
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@98
    .line 1556
    return-void

    #@99
    .line 1578
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@9a
    .line 1579
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1578
    throw v6
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1586
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1587
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "setAuthToken: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1588
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1589
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1591
    :cond_0
    if-nez p1, :cond_1

    #@44
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v7, "account is null"

    #@49
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 1592
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 1593
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 1595
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    #@5c
    .line 1594
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 1596
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 1597
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1594
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 1598
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1600
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 1602
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 1603
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 1605
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@82
    .line 1584
    return-void

    #@83
    .line 1604
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@84
    .line 1605
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 1604
    throw v6
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1676
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1677
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "setUserData: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 1678
    const-string/jumbo v8, ", key "

    #@24
    .line 1677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1679
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 1677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 1680
    const-string/jumbo v8, ", pid "

    #@3a
    .line 1677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 1680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 1677
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1682
    :cond_0
    if-nez p2, :cond_1

    #@4f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v7, "key is null"

    #@54
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v6

    #@58
    .line 1683
    :cond_1
    if-nez p1, :cond_2

    #@5a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5c
    const-string/jumbo v7, "account is null"

    #@5f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v6

    #@63
    .line 1684
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 1685
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 1687
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    #@72
    .line 1686
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 1688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 1689
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 1686
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 1690
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 1692
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 1694
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 1695
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    .line 1697
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@98
    .line 1674
    return-void

    #@99
    .line 1696
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@9a
    .line 1697
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1696
    throw v6
.end method

.method public systemReady()V
    .locals 0

    #@0
    .prologue
    .line 337
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3917
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 3919
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 3920
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    #@d
    throw v1

    #@e
    .line 3923
    :cond_0
    if-eqz p4, :cond_1

    #@10
    .line 3924
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@13
    .line 3916
    :goto_0
    return-void

    #@14
    .line 3926
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@17
    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2328
    const-string/jumbo v2, "AccountManagerService"

    #@3
    const/4 v3, 0x2

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2329
    const-string/jumbo v2, "AccountManagerService"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "updateCredentials: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 2330
    const-string/jumbo v4, ", response "

    #@22
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 2331
    const-string/jumbo v4, ", authTokenType "

    #@2f
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    move-object/from16 v0, p3

    #@35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 2332
    const-string/jumbo v4, ", expectActivityLaunch "

    #@3c
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    move/from16 v0, p4

    #@42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 2333
    const-string/jumbo v4, ", caller\'s uid "

    #@49
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 2333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@50
    move-result v4

    #@51
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 2334
    const-string/jumbo v4, ", pid "

    #@58
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    .line 2334
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5f
    move-result v4

    #@60
    .line 2329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2336
    :cond_0
    if-nez p1, :cond_1

    #@6d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v3, "response is null"

    #@72
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 2337
    :cond_1
    if-nez p2, :cond_2

    #@78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v3, "account is null"

    #@7d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2

    #@81
    .line 2338
    :cond_2
    if-nez p3, :cond_3

    #@83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@85
    const-string/jumbo v3, "authTokenType is null"

    #@88
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v2

    #@8c
    .line 2339
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8f
    move-result v18

    #@90
    .line 2340
    .local v18, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@93
    move-result-wide v16

    #@94
    .line 2342
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@96
    move/from16 v1, v18

    #@98
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9b
    move-result-object v5

    #@9c
    .line 2343
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$10;

    #@9e
    move-object/from16 v0, p2

    #@a0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a2
    .line 2344
    move-object/from16 v0, p2

    #@a4
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a6
    const/4 v9, 0x1

    #@a7
    .line 2345
    const/4 v11, 0x0

    #@a8
    const/4 v12, 0x1

    #@a9
    move-object/from16 v3, p0

    #@ab
    move-object/from16 v4, p0

    #@ad
    move-object/from16 v6, p1

    #@af
    move/from16 v8, p4

    #@b1
    move-object/from16 v13, p2

    #@b3
    move-object/from16 v14, p3

    #@b5
    move-object/from16 v15, p5

    #@b7
    .line 2343
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@ba
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bd
    .line 2360
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 2327
    return-void

    #@c1
    .line 2359
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@c2
    .line 2360
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c5
    .line 2359
    throw v2
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 351
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4167
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/HashMap;

    #@a
    .line 4168
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 4169
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 4170
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 4172
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 4173
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 4166
    :goto_0
    return-void

    #@1d
    .line 4175
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4141
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/HashMap;

    #@a
    .line 4142
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 4143
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 4144
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 4146
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 4147
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 4140
    :goto_0
    return-void

    #@1d
    .line 4149
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0
.end method

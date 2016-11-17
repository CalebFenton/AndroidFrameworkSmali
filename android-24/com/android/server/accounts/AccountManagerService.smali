.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;
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

.field private static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field private static final CE_DATABASE_VERSION:I = 0xa

.field private static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field private static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field private static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field private static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x1

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

.field private static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field private static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final PRE_N_DATABASE_VERSION:I = 0x9

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

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
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

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

.method static synthetic -wrap10(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
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

.method static synthetic -wrap11(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
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

.method static synthetic -wrap14(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accounts/AccountManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
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

.method static synthetic -wrap5(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
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

.method static synthetic -wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
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

.method static synthetic -wrap7(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Ljava/io/File;)V
    .locals 0
    .param p0, "dbFile"    # Ljava/io/File;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

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
    .line 224
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
    .line 223
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@11
    .line 228
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1b
    .line 229
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1d
    const/high16 v1, 0x4000000

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    .line 243
    new-array v0, v4, [Ljava/lang/String;

    #@24
    const-string/jumbo v1, "type"

    #@27
    aput-object v1, v0, v2

    #@29
    .line 244
    const-string/jumbo v1, "authtoken"

    #@2c
    aput-object v1, v0, v3

    #@2e
    .line 243
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@30
    .line 248
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
    .line 309
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@43
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@45
    .line 310
    new-array v0, v2, [Landroid/accounts/Account;

    #@47
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@49
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 323
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
    .line 322
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
    .line 326
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    #@4
    .line 255
    new-instance v0, Ljava/util/LinkedHashMap;

    #@6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@b
    .line 256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 306
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@1a
    .line 307
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@21
    .line 328
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@23
    .line 329
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@25
    .line 330
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@27
    const-class v1, Landroid/app/AppOpsManager;

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/app/AppOpsManager;

    #@2f
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@31
    .line 332
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@33
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@40
    .line 334
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@42
    .line 335
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@44
    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    #@47
    .line 337
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@49
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@4c
    .line 339
    new-instance v6, Landroid/content/IntentFilter;

    #@4e
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@51
    .line 340
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@54
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@57
    .line 341
    const-string/jumbo v0, "package"

    #@5a
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@5d
    .line 342
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@5f
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    #@61
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@64
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@67
    .line 368
    new-instance v3, Landroid/content/IntentFilter;

    #@69
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@6c
    .line 369
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@6f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@72
    .line 370
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@74
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    #@76
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@79
    .line 378
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@7b
    move-object v5, v4

    #@7c
    .line 370
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@7f
    .line 327
    return-void
.end method

.method private accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2032
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@4
    move-result-object v1

    #@5
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2033
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Landroid/accounts/Account;

    #@19
    array-length v4, v1

    #@1a
    move v2, v3

    #@1b
    :goto_0
    if-ge v2, v4, :cond_1

    #@1d
    aget-object v0, v1, v2

    #@1f
    .line 2034
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@21
    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 2035
    const/4 v1, 0x1

    #@2a
    return v1

    #@2b
    .line 2033
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2039
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "callingUid"    # I

    #@0
    .prologue
    .line 1165
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 1166
    if-nez p2, :cond_0

    #@8
    .line 1167
    const/4 v2, 0x0

    #@9
    return v2

    #@a
    .line 1169
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@d
    move-result v2

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 1170
    const-string/jumbo v2, "AccountManagerService"

    #@19
    new-instance v8, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v9, "Account "

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    const-string/jumbo v9, " cannot be added - user "

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@35
    move-result v9

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 1171
    const-string/jumbo v9, " is locked. callingUid="

    #@3d
    .line 1170
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    move/from16 v0, p5

    #@43
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1172
    const/4 v2, 0x0

    #@4f
    return v2

    #@50
    .line 1174
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@53
    move-result-object v20

    #@54
    monitor-enter v20

    #@55
    .line 1175
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@5c
    move-result-object v3

    #@5d
    .line 1176
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@60
    .line 1179
    :try_start_1
    const-string/jumbo v2, "select count(*) from ceDb.accounts WHERE name=? AND type=?"

    #@63
    .line 1181
    const/4 v8, 0x2

    #@64
    new-array v8, v8, [Ljava/lang/String;

    #@66
    move-object/from16 v0, p2

    #@68
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6a
    const/4 v10, 0x0

    #@6b
    aput-object v9, v8, v10

    #@6d
    move-object/from16 v0, p2

    #@6f
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@71
    const/4 v10, 0x1

    #@72
    aput-object v9, v8, v10

    #@74
    .line 1178
    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@77
    move-result-wide v18

    #@78
    .line 1182
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    #@7a
    cmp-long v2, v18, v8

    #@7c
    if-lez v2, :cond_2

    #@7e
    .line 1183
    const-string/jumbo v2, "AccountManagerService"

    #@81
    new-instance v8, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    .line 1184
    const-string/jumbo v9, ", skipping since the account already exists"

    #@96
    .line 1183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a1
    .line 1226
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a4
    .line 1185
    const/4 v2, 0x0

    #@a5
    monitor-exit v20

    #@a6
    return v2

    #@a7
    .line 1187
    :cond_2
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    #@a9
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@ac
    .line 1188
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    #@af
    move-object/from16 v0, p2

    #@b1
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b8
    .line 1189
    const-string/jumbo v2, "type"

    #@bb
    move-object/from16 v0, p2

    #@bd
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@bf
    move-object/from16 v0, v17

    #@c1
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 1190
    const-string/jumbo v2, "password"

    #@c7
    move-object/from16 v0, v17

    #@c9
    move-object/from16 v1, p3

    #@cb
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ce
    .line 1191
    const-string/jumbo v2, "ceDb.accounts"

    #@d1
    const-string/jumbo v8, "name"

    #@d4
    move-object/from16 v0, v17

    #@d6
    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@d9
    move-result-wide v4

    #@da
    .line 1192
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    #@dc
    cmp-long v2, v4, v8

    #@de
    if-gez v2, :cond_3

    #@e0
    .line 1193
    const-string/jumbo v2, "AccountManagerService"

    #@e3
    new-instance v8, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@eb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v8

    #@f5
    .line 1194
    const-string/jumbo v9, ", skipping the DB insert failed"

    #@f8
    .line 1193
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v8

    #@fc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v8

    #@100
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@103
    .line 1226
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@106
    .line 1195
    const/4 v2, 0x0

    #@107
    monitor-exit v20

    #@108
    return v2

    #@109
    .line 1198
    :cond_3
    :try_start_5
    new-instance v17, Landroid/content/ContentValues;

    #@10b
    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@10e
    .line 1199
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    #@111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@114
    move-result-object v8

    #@115
    move-object/from16 v0, v17

    #@117
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@11a
    .line 1200
    const-string/jumbo v2, "name"

    #@11d
    move-object/from16 v0, p2

    #@11f
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@121
    move-object/from16 v0, v17

    #@123
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@126
    .line 1201
    const-string/jumbo v2, "type"

    #@129
    move-object/from16 v0, p2

    #@12b
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@12d
    move-object/from16 v0, v17

    #@12f
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@132
    .line 1202
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    #@135
    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@138
    move-result-wide v8

    #@139
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13c
    move-result-object v8

    #@13d
    .line 1202
    move-object/from16 v0, v17

    #@13f
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@142
    .line 1204
    const-string/jumbo v2, "accounts"

    #@145
    const-string/jumbo v8, "name"

    #@148
    move-object/from16 v0, v17

    #@14a
    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@14d
    move-result-wide v8

    #@14e
    const-wide/16 v10, 0x0

    #@150
    cmp-long v2, v8, v10

    #@152
    if-gez v2, :cond_4

    #@154
    .line 1205
    const-string/jumbo v2, "AccountManagerService"

    #@157
    new-instance v8, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@15f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v8

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v8

    #@169
    .line 1206
    const-string/jumbo v9, ", skipping the DB insert failed"

    #@16c
    .line 1205
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v8

    #@170
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v8

    #@174
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@177
    .line 1226
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@17a
    .line 1207
    const/4 v2, 0x0

    #@17b
    monitor-exit v20

    #@17c
    return v2

    #@17d
    .line 1209
    :cond_4
    if-eqz p4, :cond_6

    #@17f
    .line 1210
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@182
    move-result-object v2

    #@183
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@186
    move-result-object v16

    #@187
    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@18a
    move-result v2

    #@18b
    if-eqz v2, :cond_6

    #@18d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@190
    move-result-object v6

    #@191
    check-cast v6, Ljava/lang/String;

    #@193
    .line 1211
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    #@195
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@198
    move-result-object v7

    #@199
    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    #@19b
    .line 1212
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    #@19e
    move-result-wide v8

    #@19f
    const-wide/16 v10, 0x0

    #@1a1
    cmp-long v2, v8, v10

    #@1a3
    if-gez v2, :cond_5

    #@1a5
    .line 1213
    const-string/jumbo v2, "AccountManagerService"

    #@1a8
    new-instance v8, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@1b0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v8

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v8

    #@1ba
    .line 1214
    const-string/jumbo v9, ", skipping since insertExtra failed for key "

    #@1bd
    .line 1213
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v8

    #@1c1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v8

    #@1c5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v8

    #@1c9
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1cc
    .line 1226
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1cf
    .line 1215
    const/4 v2, 0x0

    #@1d0
    monitor-exit v20

    #@1d1
    return v2

    #@1d2
    .line 1219
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@1d5
    .line 1221
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    #@1d8
    move-result-object v10

    #@1d9
    const-string/jumbo v11, "accounts"

    #@1dc
    move-object/from16 v8, p0

    #@1de
    move-object v9, v3

    #@1df
    move-wide v12, v4

    #@1e0
    move-object/from16 v14, p1

    #@1e2
    move/from16 v15, p5

    #@1e4
    invoke-direct/range {v8 .. v15}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@1e7
    .line 1224
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1ea
    .line 1226
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@1ed
    .line 1228
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1f0
    move-result v2

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1f6
    monitor-exit v20

    #@1f7
    .line 1230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1fa
    move-result-object v2

    #@1fb
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1fe
    move-result v8

    #@1ff
    invoke-virtual {v2, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@202
    move-result-object v2

    #@203
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    #@206
    move-result v2

    #@207
    if-eqz v2, :cond_7

    #@209
    .line 1231
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@20c
    move-result v2

    #@20d
    move-object/from16 v0, p0

    #@20f
    move-object/from16 v1, p2

    #@211
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    #@214
    .line 1233
    :cond_7
    const/4 v2, 0x1

    #@215
    return v2

    #@216
    .line 1225
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_0
    move-exception v2

    #@217
    .line 1226
    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@21a
    .line 1225
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@21b
    .line 1174
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    #@21c
    monitor-exit v20

    #@21d
    throw v2
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    #@0
    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 1250
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/content/pm/UserInfo;

    #@18
    .line 1251
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    iget v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@20
    if-ne p2, v3, :cond_0

    #@22
    .line 1252
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@24
    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@27
    .line 1253
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 1254
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@31
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@33
    .line 1255
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@35
    const/4 v6, 0x4

    #@36
    .line 1254
    invoke-virtual {v4, v6, p2, v5, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 1248
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 3563
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 3564
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 3565
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v1

    #@12
    .line 3566
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    #@14
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@17
    .line 3567
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@1a
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1c
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 3568
    const-string/jumbo v0, "type"

    #@22
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@24
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 3569
    const-string/jumbo v0, "shared_accounts"

    #@2a
    const-string/jumbo v2, "name=? AND type=?"

    #@2d
    .line 3570
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
    .line 3569
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    .line 3571
    const-string/jumbo v0, "shared_accounts"

    #@3e
    const-string/jumbo v2, "name"

    #@41
    invoke-virtual {v1, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@44
    move-result-wide v4

    #@45
    .line 3572
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    #@47
    cmp-long v0, v4, v2

    #@49
    if-gez v0, :cond_0

    #@4b
    .line 3573
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
    .line 3574
    const-string/jumbo v3, ", skipping the DB insert failed"

    #@61
    .line 3573
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
    .line 3575
    return v9

    #@6d
    .line 3577
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
    .line 3578
    return v10
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2369
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    #@4
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@7
    move-result-object v0

    #@8
    .line 2370
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@a
    .line 2371
    const/16 v7, 0x40

    #@c
    .line 2370
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v2

    #@10
    .line 2372
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
    .line 2373
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
    .line 2372
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2378
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    #@23
    .line 2379
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
    .line 2380
    const/4 v0, 0x0

    #@3e
    .line 2382
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@40
    :goto_2
    return-object v5

    #@41
    .line 2375
    :catch_1
    move-exception v4

    #@42
    .line 2376
    .local v4, "x":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "AccountManagerService"

    #@45
    const-string/jumbo v7, "SHA-256 should be available"

    #@48
    invoke-static {v6, v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 2377
    const/4 v0, 0x0

    #@4c
    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_1

    #@4d
    .line 2382
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "x":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    #@50
    move-result-object v5

    #@51
    goto :goto_2
.end method

.method private canHaveProfile(I)Z
    .locals 2
    .param p1, "parentUserId"    # I

    #@0
    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 1482
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method private canUserModifyAccounts(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5188
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5189
    return v2

    #@8
    .line 5191
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Landroid/os/UserHandle;

    #@e
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@11
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    .line 5192
    const-string/jumbo v1, "no_modify_accounts"

    #@18
    .line 5191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 5193
    const/4 v0, 0x0

    #@1f
    return v0

    #@20
    .line 5195
    :cond_1
    return v2
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 5200
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 5201
    return v7

    #@9
    .line 5203
    :cond_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@b
    .line 5204
    const-string/jumbo v5, "device_policy"

    #@e
    .line 5203
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@14
    .line 5205
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 5206
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_1

    #@1a
    .line 5207
    return v7

    #@1b
    .line 5209
    :cond_1
    array-length v5, v2

    #@1c
    move v3, v4

    #@1d
    :goto_0
    if-ge v3, v5, :cond_3

    #@1f
    aget-object v1, v2, v3

    #@21
    .line 5210
    .local v1, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 5211
    return v4

    #@28
    .line 5209
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 5214
    .end local v1    # "forbiddenType":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 5110
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    #@5
    .line 5111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 5110
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 5112
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    #@12
    .line 5113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 5112
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 5114
    new-instance v0, Ljava/lang/SecurityException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 5109
    :cond_0
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5103
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    const/4 v2, -0x1

    #@8
    const/4 v3, 0x1

    #@9
    .line 5102
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 5105
    new-instance v0, Ljava/lang/SecurityException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 5101
    :cond_0
    return-void
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5176
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 5178
    const-string/jumbo v1, "caller uid %s cannot access %s accounts"

    #@9
    .line 5177
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    .line 5179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    .line 5180
    const/4 v3, 0x1

    #@14
    aput-object p2, v2, v3

    #@16
    .line 5177
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 5181
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
    .line 5182
    new-instance v1, Ljava/lang/SecurityException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 5175
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
    .line 4321
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
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 4322
    const-string/jumbo v2, " VALUES (?,?,?,?,?,?)"

    #@17
    .line 4321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 4323
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@22
    move-result-object v1

    #@23
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    #@26
    .line 4320
    return-void
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    #@0
    .prologue
    .line 1113
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p2

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 1114
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@9
    move-result-wide v16

    #@a
    .line 1116
    .local v16, "id":J
    :try_start_0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$4;

    #@c
    move-object/from16 v0, p3

    #@e
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@10
    .line 1117
    move-object/from16 v0, p3

    #@12
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@14
    .line 1116
    const/4 v8, 0x0

    #@15
    .line 1117
    const/4 v9, 0x0

    #@16
    .line 1118
    const/4 v11, 0x0

    #@17
    move-object/from16 v3, p0

    #@19
    move-object/from16 v4, p0

    #@1b
    move-object/from16 v5, p4

    #@1d
    move-object/from16 v6, p1

    #@1f
    move-object/from16 v12, p3

    #@21
    move/from16 v13, p5

    #@23
    move-object/from16 v14, p2

    #@25
    .line 1116
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    #@28
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$4;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 1159
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2e
    .line 1112
    return-void

    #@2f
    .line 1158
    :catchall_0
    move-exception v2

    #@30
    .line 1159
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@33
    .line 1158
    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2388
    const-string/jumbo v2, "uid"

    #@3
    const/4 v3, -0x1

    #@4
    .line 2387
    move-object/from16 v0, p2

    #@6
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v15

    #@a
    .line 2390
    .local v15, "uid":I
    const-string/jumbo v2, "authTokenType"

    #@d
    .line 2389
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 2392
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@17
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 2393
    move-object/from16 v0, p1

    #@1c
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v3, v5

    #@21
    .line 2392
    const v4, 0x104045f

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    .line 2394
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    #@2a
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v10

    #@2e
    .line 2395
    .local v10, "index":I
    move-object v13, v14

    #@2f
    .line 2396
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@32
    .line 2397
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_0

    #@34
    .line 2398
    const/4 v2, 0x0

    #@35
    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    .line 2399
    add-int/lit8 v2, v10, 0x1

    #@3b
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    .line 2401
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    #@41
    move/from16 v0, p3

    #@43
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@46
    .line 2402
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@4b
    move-result-object v9

    #@4c
    .line 2403
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    #@4e
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@51
    .line 2404
    const v3, 0x108008a

    #@54
    .line 2403
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@57
    move-result-object v2

    #@58
    .line 2405
    const-wide/16 v4, 0x0

    #@5a
    .line 2403
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@5d
    move-result-object v2

    #@5e
    .line 2407
    const v3, 0x1060059

    #@61
    .line 2406
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    #@64
    move-result v3

    #@65
    .line 2403
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
    .line 2410
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@75
    const/4 v3, 0x0

    #@76
    .line 2411
    const/high16 v5, 0x10000000

    #@78
    const/4 v6, 0x0

    #@79
    move-object/from16 v4, p2

    #@7b
    .line 2410
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@7e
    move-result-object v2

    #@7f
    .line 2403
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
    .line 2413
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
    .line 2386
    return-void
.end method

.method private static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .locals 3
    .param p0, "dbFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 731
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 732
    const-string/jumbo v0, "AccountManagerService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Database at "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " was not deleted successfully"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 730
    :cond_0
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
    .line 4918
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v12

    #@4
    .line 4920
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
    .line 4921
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
    .line 4924
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3a
    move-result-object v4

    #@3b
    if-eqz v4, :cond_1

    #@3d
    .line 4925
    const-class v4, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@3f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 4926
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 4925
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    .line 4924
    if-eqz v4, :cond_1

    #@51
    .line 4927
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
    .line 4949
    :goto_0
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@5f
    .line 4917
    return-void

    #@60
    .line 4929
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@63
    move-result-object v14

    #@64
    .line 4930
    .local v14, "notificationId":Ljava/lang/Integer;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    move-object/from16 v0, p4

    #@6a
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@6d
    .line 4931
    new-instance v9, Landroid/os/UserHandle;

    #@6f
    move/from16 v0, p5

    #@71
    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@74
    .line 4932
    .local v9, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v9}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@79
    move-result-object v10

    #@7a
    .line 4934
    .local v10, "contextForUser":Landroid/content/Context;
    const v4, 0x10400ff

    #@7d
    invoke-virtual {v10, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@80
    move-result-object v4

    #@81
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@84
    move-result-object v15

    #@85
    .line 4935
    .local v15, "notificationTitleFormat":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    #@87
    invoke-direct {v4, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8a
    .line 4936
    const-wide/16 v6, 0x0

    #@8c
    .line 4935
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v4

    #@90
    .line 4937
    const v5, 0x108008a

    #@93
    .line 4935
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@96
    move-result-object v4

    #@97
    .line 4939
    const v5, 0x1060059

    #@9a
    .line 4938
    invoke-virtual {v10, v5}, Landroid/content/Context;->getColor(I)I

    #@9d
    move-result v5

    #@9e
    .line 4935
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a1
    move-result-object v4

    #@a2
    .line 4940
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
    .line 4935
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
    .line 4943
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@be
    const/4 v5, 0x0

    #@bf
    const/high16 v7, 0x10000000

    #@c1
    .line 4944
    const/4 v8, 0x0

    #@c2
    move-object/from16 v6, p4

    #@c4
    .line 4942
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@c7
    move-result-object v4

    #@c8
    .line 4935
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
    .line 4946
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
    .line 4948
    .end local v9    # "user":Landroid/os/UserHandle;
    .end local v10    # "contextForUser":Landroid/content/Context;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v14    # "notificationId":Ljava/lang/Integer;
    .end local v15    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@dd
    .line 4949
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@e0
    .line 4948
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
    .line 4859
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v19

    #@4
    monitor-enter v19

    #@5
    .line 4860
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v4

    #@d
    .line 4862
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_3

    #@f
    .line 4864
    const-string/jumbo v5, "accounts"

    #@12
    sget-object v6, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@14
    .line 4865
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
    .line 4864
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    move-result-object v14

    #@1f
    .line 4867
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 4869
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
    .line 4871
    :catchall_0
    move-exception v5

    #@4e
    .line 4872
    if-eqz v14, :cond_0

    #@50
    .line 4873
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@53
    .line 4871
    :cond_0
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@54
    .line 4859
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    #@55
    monitor-exit v19

    #@56
    throw v5

    #@57
    .line 4872
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    #@59
    .line 4873
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    :cond_2
    :goto_1
    monitor-exit v19

    #@5d
    .line 4858
    return-void

    #@5e
    .line 4878
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@61
    move-result v5

    #@62
    .line 4877
    const/4 v6, 0x0

    #@63
    .line 4878
    const/4 v7, 0x0

    #@64
    .line 4877
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-virtual {v0, v1, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@6b
    move-result-object v13

    #@6c
    .line 4879
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
    .line 4880
    const/4 v5, 0x0

    #@87
    array-length v6, v13

    #@88
    :goto_2
    if-ge v5, v6, :cond_4

    #@8a
    aget-object v12, v13, v5

    #@8c
    .line 4881
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
    .line 4880
    add-int/lit8 v5, v5, 0x1

    #@a7
    goto :goto_2

    #@a8
    .line 4885
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@ab
    .line 4886
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    .line 4887
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@b2
    move-result-object v11

    #@b3
    .line 4886
    const/4 v6, 0x0

    #@b4
    .line 4887
    const/4 v7, 0x0

    #@b5
    const/4 v8, 0x0

    #@b6
    const/4 v9, 0x0

    #@b7
    const/4 v10, 0x0

    #@b8
    .line 4886
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@bb
    move-result-object v14

    #@bc
    .line 4888
    .restart local v14    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    #@bf
    move-object/from16 v0, p3

    #@c1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 4889
    const-string/jumbo v5, "Accounts History"

    #@c7
    move-object/from16 v0, p3

    #@c9
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@cc
    .line 4891
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@cf
    move-result v5

    #@d0
    if-eqz v5, :cond_5

    #@d2
    .line 4893
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
    .line 4894
    const/4 v6, 0x2

    #@f8
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v5

    #@100
    .line 4894
    const-string/jumbo v6, ","

    #@103
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    .line 4894
    const/4 v6, 0x3

    #@108
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@10b
    move-result-object v6

    #@10c
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v5

    #@110
    .line 4894
    const-string/jumbo v6, ","

    #@113
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    .line 4895
    const/4 v6, 0x4

    #@118
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v5

    #@120
    .line 4895
    const-string/jumbo v6, ","

    #@123
    .line 4893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v5

    #@127
    .line 4895
    const/4 v6, 0x5

    #@128
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@12b
    move-result-object v6

    #@12c
    .line 4893
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
    .line 4897
    :catchall_2
    move-exception v5

    #@13b
    .line 4898
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@13e
    .line 4897
    throw v5

    #@13f
    .line 4898
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@142
    .line 4901
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@145
    .line 4902
    move-object/from16 v0, p0

    #@147
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@149
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@14a
    .line 4903
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14d
    move-result-wide v16

    #@14e
    .line 4904
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
    .line 4905
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
    .line 4906
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
    .line 4902
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
    .line 4910
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@1ac
    .line 4911
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
    .line 5351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v15

    #@4
    if-eqz v15, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    .line 5353
    :cond_0
    return-object p2

    #@9
    .line 5351
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@c
    move-result v15

    #@d
    if-ltz v15, :cond_0

    #@f
    .line 5352
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v15

    #@13
    move/from16 v0, p3

    #@15
    if-eq v0, v15, :cond_0

    #@17
    .line 5355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1a
    move-result-object v15

    #@1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1e
    move-result v16

    #@1f
    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@22
    move-result-object v13

    #@23
    .line 5356
    .local v13, "user":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_e

    #@25
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@28
    move-result v15

    #@29
    if-eqz v15, :cond_e

    #@2b
    .line 5357
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
    .line 5361
    .local v8, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@37
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v15

    #@3d
    .line 5362
    const v16, 0x1040063

    #@40
    .line 5361
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    .line 5363
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
    .line 5364
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
    .line 5365
    return-object p2

    #@74
    .line 5363
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@76
    goto :goto_0

    #@77
    .line 5368
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    #@79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7c
    .line 5369
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
    .line 5370
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
    .line 5371
    :cond_5
    const-string/jumbo v10, ""

    #@8f
    .line 5375
    .local v10, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_8

    #@91
    .line 5376
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
    .line 5377
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_6

    #@a1
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@a3
    if-eqz v15, :cond_6

    #@a5
    .line 5378
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 5392
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
    .line 5393
    .local v2, "account":Landroid/accounts/Account;
    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b9
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_a

    #@bf
    .line 5394
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 5392
    :cond_7
    :goto_3
    add-int/lit8 v15, v16, 0x1

    #@c4
    move/from16 v16, v15

    #@c6
    goto :goto_2

    #@c7
    .line 5382
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
    .line 5383
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
    .line 5384
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_9

    #@e3
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@e5
    move-object/from16 v17, v0

    #@e7
    if-eqz v17, :cond_9

    #@e9
    .line 5385
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    goto :goto_1

    #@ec
    .line 5382
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@ee
    goto :goto_4

    #@ef
    .line 5396
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_a
    const/4 v5, 0x0

    #@f0
    .line 5397
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
    .line 5398
    .local v11, "shared":Landroid/accounts/Account;
    invoke-virtual {v11, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v19

    #@fe
    if-eqz v19, :cond_c

    #@100
    .line 5399
    const/4 v5, 0x1

    #@101
    .line 5403
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_b
    if-nez v5, :cond_7

    #@103
    .line 5404
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@106
    goto :goto_3

    #@107
    .line 5397
    .restart local v11    # "shared":Landroid/accounts/Account;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    #@109
    goto :goto_5

    #@10a
    .line 5408
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
    .line 5409
    .local v4, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@113
    .line 5410
    return-object v4

    #@114
    .line 5412
    .end local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "filtered":[Landroid/accounts/Account;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "requiredAccountType":Ljava/lang/String;
    .end local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v14    # "whiteList":Ljava/lang/String;
    :cond_e
    return-object p2

    #@115
    .line 5390
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
    .line 3743
    const-string/jumbo v1, "shared_accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 3744
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
    .line 3743
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 3746
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 3747
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 3751
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 3747
    return-wide v0

    #@31
    .line 3749
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 3751
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 3749
    return-wide v0

    #@37
    .line 3750
    :catchall_0
    move-exception v0

    #@38
    .line 3751
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 3750
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
    .line 3756
    const-string/jumbo v1, "accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 3757
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
    .line 3756
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 3759
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 3760
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 3764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 3760
    return-wide v0

    #@31
    .line 3762
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 3764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 3762
    return-wide v0

    #@37
    .line 3763
    :catchall_0
    move-exception v0

    #@38
    .line 3764
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 3763
    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    #@0
    .prologue
    .line 3452
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v3

    #@4
    .line 3453
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
    .line 3454
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@d
    move-result-object v4

    #@e
    .line 3455
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v4, :cond_0

    #@10
    .line 3453
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 3456
    :cond_0
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    monitor-enter v8

    #@18
    .line 3458
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v9

    #@1c
    .line 3457
    const/4 v10, 0x0

    #@1d
    .line 3458
    const/4 v11, 0x0

    #@1e
    .line 3457
    invoke-virtual {p0, v4, v10, v9, v11}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@21
    move-result-object v1

    #@22
    .line 3459
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    #@23
    .local v0, "a":I
    :goto_2
    array-length v9, v1

    #@24
    if-ge v0, v9, :cond_1

    #@26
    .line 3460
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
    .line 3459
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_2

    #@33
    :cond_1
    monitor-exit v8

    #@34
    goto :goto_1

    #@35
    .line 3456
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    #@36
    monitor-exit v8

    #@37
    throw v6

    #@38
    .line 3465
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v6

    #@3c
    new-array v2, v6, [Landroid/accounts/AccountAndUser;

    #@3e
    .line 3466
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, [Landroid/accounts/AccountAndUser;

    #@44
    return-object v6
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 3484
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v5

    #@9
    if-eq p2, v5, :cond_0

    #@b
    .line 3485
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@e
    move-result v5

    #@f
    if-eq v1, v5, :cond_0

    #@11
    .line 3486
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@13
    .line 3487
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@16
    .line 3486
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 3489
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
    .line 3490
    const-string/jumbo v7, " trying to get account for "

    #@35
    .line 3489
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
    .line 3493
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
    .line 3494
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
    .line 3495
    const-string/jumbo v7, ", caller\'s uid "

    #@65
    .line 3494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 3495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6c
    move-result v7

    #@6d
    .line 3494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 3496
    const-string/jumbo v7, ", pid "

    #@74
    .line 3494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    .line 3496
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7b
    move-result v7

    #@7c
    .line 3494
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
    .line 3500
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
    .line 3501
    move v1, p4

    #@95
    .line 3502
    move-object p5, p3

    #@96
    .line 3505
    :cond_2
    invoke-direct {p0, v1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@99
    move-result-object v4

    #@9a
    .line 3507
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@9d
    move-result v5

    #@9e
    if-nez v5, :cond_5

    #@a0
    .line 3508
    if-eqz p1, :cond_3

    #@a2
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a5
    move-result v5

    #@a6
    if-eqz v5, :cond_5

    #@a8
    .line 3510
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_4

    #@ae
    .line 3512
    new-instance v4, Ljava/util/ArrayList;

    #@b0
    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b3
    .line 3513
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    .line 3517
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@b9
    move-result-wide v2

    #@ba
    .line 3519
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@bd
    move-result-object v0

    #@be
    .line 3520
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c1
    move-result-object v5

    #@c2
    .line 3526
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c5
    .line 3520
    return-object v5

    #@c6
    .line 3509
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_5
    new-array v5, v8, [Landroid/accounts/Account;

    #@c8
    return-object v5

    #@c9
    .line 3525
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v5

    #@ca
    .line 3526
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cd
    .line 3525
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
    .line 3536
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v7

    #@4
    monitor-enter v7

    #@5
    .line 3537
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 3538
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
    .line 3539
    .local v4, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1d
    move-result-object v0

    #@1e
    .line 3541
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@20
    .line 3542
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
    .line 3536
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
    .line 3545
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
    .line 3546
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
    .line 3547
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
    .line 3546
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_1

    #@43
    :cond_2
    monitor-exit v7

    #@44
    .line 3549
    return-object v2
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 601
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    #@5
    .line 602
    .local v0, "authCache":Lcom/android/server/accounts/AccountAuthenticatorCache;
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 5
    .param p0, "authCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 608
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 609
    .local v0, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@19
    .line 611
    .local v1, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1b
    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    #@1d
    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@1f
    iget v4, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    goto :goto_0

    #@29
    .line 613
    .end local v1    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 938
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2
    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    .line 940
    .local v2, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@9
    move-result v5

    #@a
    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    #@c
    .line 941
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    #@d
    .line 942
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
    .line 944
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@1f
    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    #@21
    aput-object v5, v4, v3

    #@23
    .line 945
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 947
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5557
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
    .line 5558
    :catch_0
    move-exception v0

    #@f
    .line 5560
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
    .line 2439
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v3

    #@4
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v0

    #@8
    .line 2440
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@b
    move-result-object v4

    #@c
    monitor-enter v4

    #@d
    .line 2442
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    #@f
    .line 2443
    new-instance v3, Landroid/util/Pair;

    #@11
    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    .line 2442
    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1b
    .line 2444
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
    .line 2445
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@27
    .line 2446
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
    .line 2447
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
    .line 2450
    return-object v1

    #@3a
    .line 2440
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3
.end method

.method private getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4338
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4339
    const-string/jumbo v2, "SELECT "

    #@8
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 4339
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 4340
    const-string/jumbo v2, " FROM "

    #@17
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 4340
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 4341
    const-string/jumbo v2, " ORDER BY "

    #@26
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 4342
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 4342
    const-string/jumbo v2, ","

    #@35
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 4342
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 4343
    const-string/jumbo v2, " LIMIT 1"

    #@44
    .line 4338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 4345
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
    .line 4327
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
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

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
    .line 4328
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
    .line 3769
    const-string/jumbo v1, "ceDb.extras"

    #@6
    new-array v2, v4, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 3770
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
    .line 3771
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
    .line 3769
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@40
    move-result-object v8

    #@41
    .line 3773
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_0

    #@47
    .line 3774
    const/4 v0, 0x0

    #@48
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-wide v0

    #@4c
    .line 3778
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4f
    .line 3774
    return-wide v0

    #@50
    .line 3776
    :cond_0
    const-wide/16 v0, -0x1

    #@52
    .line 3778
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@55
    .line 3776
    return-wide v0

    #@56
    .line 3777
    :catchall_0
    move-exception v0

    #@57
    .line 3778
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@5a
    .line 3777
    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 2455
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 2456
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
    .line 2457
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@11
    .line 2458
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
    .line 2459
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
    .line 2462
    return-object v0

    #@24
    .line 2455
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
    .line 319
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
    .line 5072
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 5073
    .local v2, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 5076
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
    .line 5078
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 5080
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
    .line 5082
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@24
    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@26
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@29
    move-result v6

    #@2a
    .line 5083
    .local v6, "sigChk":I
    if-nez p3, :cond_1

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 5084
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
    .line 5077
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_0
    move-exception v7

    #@39
    .line 5078
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 5077
    throw v7

    #@3d
    .line 5087
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
    .line 5067
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5061
    const/4 v1, 0x2

    #@1
    new-array v1, v1, [Ljava/lang/String;

    #@3
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    #@6
    const/4 v3, 0x0

    #@7
    aput-object v2, v1, v3

    #@9
    .line 5062
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 5061
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 5063
    .local v0, "isPermitted":Z
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 586
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 587
    const/16 v5, 0x2000

    #@4
    .line 586
    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 588
    .local v3, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    invoke-direct {v0, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@11
    .line 589
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/content/pm/PackageInfo;

    #@21
    .line 590
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 591
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@29
    const/high16 v5, 0x800000

    #@2b
    and-int/2addr v4, v5

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 592
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@32
    const/4 v5, 0x1

    #@33
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@36
    goto :goto_0

    #@37
    .line 595
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    #@0
    .prologue
    .line 617
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
    .line 400
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 401
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@c
    .line 403
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
    .line 5248
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 5249
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
    .line 5250
    return-void

    #@13
    .line 5252
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v5

    #@17
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 5253
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    monitor-enter v6

    #@20
    .line 5254
    :try_start_0
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@27
    move-result-object v3

    #@28
    .line 5255
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    .line 5257
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2e
    move-result-wide v0

    #@2f
    .line 5258
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    #@31
    cmp-long v5, v0, v8

    #@33
    if-ltz v5, :cond_2

    #@35
    .line 5259
    new-instance v4, Landroid/content/ContentValues;

    #@37
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@3a
    .line 5260
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "accounts_id"

    #@3d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@44
    .line 5261
    const-string/jumbo v5, "auth_token_type"

    #@47
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 5262
    const-string/jumbo v5, "uid"

    #@4d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@54
    .line 5263
    const-string/jumbo v5, "grants"

    #@57
    const-string/jumbo v7, "accounts_id"

    #@5a
    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@5d
    .line 5264
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 5267
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@63
    .line 5269
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@6a
    move-result v5

    #@6b
    .line 5270
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@6e
    move-result v7

    #@6f
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@72
    move-result-object v7

    #@73
    .line 5269
    invoke-virtual {p0, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@76
    monitor-exit v6

    #@77
    .line 5247
    return-void

    #@78
    .line 5266
    .end local v0    # "accountId":J
    :catchall_0
    move-exception v5

    #@79
    .line 5267
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@7c
    .line 5266
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7d
    .line 5253
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    #@7e
    monitor-exit v6

    #@7f
    throw v5
.end method

.method private handleIncomingUser(I)I
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4989
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 4990
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
    .line 4989
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 4991
    :catch_0
    move-exception v8

    #@19
    .line 4994
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 5121
    const/16 v5, 0x3e8

    #@4
    if-ne p3, v5, :cond_0

    #@6
    .line 5122
    return v4

    #@7
    .line 5124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@a
    move-result-object v0

    #@b
    .line 5125
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    monitor-enter v5

    #@10
    .line 5126
    :try_start_0
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@17
    move-result-object v2

    #@18
    .line 5127
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x4

    #@19
    new-array v1, v6, [Ljava/lang/String;

    #@1b
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    const/4 v7, 0x0

    #@20
    aput-object v6, v1, v7

    #@22
    const/4 v6, 0x1

    #@23
    aput-object p2, v1, v6

    #@25
    .line 5128
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@27
    const/4 v7, 0x2

    #@28
    aput-object v6, v1, v7

    #@2a
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2c
    const/4 v7, 0x3

    #@2d
    aput-object v6, v1, v7

    #@2f
    .line 5130
    .local v1, "args":[Ljava/lang/String;
    const-string/jumbo v6, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    #@32
    invoke-static {v2, v6, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@35
    move-result-wide v6

    #@36
    const-wide/16 v8, 0x0

    #@38
    cmp-long v6, v6, v8

    #@3a
    if-eqz v6, :cond_1

    #@3c
    move v3, v4

    #@3d
    .line 5131
    .local v3, "permissionGranted":Z
    :cond_1
    if-nez v3, :cond_2

    #@3f
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_2

    #@45
    .line 5134
    const-string/jumbo v6, "AccountManagerService"

    #@48
    new-instance v7, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v8, "no credentials permission for usage of "

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    const-string/jumbo v8, ", "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    .line 5135
    const-string/jumbo v8, " by uid "

    #@66
    .line 5134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    .line 5136
    const-string/jumbo v8, " but ignoring since device is in test harness."

    #@71
    .line 5134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    monitor-exit v5

    #@7d
    .line 5137
    return v4

    #@7e
    :cond_2
    monitor-exit v5

    #@7f
    .line 5139
    return v3

    #@80
    .line 5125
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    :catchall_0
    move-exception v4

    #@81
    monitor-exit v5

    #@82
    throw v4
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 4310
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    #@3
    move-result-wide v2

    #@4
    long-to-int v0, v2

    #@5
    .line 4311
    .local v0, "size":I
    const/16 v1, 0x40

    #@7
    if-lt v0, v1, :cond_0

    #@9
    .line 4313
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    #@c
    move-result-wide v2

    #@d
    long-to-int v1, v2

    #@e
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@11
    .line 4317
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@14
    .line 4308
    return-void

    #@15
    .line 4315
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
    const/4 v3, 0x0

    #@1
    .line 5339
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@4
    move-result-object v4

    #@5
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Landroid/accounts/Account;

    #@d
    .line 5340
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    #@f
    array-length v2, v0

    #@10
    .line 5341
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    #@12
    new-array v1, v4, [Landroid/accounts/Account;

    #@14
    .line 5342
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@16
    .line 5343
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 5345
    :cond_0
    aput-object p2, v1, v2

    #@1b
    .line 5346
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 5338
    return-void

    #@25
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    :cond_1
    move v2, v3

    #@26
    .line 5340
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
    .line 1262
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 1263
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    #@8
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1264
    const-string/jumbo v1, "accounts_id"

    #@e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@15
    .line 1265
    const-string/jumbo v1, "value"

    #@18
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 1266
    const-string/jumbo v1, "ceDb.extras"

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
    .line 1761
    if-eqz p4, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 1762
    :cond_0
    return-void

    #@8
    .line 1765
    :cond_1
    const-string/jumbo v0, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    #@b
    .line 1774
    new-array v1, v1, [Ljava/lang/String;

    #@d
    aput-object p4, v1, v2

    #@f
    aput-object p3, v1, v3

    #@11
    .line 1764
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v7

    #@15
    .line 1776
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1777
    const/4 v0, 0x0

    #@1c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    #@1f
    move-result-wide v8

    #@20
    .line 1778
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    #@21
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 1779
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    #@26
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 1780
    .local v4, "authTokenType":Ljava/lang/String;
    const-string/jumbo v0, "ceDb.authtokens"

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
    .line 1784
    new-instance v3, Landroid/accounts/Account;

    #@47
    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 1786
    const/4 v5, 0x0

    #@4b
    move-object v0, p0

    #@4c
    move-object v1, p1

    #@4d
    move-object v2, p2

    #@4e
    .line 1781
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1788
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_0
    move-exception v0

    #@53
    .line 1789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@56
    .line 1788
    throw v0

    #@57
    .line 1789
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@5a
    .line 1760
    return-void
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1752
    if-eqz p3, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1753
    :cond_0
    return-void

    #@5
    .line 1756
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1751
    return-void
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 5051
    if-nez p1, :cond_0

    #@2
    .line 5052
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 5054
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
    .line 5091
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
    .line 5092
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
    .line 5093
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@25
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 5094
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 5092
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 5098
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5042
    if-nez p1, :cond_0

    #@2
    .line 5043
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 5045
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

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
    .line 953
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v1

    #@5
    if-eq p2, v1, :cond_0

    #@7
    .line 954
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@a
    move-result v1

    #@b
    if-eq p1, v1, :cond_0

    #@d
    .line 955
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@f
    .line 956
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@12
    .line 955
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 953
    :cond_0
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 1237
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private varargs isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4972
    array-length v4, p3

    #@2
    move v2, v3

    #@3
    :goto_0
    if-ge v2, v4, :cond_3

    #@5
    aget-object v1, p3, v2

    #@7
    .line 4973
    .local v1, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v5, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_2

    #@f
    .line 4974
    const-string/jumbo v5, "AccountManagerService"

    #@12
    const/4 v6, 0x2

    #@13
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 4975
    const-string/jumbo v5, "AccountManagerService"

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "  caller uid "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    const-string/jumbo v7, " has "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 4977
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@41
    move-result v0

    #@42
    .line 4978
    .local v0, "opCode":I
    const/4 v5, -0x1

    #@43
    if-eq v0, v5, :cond_1

    #@45
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@47
    invoke-virtual {v5, v0, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_2

    #@4d
    .line 4980
    :cond_1
    const/4 v2, 0x1

    #@4e
    return v2

    #@4f
    .line 4972
    .end local v0    # "opCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 4984
    .end local v1    # "perm":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private isPrivileged(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4998
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v0

    #@5
    .line 5002
    .local v0, "callingUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@7
    .line 5003
    const-string/jumbo v8, "android"

    #@a
    new-instance v9, Landroid/os/UserHandle;

    #@c
    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    const/4 v10, 0x0

    #@10
    .line 5002
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
    .line 5008
    .local v5, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 5009
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
    .line 5011
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@23
    :try_start_1
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@26
    move-result-object v3

    #@27
    .line 5012
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    #@29
    .line 5013
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
    .line 5015
    const/4 v6, 0x1

    #@32
    return v6

    #@33
    .line 5004
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    #@34
    .line 5005
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@35
    .line 5017
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    #@36
    .line 5018
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@37
    .line 5009
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 5021
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v7
.end method

.method private isProfileOwner(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 5219
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@8
    .line 5220
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 5221
    const/4 v1, -0x1

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@e
    move-result v1

    #@f
    .line 5220
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
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
    .line 5144
    const/4 v5, 0x0

    #@3
    .line 5145
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 5147
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
    .line 5149
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 5151
    if-eqz v5, :cond_1

    #@12
    .line 5152
    array-length v8, v5

    #@13
    move v6, v7

    #@14
    :goto_0
    if-ge v6, v8, :cond_2

    #@16
    aget-object v1, v5, v6

    #@18
    .line 5154
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
    .line 5155
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    #@21
    .line 5156
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
    .line 5158
    return v12

    #@2a
    .line 5148
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v5, "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@2b
    .line 5149
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 5148
    throw v6

    #@2f
    .line 5160
    .restart local v1    # "name":Ljava/lang/String;
    .local v5, "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@30
    .line 5161
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
    .line 5152
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 5165
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
    .line 5167
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
    .line 4282
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
    .line 4281
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
    .line 4290
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get9(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 4291
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@8
    .line 4292
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@c
    .line 4293
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get18()Ljava/text/SimpleDateFormat;

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
    .line 4294
    int-to-long v2, p7

    #@1e
    const/4 v1, 0x4

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@22
    .line 4295
    const/4 v1, 0x5

    #@23
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@26
    .line 4296
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
    .line 4297
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    #@32
    .line 4298
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    #@35
    .line 4299
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
    .line 4289
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4268
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v1

    #@8
    .line 4269
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
    .line 4267
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
    .line 4273
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v1

    #@8
    .line 4274
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
    .line 4272
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
    .line 2420
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 2424
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@e
    .line 2426
    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 2425
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 2428
    const-string/jumbo v1, "account"

    #@1c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1f
    .line 2429
    const-string/jumbo v1, "authTokenType"

    #@22
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 2430
    const-string/jumbo v1, "response"

    #@28
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2b
    .line 2431
    const-string/jumbo v1, "uid"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@31
    .line 2433
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
    .line 2075
    if-nez p2, :cond_0

    #@3
    .line 2076
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
    .line 2078
    :cond_0
    const-string/jumbo v1, "AccountManagerService"

    #@14
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2079
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
    .line 2083
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 2074
    :cond_2
    :goto_0
    return-void

    #@44
    .line 2084
    :catch_0
    move-exception v0

    #@45
    .line 2087
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    #@48
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 2088
    const-string/jumbo v1, "AccountManagerService"

    #@51
    const-string/jumbo v2, "failure while notifying response"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 700
    const-string/jumbo v6, "android.intent.extra.user_handle"

    #@3
    const/4 v7, -0x1

    #@4
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v4

    #@8
    .line 701
    .local v4, "userId":I
    const/4 v6, 0x1

    #@9
    if-ge v4, v6, :cond_0

    #@b
    return-void

    #@c
    .line 705
    :cond_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@e
    monitor-enter v7

    #@f
    .line 706
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@17
    .line 707
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    #@1c
    .line 708
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@1e
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@21
    move-result v5

    #@22
    .line 709
    .local v5, "userUnlocked":Z
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@24
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v7

    #@28
    .line 711
    if-eqz v0, :cond_1

    #@2a
    .line 712
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@2d
    move-result-object v7

    #@2e
    monitor-enter v7

    #@2f
    .line 713
    :try_start_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@36
    monitor-exit v7

    #@37
    .line 716
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Removing database files for user "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 717
    new-instance v2, Ljava/io/File;

    #@53
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5a
    .line 719
    .local v2, "dbFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    #@5d
    .line 721
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@60
    move-result v3

    #@61
    .line 722
    .local v3, "fbeEnabled":Z
    if-eqz v3, :cond_2

    #@63
    if-eqz v5, :cond_3

    #@65
    .line 723
    :cond_2
    new-instance v1, Ljava/io/File;

    #@67
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6e
    .line 724
    .local v1, "ceDb":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_3

    #@74
    .line 725
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    #@77
    .line 699
    .end local v1    # "ceDb":Ljava/io/File;
    :cond_3
    return-void

    #@78
    .line 705
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v3    # "fbeEnabled":Z
    .end local v5    # "userUnlocked":Z
    :catchall_0
    move-exception v6

    #@79
    monitor-exit v7

    #@7a
    throw v6

    #@7b
    .line 712
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userUnlocked":Z
    :catchall_1
    move-exception v6

    #@7c
    monitor-exit v7

    #@7d
    throw v6
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 5026
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    #@3
    move-result v2

    #@4
    .line 5027
    .local v2, "isPrivileged":Z
    if-eqz p1, :cond_1

    #@6
    .line 5028
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@8
    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@b
    move-result v0

    #@c
    .line 5029
    :goto_0
    if-eqz p1, :cond_2

    #@e
    .line 5030
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@11
    move-result v1

    #@12
    .line 5031
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
    .line 5032
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
    .line 5033
    const-string/jumbo v5, ", "

    #@32
    .line 5032
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 5034
    const-string/jumbo v5, ": is authenticator? "

    #@3d
    .line 5032
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 5035
    const-string/jumbo v5, ", has explicit permission? "

    #@48
    .line 5032
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
    .line 5037
    :cond_0
    if-nez v0, :cond_3

    #@59
    if-nez v1, :cond_3

    #@5b
    .end local v2    # "isPrivileged":Z
    :goto_2
    return v2

    #@5c
    .line 5027
    .restart local v2    # "isPrivileged":Z
    :cond_1
    const/4 v0, 0x0

    #@5d
    .local v0, "fromAuthenticator":Z
    goto :goto_0

    #@5e
    .line 5029
    .end local v0    # "fromAuthenticator":Z
    :cond_2
    const/4 v1, 0x0

    #@5f
    .local v1, "hasExplicitGrants":Z
    goto :goto_1

    #@60
    .line 5037
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
    .line 676
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v11

    #@4
    monitor-enter v11

    #@5
    .line 677
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v0

    #@d
    .line 678
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    #@10
    .line 679
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
    .line 680
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
    .line 678
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@23
    move-result-object v8

    #@24
    .line 682
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
    .line 683
    const/4 v1, 0x0

    #@2b
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    #@2e
    move-result v10

    #@2f
    .line 684
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
    .line 685
    .local v9, "packageExists":Z
    :goto_1
    if-nez v9, :cond_0

    #@3a
    .line 688
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
    .line 689
    const-string/jumbo v3, " because its package is no longer installed"

    #@50
    .line 688
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
    .line 690
    const-string/jumbo v1, "grants"

    #@5e
    const-string/jumbo v2, "uid=?"

    #@61
    .line 691
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
    .line 690
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .line 693
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_0
    move-exception v1

    #@70
    .line 694
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@73
    .line 693
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    .line 676
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    #@75
    monitor-exit v11

    #@76
    throw v1

    #@77
    .line 684
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    #@78
    .restart local v9    # "packageExists":Z
    goto :goto_1

    #@79
    .line 694
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
    .line 675
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    #@0
    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 669
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
    .line 670
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
    .line 669
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 667
    return-void

    #@1c
    .line 668
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 803
    if-nez p2, :cond_0

    #@3
    .line 804
    return-object v4

    #@4
    .line 806
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 807
    const-string/jumbo v1, "AccountManagerService"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Password is not available - user "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@20
    move-result v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " data is locked"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 808
    return-object v4

    #@34
    .line 811
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    monitor-enter v2

    #@39
    .line 812
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@40
    move-result-object v0

    #@41
    .line 813
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@43
    .line 814
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@45
    .line 813
    invoke-static {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findAccountPasswordByNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result-object v1

    #@49
    monitor-exit v2

    #@4a
    return-object v1

    #@4b
    .line 811
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 837
    if-nez p2, :cond_0

    #@2
    .line 838
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 840
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@7
    move-result-object v12

    #@8
    monitor-enter v12

    #@9
    .line 841
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
    .line 842
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    #@15
    .line 843
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@1c
    move-result-object v0

    #@1d
    .line 845
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    #@20
    .line 846
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
    .line 847
    const-string/jumbo v3, "name=? AND type=?"

    #@2c
    .line 848
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
    .line 849
    const/4 v5, 0x0

    #@3a
    .line 850
    const/4 v6, 0x0

    #@3b
    .line 851
    const/4 v7, 0x0

    #@3c
    .line 844
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    move-result-object v8

    #@40
    .line 853
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_1

    #@46
    .line 854
    const/4 v1, 0x0

    #@47
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    .line 855
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    #@4d
    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 856
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
    .line 862
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5a
    monitor-exit v12

    #@5b
    .line 857
    return-object v9

    #@5c
    .line 862
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5f
    .line 859
    const/4 v1, 0x0

    #@60
    monitor-exit v12

    #@61
    return-object v1

    #@62
    .line 861
    :catchall_0
    move-exception v1

    #@63
    .line 862
    :goto_0
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@66
    .line 861
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@67
    .line 840
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
    .line 865
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
    .line 861
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
    .line 5314
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
    .line 5315
    .local v3, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_2

    #@e
    .line 5316
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 5317
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
    .line 5318
    .local v0, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_0

    #@1f
    .line 5319
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 5317
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 5322
    .end local v0    # "curAccount":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 5323
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@31
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 5330
    .end local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 5331
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 5332
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 5313
    return-void

    #@4a
    .line 5325
    .restart local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v4

    #@4e
    new-array v1, v4, [Landroid/accounts/Account;

    #@50
    .line 5326
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v1, [Landroid/accounts/Account;

    #@56
    .line 5327
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

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 22
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    .line 1671
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@3
    move-result v4

    #@4
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@9
    move-result v17

    #@a
    .line 1672
    .local v17, "userUnlocked":Z
    if-nez v17, :cond_0

    #@c
    .line 1673
    const-string/jumbo v4, "AccountManagerService"

    #@f
    new-instance v7, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v10, "Removing account "

    #@17
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    move-object/from16 v0, p2

    #@1d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    const-string/jumbo v10, " while user "

    #@24
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@2b
    move-result v10

    #@2c
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 1674
    const-string/jumbo v10, " is still locked. CE data will be removed later"

    #@33
    .line 1673
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1676
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@41
    move-result-object v19

    #@42
    monitor-enter v19

    #@43
    .line 1677
    if-eqz v17, :cond_3

    #@45
    .line 1678
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@4c
    move-result-object v5

    #@4d
    .line 1680
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, p2

    #@51
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@54
    move-result-wide v8

    #@55
    .line 1681
    .local v8, "accountId":J
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@58
    .line 1683
    :try_start_1
    const-string/jumbo v4, "accounts"

    #@5b
    const-string/jumbo v7, "name=? AND type=?"

    #@5e
    .line 1684
    const/4 v10, 0x2

    #@5f
    new-array v10, v10, [Ljava/lang/String;

    #@61
    move-object/from16 v0, p2

    #@63
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@65
    move-object/from16 v20, v0

    #@67
    const/16 v21, 0x0

    #@69
    aput-object v20, v10, v21

    #@6b
    move-object/from16 v0, p2

    #@6d
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6f
    move-object/from16 v20, v0

    #@71
    const/16 v21, 0x1

    #@73
    aput-object v20, v10, v21

    #@75
    .line 1683
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@78
    move-result v11

    #@79
    .line 1685
    .local v11, "deleted":I
    if-eqz v17, :cond_1

    #@7b
    .line 1687
    const-string/jumbo v4, "ceDb.accounts"

    #@7e
    const-string/jumbo v7, "name=? AND type=?"

    #@81
    .line 1688
    const/4 v10, 0x2

    #@82
    new-array v10, v10, [Ljava/lang/String;

    #@84
    move-object/from16 v0, p2

    #@86
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@88
    move-object/from16 v20, v0

    #@8a
    const/16 v21, 0x0

    #@8c
    aput-object v20, v10, v21

    #@8e
    move-object/from16 v0, p2

    #@90
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@92
    move-object/from16 v20, v0

    #@94
    const/16 v21, 0x1

    #@96
    aput-object v20, v10, v21

    #@98
    .line 1687
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@9b
    move-result v11

    #@9c
    .line 1690
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9f
    .line 1692
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@a2
    .line 1694
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@a5
    .line 1695
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@a8
    move-result v4

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@ae
    .line 1696
    if-eqz v17, :cond_4

    #@b0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    .line 1698
    .local v6, "action":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "accounts"

    #@b7
    move-object/from16 v4, p0

    #@b9
    move-object/from16 v10, p1

    #@bb
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@be
    monitor-exit v19

    #@bf
    .line 1700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c2
    move-result-wide v12

    #@c3
    .line 1702
    .local v12, "id":J
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@c6
    move-result v14

    #@c7
    .line 1703
    .local v14, "parentUserId":I
    move-object/from16 v0, p0

    #@c9
    invoke-direct {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_5

    #@cf
    .line 1705
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@d2
    move-result-object v4

    #@d3
    const/4 v7, 0x1

    #@d4
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@d7
    move-result-object v18

    #@d8
    .line 1706
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@db
    move-result-object v16

    #@dc
    .local v16, "user$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@df
    move-result v4

    #@e0
    if-eqz v4, :cond_5

    #@e2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e5
    move-result-object v15

    #@e6
    check-cast v15, Landroid/content/pm/UserInfo;

    #@e8
    .line 1707
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@eb
    move-result v4

    #@ec
    if-eqz v4, :cond_2

    #@ee
    iget v4, v15, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@f0
    if-ne v14, v4, :cond_2

    #@f2
    .line 1708
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    #@f4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, p2

    #@f8
    move/from16 v2, p3

    #@fa
    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fd
    goto :goto_2

    #@fe
    .line 1712
    .end local v14    # "parentUserId":I
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "user$iterator":Ljava/util/Iterator;
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    #@ff
    .line 1713
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@102
    .line 1712
    throw v4

    #@103
    .line 1679
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "accountId":J
    .end local v11    # "deleted":I
    .end local v12    # "id":J
    :cond_3
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@106
    move-result-object v4

    #@107
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@10a
    move-result-object v5

    #@10b
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_0

    #@10d
    .line 1691
    .restart local v8    # "accountId":J
    :catchall_1
    move-exception v4

    #@10e
    .line 1692
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@111
    .line 1691
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@112
    .line 1676
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    :catchall_2
    move-exception v4

    #@113
    monitor-exit v19

    #@114
    throw v4

    #@115
    .line 1697
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v11    # "deleted":I
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@118
    move-result-object v6

    #@119
    .restart local v6    # "action":Ljava/lang/String;
    goto :goto_1

    #@11a
    .line 1713
    .restart local v12    # "id":J
    .restart local v14    # "parentUserId":I
    :cond_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11d
    .line 1715
    if-lez v11, :cond_6

    #@11f
    const/4 v4, 0x1

    #@120
    :goto_3
    return v4

    #@121
    :cond_6
    const/4 v4, 0x0

    #@122
    goto :goto_3
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
    .line 3610
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 3611
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 3612
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v1

    #@12
    .line 3613
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@15
    move-result-wide v4

    #@16
    .line 3614
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    #@19
    const-string/jumbo v2, "name=? AND type=?"

    #@1c
    .line 3615
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
    .line 3614
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@2a
    move-result v8

    #@2b
    .line 3616
    .local v8, "r":I
    if-lez v8, :cond_0

    #@2d
    .line 3617
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
    .line 3619
    invoke-direct {p0, v6, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@3c
    .line 3621
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
    .locals 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1390
    const/16 v18, 0x0

    #@2
    .line 1401
    .local v18, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v4

    #@a
    .line 1402
    new-instance v6, Landroid/os/UserHandle;

    #@c
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@f
    move-result v7

    #@10
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@13
    .line 1400
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@18
    .line 1403
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1b
    move-result-object v6

    #@1c
    monitor-enter v6

    #@1d
    .line 1405
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@24
    move-result-object v4

    #@25
    .line 1404
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
    .line 1406
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
    .line 1407
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
    .line 1408
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
    .line 1403
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
    .line 1412
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@67
    move-result-object v25

    #@68
    monitor-enter v25

    #@69
    .line 1413
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@70
    move-result-object v5

    #@71
    .line 1414
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@74
    .line 1415
    const/4 v13, 0x0

    #@75
    .line 1416
    .local v13, "isSuccessful":Z
    new-instance v17, Landroid/accounts/Account;

    #@77
    move-object/from16 v0, p2

    #@79
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7b
    move-object/from16 v0, v17

    #@7d
    move-object/from16 v1, p3

    #@7f
    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@82
    .line 1418
    .local v17, "renamedAccount":Landroid/accounts/Account;
    :try_start_2
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p2

    #@86
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@89
    move-result-wide v8

    #@8a
    .line 1419
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    #@8c
    cmp-long v4, v8, v6

    #@8e
    if-ltz v4, :cond_2

    #@90
    .line 1420
    new-instance v24, Landroid/content/ContentValues;

    #@92
    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    #@95
    .line 1421
    .local v24, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    #@98
    move-object/from16 v0, v24

    #@9a
    move-object/from16 v1, p3

    #@9c
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 1422
    const/4 v4, 0x1

    #@a0
    new-array v11, v4, [Ljava/lang/String;

    #@a2
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    const/4 v6, 0x0

    #@a7
    aput-object v4, v11, v6

    #@a9
    .line 1423
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v4, "ceDb.accounts"

    #@ac
    const-string/jumbo v6, "_id=?"

    #@af
    move-object/from16 v0, v24

    #@b1
    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@b4
    .line 1425
    const-string/jumbo v4, "previous_name"

    #@b7
    move-object/from16 v0, p2

    #@b9
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@bb
    move-object/from16 v0, v24

    #@bd
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c0
    .line 1426
    const-string/jumbo v4, "accounts"

    #@c3
    const-string/jumbo v6, "_id=?"

    #@c6
    move-object/from16 v0, v24

    #@c8
    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@cb
    .line 1427
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@ce
    .line 1428
    const/4 v13, 0x1

    #@cf
    .line 1429
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    const-string/jumbo v7, "accounts"

    #@d6
    move-object/from16 v4, p0

    #@d8
    move-object/from16 v10, p1

    #@da
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@dd
    .line 1433
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@e0
    .line 1434
    if-eqz v13, :cond_5

    #@e2
    .line 1439
    move-object/from16 v0, p0

    #@e4
    move-object/from16 v1, p1

    #@e6
    move-object/from16 v2, v17

    #@e8
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@eb
    .line 1445
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@ee
    move-result-object v4

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    move-result-object v19

    #@f5
    check-cast v19, Ljava/util/HashMap;

    #@f7
    .line 1446
    .local v19, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@fa
    move-result-object v4

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    move-result-object v20

    #@101
    check-cast v20, Ljava/util/HashMap;

    #@103
    .line 1447
    .local v20, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@106
    .line 1452
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@109
    move-result-object v4

    #@10a
    move-object/from16 v0, v17

    #@10c
    move-object/from16 v1, v19

    #@10e
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 1453
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@114
    move-result-object v4

    #@115
    move-object/from16 v0, v17

    #@117
    move-object/from16 v1, v20

    #@119
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    .line 1454
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@11f
    move-result-object v4

    #@120
    .line 1456
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@122
    move-object/from16 v0, p2

    #@124
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@126
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@129
    .line 1454
    move-object/from16 v0, v17

    #@12b
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12e
    .line 1457
    move-object/from16 v18, v17

    #@130
    .line 1459
    .local v18, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@133
    move-result v16

    #@134
    .line 1460
    .local v16, "parentUserId":I
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v16

    #@138
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    #@13b
    move-result v4

    #@13c
    if-eqz v4, :cond_4

    #@13e
    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@141
    move-result-object v4

    #@142
    const/4 v6, 0x1

    #@143
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@146
    move-result-object v23

    #@147
    .line 1466
    .local v23, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14a
    move-result-object v22

    #@14b
    .local v22, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@14e
    move-result v4

    #@14f
    if-eqz v4, :cond_4

    #@151
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@154
    move-result-object v21

    #@155
    check-cast v21, Landroid/content/pm/UserInfo;

    #@157
    .line 1467
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@15a
    move-result v4

    #@15b
    if-eqz v4, :cond_3

    #@15d
    .line 1468
    move-object/from16 v0, v21

    #@15f
    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@161
    move/from16 v0, v16

    #@163
    if-ne v4, v0, :cond_3

    #@165
    .line 1469
    move-object/from16 v0, v21

    #@167
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@169
    move-object/from16 v0, p0

    #@16b
    move-object/from16 v1, p2

    #@16d
    move-object/from16 v2, p3

    #@16f
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@172
    goto :goto_1

    #@173
    .line 1412
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v13    # "isSuccessful":Z
    .end local v16    # "parentUserId":I
    .end local v17    # "renamedAccount":Landroid/accounts/Account;
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    .end local v19    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "user$iterator":Ljava/util/Iterator;
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v4

    #@174
    monitor-exit v25

    #@175
    throw v4

    #@176
    .line 1473
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    .restart local v13    # "isSuccessful":Z
    .restart local v16    # "parentUserId":I
    .restart local v17    # "renamedAccount":Landroid/accounts/Account;
    .restart local v18    # "resultAccount":Landroid/accounts/Account;
    .restart local v19    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@179
    move-result v4

    #@17a
    move-object/from16 v0, p0

    #@17c
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@17f
    .end local v16    # "parentUserId":I
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    .end local v19    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    monitor-exit v25

    #@180
    .line 1477
    return-object v18

    #@181
    .line 1432
    .end local v8    # "accountId":J
    .local v18, "resultAccount":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    #@182
    .line 1433
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@185
    .line 1434
    if-eqz v13, :cond_8

    #@187
    .line 1439
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, p1

    #@18b
    move-object/from16 v2, v17

    #@18d
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@190
    .line 1445
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@193
    move-result-object v6

    #@194
    move-object/from16 v0, p2

    #@196
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@199
    move-result-object v19

    #@19a
    check-cast v19, Ljava/util/HashMap;

    #@19c
    .line 1446
    .restart local v19    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@19f
    move-result-object v6

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a5
    move-result-object v20

    #@1a6
    check-cast v20, Ljava/util/HashMap;

    #@1a8
    .line 1447
    .restart local v20    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@1ab
    .line 1452
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1ae
    move-result-object v6

    #@1af
    move-object/from16 v0, v17

    #@1b1
    move-object/from16 v1, v19

    #@1b3
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b6
    .line 1453
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1b9
    move-result-object v6

    #@1ba
    move-object/from16 v0, v17

    #@1bc
    move-object/from16 v1, v20

    #@1be
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c1
    .line 1454
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1c4
    move-result-object v6

    #@1c5
    .line 1456
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1cb
    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@1ce
    .line 1454
    move-object/from16 v0, v17

    #@1d0
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d3
    .line 1457
    move-object/from16 v18, v17

    #@1d5
    .line 1459
    .local v18, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1d8
    move-result v16

    #@1d9
    .line 1460
    .restart local v16    # "parentUserId":I
    move-object/from16 v0, p0

    #@1db
    move/from16 v1, v16

    #@1dd
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    #@1e0
    move-result v6

    #@1e1
    if-eqz v6, :cond_7

    #@1e3
    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1e6
    move-result-object v6

    #@1e7
    const/4 v7, 0x1

    #@1e8
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@1eb
    move-result-object v23

    #@1ec
    .line 1466
    .restart local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ef
    move-result-object v22

    #@1f0
    .restart local v22    # "user$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@1f3
    move-result v6

    #@1f4
    if-eqz v6, :cond_7

    #@1f6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f9
    move-result-object v21

    #@1fa
    check-cast v21, Landroid/content/pm/UserInfo;

    #@1fc
    .line 1467
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@1ff
    move-result v6

    #@200
    if-eqz v6, :cond_6

    #@202
    .line 1468
    move-object/from16 v0, v21

    #@204
    iget v6, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@206
    move/from16 v0, v16

    #@208
    if-ne v6, v0, :cond_6

    #@20a
    .line 1469
    move-object/from16 v0, v21

    #@20c
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@20e
    move-object/from16 v0, p0

    #@210
    move-object/from16 v1, p2

    #@212
    move-object/from16 v2, p3

    #@214
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@217
    goto :goto_2

    #@218
    .line 1473
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "user$iterator":Ljava/util/Iterator;
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@21b
    move-result v6

    #@21c
    move-object/from16 v0, p0

    #@21e
    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@221
    .line 1432
    .end local v16    # "parentUserId":I
    .end local v18    # "resultAccount":Landroid/accounts/Account;
    .end local v19    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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
    .line 5283
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 5284
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
    .line 5285
    return-void

    #@13
    .line 5287
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v4

    #@17
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 5288
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    monitor-enter v5

    #@20
    .line 5289
    :try_start_0
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@27
    move-result-object v3

    #@28
    .line 5290
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    .line 5292
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2e
    move-result-wide v0

    #@2f
    .line 5293
    .local v0, "accountId":J
    const-wide/16 v6, 0x0

    #@31
    cmp-long v4, v0, v6

    #@33
    if-ltz v4, :cond_2

    #@35
    .line 5294
    const-string/jumbo v4, "grants"

    #@38
    .line 5295
    const-string/jumbo v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    #@3b
    .line 5297
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
    .line 5298
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    const/4 v9, 0x2

    #@4d
    aput-object v8, v7, v9

    #@4f
    .line 5294
    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@52
    .line 5299
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 5302
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@58
    .line 5304
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v4

    #@60
    .line 5305
    new-instance v6, Landroid/os/UserHandle;

    #@62
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@65
    move-result v7

    #@66
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@69
    .line 5304
    invoke-virtual {p0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6c
    monitor-exit v5

    #@6d
    .line 5282
    return-void

    #@6e
    .line 5301
    .end local v0    # "accountId":J
    :catchall_0
    move-exception v4

    #@6f
    .line 5302
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@72
    .line 5301
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@73
    .line 5288
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
    .line 1815
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1816
    :cond_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1818
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    .line 1819
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@15
    move-result-object v1

    #@16
    .line 1818
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@19
    .line 1820
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1c
    move-result-object v9

    #@1d
    monitor-enter v9

    #@1e
    .line 1821
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@25
    move-result-object v2

    #@26
    .line 1822
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@29
    .line 1824
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result-wide v6

    #@2d
    .line 1825
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    #@2f
    cmp-long v0, v6, v0

    #@31
    if-gez v0, :cond_2

    #@33
    .line 1842
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 1826
    const/4 v0, 0x0

    #@37
    monitor-exit v9

    #@38
    return v0

    #@39
    .line 1828
    :cond_2
    :try_start_3
    const-string/jumbo v0, "ceDb.authtokens"

    #@3c
    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "accounts_id="

    #@44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    const-string/jumbo v3, " AND "

    #@4f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v3, "type"

    #@56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v3, "=?"

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 1830
    const/4 v3, 0x1

    #@66
    new-array v3, v3, [Ljava/lang/String;

    #@68
    const/4 v4, 0x0

    #@69
    aput-object p3, v3, v4

    #@6b
    .line 1828
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@6e
    .line 1831
    new-instance v8, Landroid/content/ContentValues;

    #@70
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    #@73
    .line 1832
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "accounts_id"

    #@76
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@7d
    .line 1833
    const-string/jumbo v0, "type"

    #@80
    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 1834
    const-string/jumbo v0, "authtoken"

    #@86
    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    .line 1835
    const-string/jumbo v0, "ceDb.authtokens"

    #@8c
    const-string/jumbo v1, "authtoken"

    #@8f
    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@92
    move-result-wide v0

    #@93
    const-wide/16 v4, 0x0

    #@95
    cmp-long v0, v0, v4

    #@97
    if-ltz v0, :cond_3

    #@99
    .line 1836
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@9c
    move-object v0, p0

    #@9d
    move-object v1, p1

    #@9e
    move-object v3, p2

    #@9f
    move-object v4, p3

    #@a0
    move-object v5, p4

    #@a1
    .line 1837
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    .line 1842
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a7
    .line 1838
    const/4 v0, 0x1

    #@a8
    monitor-exit v9

    #@a9
    return v0

    #@aa
    .line 1842
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ad
    .line 1840
    const/4 v0, 0x0

    #@ae
    monitor-exit v9

    #@af
    return v0

    #@b0
    .line 1841
    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@b1
    .line 1842
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@b4
    .line 1841
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b5
    .line 1820
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@b6
    monitor-exit v9

    #@b7
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
    .line 1802
    if-eqz p2, :cond_0

    #@2
    if-nez p5, :cond_1

    #@4
    .line 1803
    :cond_0
    return-void

    #@5
    .line 1802
    :cond_1
    if-eqz p3, :cond_0

    #@7
    if-eqz p4, :cond_0

    #@9
    .line 1805
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    .line 1806
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@18
    move-result-object v1

    #@19
    .line 1805
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@1c
    .line 1807
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@1f
    move-result-object v8

    #@20
    monitor-enter v8

    #@21
    .line 1808
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@24
    move-result-object v0

    #@25
    move-object v1, p2

    #@26
    move-object v2, p6

    #@27
    move-object v3, p5

    #@28
    move-object v4, p3

    #@29
    move-object v5, p4

    #@2a
    move-wide/from16 v6, p7

    #@2c
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v8

    #@30
    .line 1800
    return-void

    #@31
    .line 1807
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v8

    #@33
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
    .line 4825
    if-eqz p0, :cond_1

    #@3
    .line 4826
    array-length v3, p0

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p0, v1

    #@9
    .line 4827
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 4828
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 4826
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 4832
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1967
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
    .line 1968
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@11
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1967
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
    .line 1969
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
    .line 1966
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5579
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 5577
    :cond_0
    :goto_0
    return-void

    #@4
    .line 5580
    :catch_0
    move-exception v0

    #@5
    .line 5583
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    #@8
    const/4 v2, 0x2

    #@9
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 5584
    const-string/jumbo v1, "AccountManagerService"

    #@12
    const-string/jumbo v2, "failure while notifying response"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5566
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 5564
    :cond_0
    :goto_0
    return-void

    #@4
    .line 5567
    :catch_0
    move-exception v0

    #@5
    .line 5570
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    #@8
    const/4 v2, 0x2

    #@9
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 5571
    const-string/jumbo v1, "AccountManagerService"

    #@12
    const-string/jumbo v2, "failure while notifying response"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    .line 1936
    if-nez p2, :cond_0

    #@2
    .line 1937
    return-void

    #@3
    .line 1939
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@6
    move-result-object v10

    #@7
    monitor-enter v10

    #@8
    .line 1940
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 1941
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 1943
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    #@15
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@18
    .line 1944
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    #@1b
    invoke-virtual {v9, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 1945
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@21
    move-result-wide v4

    #@22
    .line 1946
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@24
    cmp-long v0, v4, v6

    #@26
    if-ltz v0, :cond_2

    #@28
    .line 1947
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
    .line 1948
    .local v8, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v0, "ceDb.accounts"

    #@35
    const-string/jumbo v3, "_id=?"

    #@38
    invoke-virtual {v1, v0, v9, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    .line 1949
    const-string/jumbo v0, "ceDb.authtokens"

    #@3e
    const-string/jumbo v3, "accounts_id=?"

    #@41
    invoke-virtual {v1, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@44
    .line 1950
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 1951
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    #@52
    .line 1952
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@55
    .line 1954
    if-eqz p3, :cond_1

    #@57
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_3

    #@5d
    .line 1955
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 1957
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
    .line 1960
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@6d
    .line 1962
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
    .line 1935
    return-void

    #@76
    .line 1956
    .restart local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    move-result-object v2

    #@7a
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    #@7b
    .line 1959
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@7c
    .line 1960
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@7f
    .line 1959
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@80
    .line 1939
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@81
    monitor-exit v10

    #@82
    throw v0
.end method

.method private setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2044
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 2045
    :cond_0
    return-void

    #@5
    .line 2047
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v3

    #@d
    .line 2048
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@10
    .line 2050
    :try_start_0
    move-object/from16 v0, p2

    #@12
    invoke-direct {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-wide v4

    #@16
    .line 2051
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@18
    cmp-long v2, v4, v6

    #@1a
    if-gez v2, :cond_2

    #@1c
    .line 2070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@1f
    .line 2052
    return-void

    #@20
    .line 2054
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    #@22
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    #@25
    move-result-wide v12

    #@26
    .line 2055
    .local v12, "extrasId":J
    const-wide/16 v6, 0x0

    #@28
    cmp-long v2, v12, v6

    #@2a
    if-gez v2, :cond_3

    #@2c
    move-object v2, p0

    #@2d
    move-object/from16 v6, p3

    #@2f
    move-object/from16 v7, p4

    #@31
    .line 2056
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-wide v12

    #@35
    .line 2057
    const-wide/16 v6, 0x0

    #@37
    cmp-long v2, v12, v6

    #@39
    if-gez v2, :cond_4

    #@3b
    .line 2070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@3e
    .line 2058
    return-void

    #@3f
    .line 2061
    :cond_3
    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    #@41
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    #@44
    .line 2062
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    #@47
    move-object/from16 v0, p4

    #@49
    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 2063
    const-string/jumbo v2, "extras"

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "_id="

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    const/4 v7, 0x0

    #@64
    invoke-virtual {v3, v2, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    move-result v2

    #@68
    const/4 v6, 0x1

    #@69
    if-eq v6, v2, :cond_4

    #@6b
    .line 2070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@6e
    .line 2064
    return-void

    #@6f
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object v6, p0

    #@70
    move-object/from16 v7, p1

    #@72
    move-object v8, v3

    #@73
    move-object/from16 v9, p2

    #@75
    move-object/from16 v10, p3

    #@77
    move-object/from16 v11, p4

    #@79
    .line 2067
    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 2068
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    .line 2070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@82
    .line 2043
    return-void

    #@83
    .line 2069
    .end local v4    # "accountId":J
    .end local v12    # "extrasId":J
    :catchall_0
    move-exception v2

    #@84
    .line 2070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@87
    .line 2069
    throw v2
.end method

.method private showCantAddAccount(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2971
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v4, Landroid/accounts/CantAddAccountActivity;

    #@6
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 2972
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string/jumbo v1, "android.accounts.extra.ERROR_CODE"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f
    .line 2973
    const/high16 v1, 0x10000000

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14
    .line 2974
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 2976
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
    .line 2978
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@25
    .line 2970
    return-void

    #@26
    .line 2977
    :catchall_0
    move-exception v1

    #@27
    .line 2978
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2a
    .line 2977
    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5310
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

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 653
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    const-string/jumbo v5, "mUsers lock must be held"

    #@9
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@c
    .line 654
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@13
    move-result-object v3

    #@14
    .line 655
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findCeAccountsNotInDe(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    .line 656
    .local v2, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 657
    const-string/jumbo v4, "AccountManagerService"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Accounts "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    const-string/jumbo v6, " were previously deleted while user "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 658
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@3b
    move-result v6

    #@3c
    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    .line 658
    const-string/jumbo v6, " was locked. Removing accounts from CE tables"

    #@43
    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 659
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get11()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    const-string/jumbo v5, "accounts"

    #@55
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 661
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v1

    #@5c
    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_0

    #@62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Landroid/accounts/Account;

    #@68
    .line 662
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@6b
    move-result v4

    #@6c
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@6f
    goto :goto_0

    #@70
    .line 652
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private syncSharedAccounts(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 754
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@5
    move-result-object v3

    #@6
    .line 755
    .local v3, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    #@8
    array-length v5, v3

    #@9
    if-nez v5, :cond_1

    #@b
    :cond_0
    return-void

    #@c
    .line 756
    :cond_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {p0, v7, p1, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@15
    move-result-object v0

    #@16
    .line 757
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 758
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@23
    move-result-object v5

    #@24
    iget v1, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@26
    .line 760
    .local v1, "parentUserId":I
    :goto_0
    if-gez v1, :cond_3

    #@28
    .line 761
    const-string/jumbo v4, "AccountManagerService"

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "User "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, " has shared accounts, but no parent user"

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 762
    return-void

    #@4a
    .end local v1    # "parentUserId":I
    :cond_2
    move v1, v4

    #@4b
    .line 759
    goto :goto_0

    #@4c
    .line 764
    .restart local v1    # "parentUserId":I
    :cond_3
    array-length v5, v3

    #@4d
    :goto_1
    if-ge v4, v5, :cond_5

    #@4f
    aget-object v2, v3, v4

    #@51
    .line 765
    .local v2, "sa":Landroid/accounts/Account;
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_4

    #@57
    .line 764
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 767
    :cond_4
    invoke-virtual {p0, v7, v2, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@5d
    goto :goto_2

    #@5e
    .line 752
    .end local v2    # "sa":Landroid/accounts/Account;
    :cond_5
    return-void
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
    .line 1091
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@5
    move-result-object v0

    #@6
    .line 1092
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    monitor-enter v5

    #@b
    .line 1093
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    #@d
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 1094
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
    .line 1095
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@25
    move-result-object v1

    #@26
    .line 1097
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "accounts"

    #@29
    .line 1099
    const-string/jumbo v6, "name=? AND type=?"

    #@2c
    .line 1100
    const/4 v7, 0x2

    #@2d
    new-array v7, v7, [Ljava/lang/String;

    #@2f
    .line 1101
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
    .line 1096
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result v2

    #@3d
    .line 1103
    .local v2, "i":I
    if-lez v2, :cond_0

    #@3f
    monitor-exit v5

    #@40
    .line 1104
    return v11

    #@41
    :cond_0
    monitor-exit v5

    #@42
    .line 1107
    return v10

    #@43
    .line 1092
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
    .locals 34
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    #@0
    .prologue
    .line 423
    const-string/jumbo v3, "AccountManagerService"

    #@3
    const/4 v4, 0x3

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 424
    const-string/jumbo v3, "AccountManagerService"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "validateAccountsInternal "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 425
    const-string/jumbo v5, " isCeDatabaseAttached="

    #@24
    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 425
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    #@2f
    move-result v5

    #@30
    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 426
    const-string/jumbo v5, " userLocked="

    #@37
    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 426
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@3f
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@42
    move-result v6

    #@43
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@46
    move-result v5

    #@47
    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 429
    :cond_0
    if-eqz p2, :cond_1

    #@54
    .line 430
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@58
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@5b
    move-result v4

    #@5c
    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    #@5f
    .line 434
    :cond_1
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@63
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@66
    move-result v4

    #@67
    .line 433
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    #@6a
    move-result-object v24

    #@6b
    .line 435
    .local v24, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@6e
    move-result v3

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@74
    move-result v31

    #@75
    .line 437
    .local v31, "userUnlocked":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@78
    move-result-object v33

    #@79
    monitor-enter v33

    #@7a
    .line 438
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@81
    move-result-object v2

    #@82
    .line 439
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    #@83
    .line 443
    .local v12, "accountDeleted":Z
    const-string/jumbo v3, "meta"

    #@86
    .line 444
    const/4 v4, 0x2

    #@87
    new-array v4, v4, [Ljava/lang/String;

    #@89
    const-string/jumbo v5, "key"

    #@8c
    const/4 v6, 0x0

    #@8d
    aput-object v5, v4, v6

    #@8f
    const-string/jumbo v5, "value"

    #@92
    const/4 v6, 0x1

    #@93
    aput-object v5, v4, v6

    #@95
    .line 445
    const-string/jumbo v5, "key LIKE ?"

    #@98
    .line 446
    const/4 v6, 0x1

    #@99
    new-array v6, v6, [Ljava/lang/String;

    #@9b
    const-string/jumbo v7, "auth_uid_for_type:%"

    #@9e
    const/4 v10, 0x0

    #@9f
    aput-object v7, v6, v10

    #@a1
    .line 449
    const-string/jumbo v9, "key"

    #@a4
    .line 447
    const/4 v7, 0x0

    #@a5
    .line 448
    const/4 v8, 0x0

    #@a6
    .line 442
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@a9
    move-result-object v27

    #@aa
    .line 451
    .local v27, "metaCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@ad
    move-result-object v28

    #@ae
    .line 453
    .local v28, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    #@b0
    .line 454
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    #@b3
    move-result v3

    #@b4
    if-eqz v3, :cond_7

    #@b6
    .line 455
    const/4 v3, 0x0

    #@b7
    move-object/from16 v0, v27

    #@b9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    const-string/jumbo v4, ":"

    #@c0
    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    const/4 v4, 0x1

    #@c5
    aget-object v29, v3, v4

    #@c7
    .line 456
    .local v29, "type":Ljava/lang/String;
    const/4 v3, 0x1

    #@c8
    move-object/from16 v0, v27

    #@ca
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@cd
    move-result-object v30

    #@ce
    .line 457
    .local v30, "uid":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d1
    move-result v3

    #@d2
    if-nez v3, :cond_3

    #@d4
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d7
    move-result v3

    #@d8
    if-eqz v3, :cond_4

    #@da
    .line 459
    :cond_3
    const-string/jumbo v3, "AccountManagerService"

    #@dd
    new-instance v4, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v5, "Auth type empty: "

    #@e5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v4

    #@e9
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ec
    move-result v5

    #@ed
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v4

    #@f1
    .line 460
    const-string/jumbo v5, ", uid empty: "

    #@f4
    .line 459
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v4

    #@f8
    .line 460
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@fb
    move-result v5

    #@fc
    .line 459
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v4

    #@104
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@107
    goto :goto_0

    #@108
    .line 503
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@109
    .line 504
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    #@10c
    .line 503
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10d
    .line 437
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v27    # "metaCursor":Landroid/database/Cursor;
    .end local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    #@10e
    monitor-exit v33

    #@10f
    throw v3

    #@110
    .line 463
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "accountDeleted":Z
    .restart local v27    # "metaCursor":Landroid/database/Cursor;
    .restart local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29    # "type":Ljava/lang/String;
    .restart local v30    # "uid":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, v24

    #@112
    move-object/from16 v1, v29

    #@114
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    move-result-object v25

    #@118
    check-cast v25, Ljava/lang/Integer;

    #@11a
    .line 464
    .local v25, "knownUid":Ljava/lang/Integer;
    if-eqz v25, :cond_5

    #@11c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@11f
    move-result-object v3

    #@120
    move-object/from16 v0, v30

    #@122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_5

    #@128
    .line 466
    move-object/from16 v0, v24

    #@12a
    move-object/from16 v1, v29

    #@12c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    goto :goto_0

    #@130
    .line 484
    :cond_5
    if-nez v26, :cond_6

    #@132
    .line 485
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@135
    move-result v3

    #@136
    move-object/from16 v0, p0

    #@138
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    #@13b
    move-result-object v26

    #@13c
    .line 487
    :cond_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13f
    move-result v3

    #@140
    move-object/from16 v0, v26

    #@142
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@145
    move-result v3

    #@146
    if-nez v3, :cond_2

    #@148
    .line 491
    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14b
    .line 494
    const-string/jumbo v3, "meta"

    #@14e
    .line 495
    const-string/jumbo v4, "key=? AND value=?"

    #@151
    .line 496
    const/4 v5, 0x2

    #@152
    new-array v5, v5, [Ljava/lang/String;

    #@154
    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v7, "auth_uid_for_type:"

    #@15c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v6

    #@160
    move-object/from16 v0, v29

    #@162
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v6

    #@166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v6

    #@16a
    const/4 v7, 0x0

    #@16b
    aput-object v6, v5, v7

    #@16d
    .line 498
    const/4 v6, 0x1

    #@16e
    aput-object v30, v5, v6

    #@170
    .line 493
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@173
    goto/16 :goto_0

    #@175
    .line 504
    .end local v25    # "knownUid":Ljava/lang/Integer;
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    #@178
    .line 510
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@17b
    move-result-object v3

    #@17c
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@17f
    move-result-object v23

    #@180
    .line 511
    .local v23, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@183
    move-result v3

    #@184
    if-eqz v3, :cond_8

    #@186
    .line 512
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@189
    move-result-object v21

    #@18a
    check-cast v21, Ljava/util/Map$Entry;

    #@18c
    .line 513
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v32, Landroid/content/ContentValues;

    #@18e
    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    #@191
    .line 514
    .local v32, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "key"

    #@194
    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v5, "auth_uid_for_type:"

    #@19c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v5

    #@1a0
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a3
    move-result-object v3

    #@1a4
    check-cast v3, Ljava/lang/String;

    #@1a6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v3

    #@1aa
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v3

    #@1ae
    .line 514
    move-object/from16 v0, v32

    #@1b0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b3
    .line 516
    const-string/jumbo v4, "value"

    #@1b6
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b9
    move-result-object v3

    #@1ba
    check-cast v3, Ljava/lang/Integer;

    #@1bc
    move-object/from16 v0, v32

    #@1be
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c1
    .line 517
    const-string/jumbo v3, "meta"

    #@1c4
    const/4 v4, 0x0

    #@1c5
    const/4 v5, 0x5

    #@1c6
    move-object/from16 v0, v32

    #@1c8
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    #@1cb
    goto :goto_1

    #@1cc
    .line 520
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string/jumbo v3, "accounts"

    #@1cf
    .line 521
    const/4 v4, 0x3

    #@1d0
    new-array v4, v4, [Ljava/lang/String;

    #@1d2
    const-string/jumbo v5, "_id"

    #@1d5
    const/4 v6, 0x0

    #@1d6
    aput-object v5, v4, v6

    #@1d8
    const-string/jumbo v5, "type"

    #@1db
    const/4 v6, 0x1

    #@1dc
    aput-object v5, v4, v6

    #@1de
    const-string/jumbo v5, "name"

    #@1e1
    const/4 v6, 0x2

    #@1e2
    aput-object v5, v4, v6

    #@1e4
    .line 522
    const-string/jumbo v9, "_id"

    #@1e7
    const/4 v5, 0x0

    #@1e8
    const/4 v6, 0x0

    #@1e9
    const/4 v7, 0x0

    #@1ea
    const/4 v8, 0x0

    #@1eb
    .line 520
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1ee
    move-result-object v20

    #@1ef
    .line 524
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1f2
    move-result-object v3

    #@1f3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@1f6
    .line 525
    new-instance v15, Ljava/util/LinkedHashMap;

    #@1f8
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    #@1fb
    .line 526
    .local v15, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    #@1fe
    move-result v3

    #@1ff
    if-eqz v3, :cond_d

    #@201
    .line 527
    const/4 v3, 0x0

    #@202
    move-object/from16 v0, v20

    #@204
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    #@207
    move-result-wide v8

    #@208
    .line 528
    .local v8, "accountId":J
    const/4 v3, 0x1

    #@209
    move-object/from16 v0, v20

    #@20b
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@20e
    move-result-object v16

    #@20f
    .line 529
    .local v16, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    #@210
    move-object/from16 v0, v20

    #@212
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@215
    move-result-object v13

    #@216
    .line 531
    .local v13, "accountName":Ljava/lang/String;
    move-object/from16 v0, v28

    #@218
    move-object/from16 v1, v16

    #@21a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@21d
    move-result v3

    #@21e
    if-eqz v3, :cond_b

    #@220
    .line 532
    const-string/jumbo v3, "AccountManagerService"

    #@223
    new-instance v4, Ljava/lang/StringBuilder;

    #@225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    const-string/jumbo v5, "deleting account "

    #@22b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v4

    #@22f
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v4

    #@233
    const-string/jumbo v5, " because type "

    #@236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v4

    #@23a
    move-object/from16 v0, v16

    #@23c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v4

    #@240
    .line 533
    const-string/jumbo v5, "\'s registered authenticator no longer exist."

    #@243
    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v4

    #@247
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24a
    move-result-object v4

    #@24b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24e
    .line 534
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@251
    .line 536
    :try_start_6
    const-string/jumbo v3, "accounts"

    #@254
    new-instance v4, Ljava/lang/StringBuilder;

    #@256
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@259
    const-string/jumbo v5, "_id="

    #@25c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v4

    #@260
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@263
    move-result-object v4

    #@264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v4

    #@268
    const/4 v5, 0x0

    #@269
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@26c
    .line 539
    if-eqz v31, :cond_9

    #@26e
    .line 540
    const-string/jumbo v3, "ceDb.accounts"

    #@271
    new-instance v4, Ljava/lang/StringBuilder;

    #@273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    const-string/jumbo v5, "_id="

    #@279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v4

    #@27d
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@280
    move-result-object v4

    #@281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v4

    #@285
    const/4 v5, 0x0

    #@286
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@289
    .line 542
    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@28c
    .line 544
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@28f
    .line 546
    const/4 v12, 0x1

    #@290
    .line 548
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    #@293
    move-result-object v6

    #@294
    const-string/jumbo v7, "accounts"

    #@297
    move-object/from16 v4, p0

    #@299
    move-object v5, v2

    #@29a
    move-object/from16 v10, p1

    #@29c
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@29f
    .line 551
    new-instance v11, Landroid/accounts/Account;

    #@2a1
    move-object/from16 v0, v16

    #@2a3
    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a6
    .line 552
    .local v11, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2a9
    move-result-object v3

    #@2aa
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2ad
    .line 553
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2b0
    move-result-object v3

    #@2b1
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b4
    .line 554
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@2b7
    move-result-object v3

    #@2b8
    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@2bb
    goto/16 :goto_2

    #@2bd
    .line 573
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :catchall_2
    move-exception v3

    #@2be
    .line 574
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@2c1
    .line 575
    if-eqz v12, :cond_a

    #@2c3
    .line 576
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@2c6
    move-result v4

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@2cc
    .line 573
    :cond_a
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@2cd
    .line 543
    .restart local v8    # "accountId":J
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v16    # "accountType":Ljava/lang/String;
    :catchall_3
    move-exception v3

    #@2ce
    .line 544
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@2d1
    .line 543
    throw v3

    #@2d2
    .line 556
    :cond_b
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d5
    move-result-object v14

    #@2d6
    check-cast v14, Ljava/util/ArrayList;

    #@2d8
    .line 557
    .local v14, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_c

    #@2da
    .line 558
    new-instance v14, Ljava/util/ArrayList;

    #@2dc
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@2df
    .line 559
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@2e1
    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e4
    .line 561
    :cond_c
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e7
    goto/16 :goto_2

    #@2e9
    .line 564
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2ec
    move-result-object v3

    #@2ed
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f0
    move-result-object v19

    #@2f1
    .local v19, "cur$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@2f4
    move-result v3

    #@2f5
    if-eqz v3, :cond_f

    #@2f7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2fa
    move-result-object v18

    #@2fb
    check-cast v18, Ljava/util/Map$Entry;

    #@2fd
    .line 565
    .local v18, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@300
    move-result-object v16

    #@301
    check-cast v16, Ljava/lang/String;

    #@303
    .line 566
    .restart local v16    # "accountType":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@306
    move-result-object v14

    #@307
    check-cast v14, Ljava/util/ArrayList;

    #@309
    .line 567
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@30c
    move-result v3

    #@30d
    new-array v0, v3, [Landroid/accounts/Account;

    #@30f
    move-object/from16 v17, v0

    #@311
    .line 568
    .local v17, "accountsForType":[Landroid/accounts/Account;
    const/16 v22, 0x0

    #@313
    .local v22, "i":I
    :goto_4
    move-object/from16 v0, v17

    #@315
    array-length v3, v0

    #@316
    move/from16 v0, v22

    #@318
    if-ge v0, v3, :cond_e

    #@31a
    .line 569
    new-instance v4, Landroid/accounts/Account;

    #@31c
    move/from16 v0, v22

    #@31e
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@321
    move-result-object v3

    #@322
    check-cast v3, Ljava/lang/String;

    #@324
    move-object/from16 v0, v16

    #@326
    invoke-direct {v4, v3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@329
    aput-object v4, v17, v22

    #@32b
    .line 568
    add-int/lit8 v22, v22, 0x1

    #@32d
    goto :goto_4

    #@32e
    .line 571
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@331
    move-result-object v3

    #@332
    move-object/from16 v0, v16

    #@334
    move-object/from16 v1, v17

    #@336
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@339
    goto :goto_3

    #@33a
    .line 574
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v17    # "accountsForType":[Landroid/accounts/Account;
    .end local v18    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22    # "i":I
    :cond_f
    :try_start_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@33d
    .line 575
    if-eqz v12, :cond_10

    #@33f
    .line 576
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@342
    move-result v3

    #@343
    move-object/from16 v0, p0

    #@345
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@348
    :cond_10
    monitor-exit v33

    #@349
    .line 422
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
    .line 1056
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1057
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@a
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 1059
    const-string/jumbo v6, "accountAuthenticated( account: %s, callerUid: %s)"

    #@13
    .line 1058
    new-array v7, v10, [Ljava/lang/Object;

    #@15
    .line 1060
    aput-object p1, v7, v9

    #@17
    .line 1061
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v8

    #@1b
    aput-object v8, v7, v11

    #@1d
    .line 1058
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1062
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@24
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1064
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@29
    .line 1065
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v7, "account is null"

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 1067
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@35
    move-result v5

    #@36
    .line 1068
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@38
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@3b
    move-result v6

    #@3c
    if-nez v6, :cond_2

    #@3e
    .line 1070
    const-string/jumbo v6, "uid %s cannot notify authentication for accounts of type: %s"

    #@41
    .line 1069
    new-array v7, v10, [Ljava/lang/Object;

    #@43
    .line 1071
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v8

    #@47
    aput-object v8, v7, v9

    #@49
    .line 1072
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4b
    aput-object v8, v7, v11

    #@4d
    .line 1069
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 1073
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@53
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v6

    #@57
    .line 1076
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@5a
    move-result v6

    #@5b
    if-eqz v6, :cond_3

    #@5d
    .line 1077
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5f
    invoke-direct {p0, v5, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_3

    #@65
    .line 1081
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@68
    move-result-wide v2

    #@69
    .line 1083
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@6c
    move-result-object v0

    #@6d
    .line 1084
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result v6

    #@71
    .line 1086
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 1084
    return v6

    #@75
    .line 1078
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    #@76
    .line 1085
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    #@77
    .line 1086
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@7a
    .line 1085
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
    .line 2469
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2470
    const-string/jumbo v4, "AccountManagerService"

    #@9
    const/4 v5, 0x2

    #@a
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 2471
    const-string/jumbo v4, "AccountManagerService"

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "addAccount: accountType "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    .line 2472
    const-string/jumbo v6, ", response "

    #@28
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 2473
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 2474
    const-string/jumbo v6, ", requiredFeatures "

    #@42
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    .line 2474
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 2475
    const-string/jumbo v6, ", expectActivityLaunch "

    #@51
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    move/from16 v0, p5

    #@57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 2476
    const-string/jumbo v6, ", caller\'s uid "

    #@5e
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 2476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@65
    move-result v6

    #@66
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 2477
    const-string/jumbo v6, ", pid "

    #@6d
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 2477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@74
    move-result v6

    #@75
    .line 2471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 2479
    :cond_0
    if-nez p1, :cond_1

    #@82
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@84
    const-string/jumbo v5, "response is null"

    #@87
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v4

    #@8b
    .line 2480
    :cond_1
    if-nez p2, :cond_2

    #@8d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v5, "accountType is null"

    #@92
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 2483
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@99
    move-result v23

    #@9a
    .line 2484
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    #@9d
    move-result v24

    #@9e
    .line 2485
    .local v24, "userId":I
    move-object/from16 v0, p0

    #@a0
    move/from16 v1, v24

    #@a2
    move/from16 v2, v23

    #@a4
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@a7
    move-result v4

    #@a8
    if-nez v4, :cond_3

    #@aa
    .line 2488
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@ad
    .line 2487
    const/16 v5, 0x64

    #@af
    move-object/from16 v0, p1

    #@b1
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@b4
    .line 2491
    :goto_0
    const/16 v4, 0x64

    #@b6
    move-object/from16 v0, p0

    #@b8
    move/from16 v1, v24

    #@ba
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@bd
    .line 2492
    return-void

    #@be
    .line 2494
    :cond_3
    move-object/from16 v0, p0

    #@c0
    move/from16 v1, v24

    #@c2
    move-object/from16 v2, p2

    #@c4
    move/from16 v3, v23

    #@c6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@c9
    move-result v4

    #@ca
    if-nez v4, :cond_4

    #@cc
    .line 2497
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@cf
    .line 2496
    const/16 v5, 0x65

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@d6
    .line 2500
    :goto_1
    const/16 v4, 0x65

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, v24

    #@dc
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@df
    .line 2502
    return-void

    #@e0
    .line 2505
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e3
    move-result v19

    #@e4
    .line 2506
    .local v19, "pid":I
    if-nez p6, :cond_5

    #@e6
    new-instance v17, Landroid/os/Bundle;

    #@e8
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@eb
    .line 2507
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    #@ee
    move-object/from16 v0, v17

    #@f0
    move/from16 v1, v23

    #@f2
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f5
    .line 2508
    const-string/jumbo v4, "callerPid"

    #@f8
    move-object/from16 v0, v17

    #@fa
    move/from16 v1, v19

    #@fc
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ff
    .line 2510
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@102
    move-result v25

    #@103
    .line 2511
    .local v25, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@106
    move-result-wide v20

    #@107
    .line 2513
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    #@109
    move/from16 v1, v25

    #@10b
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@10e
    move-result-object v7

    #@10f
    .line 2515
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    const-string/jumbo v5, "accounts"

    #@116
    .line 2514
    move-object/from16 v0, p0

    #@118
    move/from16 v1, v23

    #@11a
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@11d
    .line 2516
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$7;

    #@11f
    .line 2517
    const/4 v11, 0x1

    #@120
    const/4 v12, 0x0

    #@121
    .line 2518
    const/4 v13, 0x0

    #@122
    const/4 v14, 0x1

    #@123
    move-object/from16 v5, p0

    #@125
    move-object/from16 v6, p0

    #@127
    move-object/from16 v8, p1

    #@129
    move-object/from16 v9, p2

    #@12b
    move/from16 v10, p5

    #@12d
    move-object/from16 v15, p3

    #@12f
    move-object/from16 v16, p4

    #@131
    move-object/from16 v18, p2

    #@133
    .line 2516
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@136
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@139
    .line 2536
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@13c
    .line 2468
    return-void

    #@13d
    .line 2506
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :cond_5
    move-object/from16 v17, p6

    #@13f
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@140
    .line 2535
    .restart local v20    # "identityToken":J
    .restart local v25    # "usrId":I
    :catchall_0
    move-exception v4

    #@141
    .line 2536
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@144
    .line 2535
    throw v4

    #@145
    .line 2498
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "pid":I
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :catch_0
    move-exception v22

    #@146
    .local v22, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@147
    .line 2489
    .end local v22    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    #@148
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
    .line 2544
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v19

    #@a
    .line 2546
    .local v19, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    #@d
    const/4 v5, 0x2

    #@e
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 2547
    const-string/jumbo v4, "AccountManagerService"

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "addAccount: accountType "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    move-object/from16 v0, p2

    #@25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 2548
    const-string/jumbo v6, ", response "

    #@2c
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 2549
    const-string/jumbo v6, ", authTokenType "

    #@39
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    move-object/from16 v0, p3

    #@3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    .line 2550
    const-string/jumbo v6, ", requiredFeatures "

    #@46
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    .line 2550
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 2551
    const-string/jumbo v6, ", expectActivityLaunch "

    #@55
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    move/from16 v0, p5

    #@5b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 2552
    const-string/jumbo v6, ", caller\'s uid "

    #@62
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 2552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@69
    move-result v6

    #@6a
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    .line 2553
    const-string/jumbo v6, ", pid "

    #@71
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 2553
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@78
    move-result v6

    #@79
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 2554
    const-string/jumbo v6, ", for user id "

    #@80
    .line 2547
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    move/from16 v0, p7

    #@86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 2556
    :cond_0
    if-nez p1, :cond_1

    #@93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@95
    const-string/jumbo v5, "response is null"

    #@98
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v4

    #@9c
    .line 2557
    :cond_1
    if-nez p2, :cond_2

    #@9e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v5, "accountType is null"

    #@a3
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v4

    #@a7
    .line 2559
    :cond_2
    move-object/from16 v0, p0

    #@a9
    move/from16 v1, v19

    #@ab
    move/from16 v2, p7

    #@ad
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@b0
    move-result v4

    #@b1
    if-eqz v4, :cond_3

    #@b3
    .line 2560
    new-instance v4, Ljava/lang/SecurityException;

    #@b5
    .line 2562
    const-string/jumbo v5, "User %s trying to add account for %s"

    #@b8
    .line 2561
    const/4 v6, 0x2

    #@b9
    new-array v6, v6, [Ljava/lang/Object;

    #@bb
    .line 2563
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@be
    move-result v8

    #@bf
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c2
    move-result-object v8

    #@c3
    const/4 v9, 0x0

    #@c4
    aput-object v8, v6, v9

    #@c6
    .line 2564
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c9
    move-result-object v8

    #@ca
    const/4 v9, 0x1

    #@cb
    aput-object v8, v6, v9

    #@cd
    .line 2561
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    .line 2560
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v4

    #@d5
    .line 2568
    :cond_3
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, p7

    #@d9
    move/from16 v2, v19

    #@db
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@de
    move-result v4

    #@df
    if-nez v4, :cond_4

    #@e1
    .line 2571
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@e4
    .line 2570
    const/16 v5, 0x64

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@eb
    .line 2574
    :goto_0
    const/16 v4, 0x64

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, p7

    #@f1
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@f4
    .line 2575
    return-void

    #@f5
    .line 2577
    :cond_4
    move-object/from16 v0, p0

    #@f7
    move/from16 v1, p7

    #@f9
    move-object/from16 v2, p2

    #@fb
    move/from16 v3, v19

    #@fd
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@100
    move-result v4

    #@101
    if-nez v4, :cond_5

    #@103
    .line 2580
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@106
    .line 2579
    const/16 v5, 0x65

    #@108
    move-object/from16 v0, p1

    #@10a
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@10d
    .line 2583
    :goto_1
    const/16 v4, 0x65

    #@10f
    move-object/from16 v0, p0

    #@111
    move/from16 v1, p7

    #@113
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@116
    .line 2585
    return-void

    #@117
    .line 2588
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@11a
    move-result v22

    #@11b
    .line 2589
    .local v22, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11e
    move-result v24

    #@11f
    .line 2590
    .local v24, "uid":I
    if-nez p6, :cond_6

    #@121
    new-instance v17, Landroid/os/Bundle;

    #@123
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@126
    .line 2591
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    #@129
    move-object/from16 v0, v17

    #@12b
    move/from16 v1, v24

    #@12d
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@130
    .line 2592
    const-string/jumbo v4, "callerPid"

    #@133
    move-object/from16 v0, v17

    #@135
    move/from16 v1, v22

    #@137
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13a
    .line 2594
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@13d
    move-result-wide v20

    #@13e
    .line 2596
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    #@140
    move/from16 v1, p7

    #@142
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@145
    move-result-object v7

    #@146
    .line 2598
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    const-string/jumbo v5, "accounts"

    #@14d
    .line 2597
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, p7

    #@151
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@154
    .line 2599
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$8;

    #@156
    .line 2600
    const/4 v11, 0x1

    #@157
    const/4 v12, 0x0

    #@158
    .line 2601
    const/4 v13, 0x0

    #@159
    const/4 v14, 0x1

    #@15a
    move-object/from16 v5, p0

    #@15c
    move-object/from16 v6, p0

    #@15e
    move-object/from16 v8, p1

    #@160
    move-object/from16 v9, p2

    #@162
    move/from16 v10, p5

    #@164
    move-object/from16 v15, p3

    #@166
    move-object/from16 v16, p4

    #@168
    move-object/from16 v18, p2

    #@16a
    .line 2599
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@16d
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@170
    .line 2619
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@173
    .line 2543
    return-void

    #@174
    .line 2590
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    #@176
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@177
    .line 2618
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@178
    .line 2619
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@17b
    .line 2618
    throw v4

    #@17c
    .line 2581
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v22    # "pid":I
    .end local v24    # "uid":I
    :catch_0
    move-exception v23

    #@17d
    .local v23, "re":Landroid/os/RemoteException;
    goto :goto_1

    #@17e
    .line 2572
    .end local v23    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    #@17f
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
    const/4 v4, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    .line 962
    invoke-static {p3, v10}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@5
    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v5

    #@9
    .line 964
    .local v5, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@c
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 965
    const-string/jumbo v0, "AccountManagerService"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "addAccountExplicitly: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 966
    const-string/jumbo v3, ", caller\'s uid "

    #@28
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 967
    const-string/jumbo v3, ", pid "

    #@33
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v3

    #@3b
    .line 965
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 969
    :cond_0
    if-nez p1, :cond_1

    #@48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v2, "account is null"

    #@4d
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 970
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@54
    move-result v9

    #@55
    .line 971
    .local v9, "userId":I
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@57
    invoke-direct {p0, v0, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_2

    #@5d
    .line 973
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    #@60
    .line 972
    new-array v2, v4, [Ljava/lang/Object;

    #@62
    .line 974
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v3

    #@66
    const/4 v4, 0x0

    #@67
    aput-object v3, v2, v4

    #@69
    .line 975
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6b
    aput-object v3, v2, v10

    #@6d
    .line 972
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    .line 976
    .local v8, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    #@73
    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 987
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@7a
    move-result-wide v6

    #@7b
    .line 989
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7e
    move-result-object v1

    #@7f
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v0, p0

    #@80
    move-object v2, p1

    #@81
    move-object v3, p2

    #@82
    move-object v4, p3

    #@83
    .line 990
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    move-result v0

    #@87
    .line 992
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8a
    .line 990
    return v0

    #@8b
    .line 991
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@8c
    .line 992
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8f
    .line 991
    throw v0
.end method

.method public addSharedAccountsFromParentUser(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3555
    const-string/jumbo v2, "addSharedAccountsFromParentUser"

    #@3
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3556
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@10
    move-result-object v1

    #@11
    .line 3557
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    #@12
    array-length v3, v1

    #@13
    :goto_0
    if-ge v2, v3, :cond_0

    #@15
    aget-object v0, v1, v2

    #@17
    .line 3558
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@1a
    .line 3557
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3554
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4962
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 4964
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
    .line 4965
    const/4 v3, 0x0

    #@10
    .line 4964
    invoke-virtual {v2, v3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 4967
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@16
    .line 4961
    return-void

    #@17
    .line 4966
    :catchall_0
    move-exception v2

    #@18
    .line 4967
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1b
    .line 4966
    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 1974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1975
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1976
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
    .line 1977
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1976
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1978
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1976
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1978
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1976
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
    .line 1980
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
    .line 1981
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 1982
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 1984
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    #@5c
    .line 1983
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 1985
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 1986
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1983
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 1987
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1989
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 1991
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 1992
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    #@7d
    invoke-direct {p0, v0, p1, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 1994
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@83
    .line 1973
    return-void

    #@84
    .line 1993
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@85
    .line 1994
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@88
    .line 1993
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
    .line 2989
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p3

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v15

    #@a
    .line 2991
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    #@d
    const/4 v3, 0x2

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 2992
    const-string/jumbo v2, "AccountManagerService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "confirmCredentials: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, p2

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 2993
    const-string/jumbo v4, ", response "

    #@2c
    .line 2992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 2994
    const-string/jumbo v4, ", expectActivityLaunch "

    #@39
    .line 2992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    move/from16 v0, p4

    #@3f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 2995
    const-string/jumbo v4, ", caller\'s uid "

    #@46
    .line 2992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    .line 2996
    const-string/jumbo v4, ", pid "

    #@51
    .line 2992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 2996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@58
    move-result v4

    #@59
    .line 2992
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 2999
    :cond_0
    move-object/from16 v0, p0

    #@66
    move/from16 v1, p5

    #@68
    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_1

    #@6e
    .line 3000
    new-instance v2, Ljava/lang/SecurityException;

    #@70
    .line 3002
    const-string/jumbo v3, "User %s trying to confirm account credentials for %s"

    #@73
    .line 3001
    const/4 v4, 0x2

    #@74
    new-array v4, v4, [Ljava/lang/Object;

    #@76
    .line 3003
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@79
    move-result v6

    #@7a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v6

    #@7e
    const/4 v7, 0x0

    #@7f
    aput-object v6, v4, v7

    #@81
    .line 3004
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v6

    #@85
    const/4 v7, 0x1

    #@86
    aput-object v6, v4, v7

    #@88
    .line 3001
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    .line 3000
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    .line 3006
    :cond_1
    if-nez p1, :cond_2

    #@92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@94
    const-string/jumbo v3, "response is null"

    #@97
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v2

    #@9b
    .line 3007
    :cond_2
    if-nez p2, :cond_3

    #@9d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9f
    const-string/jumbo v3, "account is null"

    #@a2
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v2

    #@a6
    .line 3008
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a9
    move-result-wide v16

    #@aa
    .line 3010
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@ac
    move/from16 v1, p5

    #@ae
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b1
    move-result-object v5

    #@b2
    .line 3011
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$11;

    #@b4
    move-object/from16 v0, p2

    #@b6
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b8
    .line 3012
    move-object/from16 v0, p2

    #@ba
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@bc
    const/4 v9, 0x1

    #@bd
    .line 3013
    const/4 v11, 0x1

    #@be
    const/4 v12, 0x1

    #@bf
    move-object/from16 v3, p0

    #@c1
    move-object/from16 v4, p0

    #@c3
    move-object/from16 v6, p1

    #@c5
    move/from16 v8, p4

    #@c7
    move-object/from16 v13, p2

    #@c9
    move-object/from16 v14, p3

    #@cb
    .line 3011
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    #@ce
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d1
    .line 3025
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d4
    .line 2988
    return-void

    #@d5
    .line 3024
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@d6
    .line 3025
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d9
    .line 3024
    throw v2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    #@0
    .prologue
    .line 999
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v16

    #@4
    .line 1000
    .local v16, "callingUid":I
    const/4 v2, -0x1

    #@5
    move-object/from16 v0, p0

    #@7
    move/from16 v1, v16

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1001
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 1004
    :cond_0
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, p3

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1f
    move-result-object v5

    #@20
    .line 1005
    .local v5, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@22
    move/from16 v1, p4

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@27
    move-result-object v14

    #@28
    .line 1006
    .local v14, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v5, :cond_1

    #@2a
    if-nez v14, :cond_3

    #@2c
    .line 1007
    :cond_1
    if-eqz p1, :cond_2

    #@2e
    .line 1008
    new-instance v20, Landroid/os/Bundle;

    #@30
    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    #@33
    .line 1009
    .local v20, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    #@36
    const/4 v3, 0x0

    #@37
    move-object/from16 v0, v20

    #@39
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3c
    .line 1011
    :try_start_0
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, v20

    #@40
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1016
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    #@44
    .line 1012
    .restart local v20    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v17

    #@45
    .line 1013
    .local v17, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "Failed to report error back to the client."

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    move-object/from16 v0, v17

    #@56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_0

    #@62
    .line 1019
    .end local v17    # "e":Landroid/os/RemoteException;
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v2, "AccountManagerService"

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "Copying account "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    move-object/from16 v0, p2

    #@73
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    .line 1020
    const-string/jumbo v4, " from user "

    #@7c
    .line 1019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    move/from16 v0, p3

    #@82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    .line 1020
    const-string/jumbo v4, " to user "

    #@89
    .line 1019
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    move/from16 v0, p4

    #@8f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 1021
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@9d
    move-result-wide v18

    #@9e
    .line 1023
    .local v18, "identityToken":J
    :try_start_1
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$3;

    #@a0
    move-object/from16 v0, p2

    #@a2
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a4
    .line 1024
    move-object/from16 v0, p2

    #@a6
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a8
    .line 1023
    const/4 v8, 0x0

    #@a9
    .line 1024
    const/4 v9, 0x0

    #@aa
    .line 1025
    const/4 v11, 0x0

    #@ab
    move-object/from16 v3, p0

    #@ad
    move-object/from16 v4, p0

    #@af
    move-object/from16 v6, p1

    #@b1
    move-object/from16 v12, p2

    #@b3
    move-object/from16 v13, p1

    #@b5
    move/from16 v15, p3

    #@b7
    .line 1023
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@ba
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$3;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bd
    .line 1050
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 998
    return-void

    #@c1
    .line 1049
    :catchall_0
    move-exception v2

    #@c2
    .line 1050
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c5
    .line 1049
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4837
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
    .line 4839
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
    .line 4840
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 4839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 4840
    const-string/jumbo v1, ", uid="

    #@22
    .line 4839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 4840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 4839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 4841
    const-string/jumbo v1, " without permission "

    #@31
    .line 4839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 4841
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 4839
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
    .line 4842
    return-void

    #@44
    .line 4844
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
    .line 4845
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@56
    const-string/jumbo v0, "  "

    #@59
    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@5c
    .line 4847
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@63
    move-result-object v8

    #@64
    .line 4848
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
    .line 4849
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
    .line 4850
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@95
    .line 4851
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
    .line 4852
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a4
    .line 4853
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@a7
    goto :goto_1

    #@a8
    .line 4844
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
    .line 4836
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
    .line 3238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v15

    #@4
    .line 3239
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
    .line 3240
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
    .line 3241
    const-string/jumbo v6, ", response "

    #@26
    .line 3240
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
    .line 3242
    const-string/jumbo v6, ", expectActivityLaunch "

    #@33
    .line 3240
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
    .line 3243
    const-string/jumbo v6, ", caller\'s uid "

    #@40
    .line 3240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 3244
    const-string/jumbo v6, ", pid "

    #@4b
    .line 3240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 3244
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@52
    move-result v6

    #@53
    .line 3240
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
    .line 3246
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
    .line 3247
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
    .line 3248
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@77
    move-result v19

    #@78
    .line 3249
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
    .line 3256
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8f
    move-result-wide v16

    #@90
    .line 3258
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
    .line 3259
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$15;

    #@9a
    .line 3260
    const/4 v11, 0x1

    #@9b
    const/4 v12, 0x0

    #@9c
    .line 3261
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
    .line 3259
    invoke-direct/range {v4 .. v14}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    #@ac
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@af
    .line 3273
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b2
    .line 3237
    return-void

    #@b3
    .line 3251
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "identityToken":J
    :cond_4
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    #@b6
    .line 3250
    const/4 v5, 0x2

    #@b7
    new-array v5, v5, [Ljava/lang/Object;

    #@b9
    .line 3252
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v6

    #@bd
    const/4 v8, 0x0

    #@be
    aput-object v6, v5, v8

    #@c0
    .line 3253
    const/4 v6, 0x1

    #@c1
    aput-object p2, v5, v6

    #@c3
    .line 3250
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c6
    move-result-object v18

    #@c7
    .line 3254
    .local v18, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v4

    #@cf
    .line 3272
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    #@d0
    .line 3273
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d3
    .line 3272
    throw v4
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 22
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "sessionBundle"    # Landroid/os/Bundle;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "appInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 2833
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p2

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v15

    #@a
    .line 2835
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    #@d
    const/4 v3, 0x2

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 2836
    const-string/jumbo v2, "AccountManagerService"

    #@17
    .line 2837
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "finishSession: response "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 2838
    const-string/jumbo v4, ", expectActivityLaunch "

    #@2c
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    move/from16 v0, p3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 2839
    const-string/jumbo v4, ", caller\'s uid "

    #@39
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 2840
    const-string/jumbo v4, ", caller\'s user id "

    #@44
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 2840
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4b
    move-result v4

    #@4c
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 2841
    const-string/jumbo v4, ", pid "

    #@53
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5a
    move-result v4

    #@5b
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 2842
    const-string/jumbo v4, ", for user id "

    #@62
    .line 2837
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    move/from16 v0, p5

    #@68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    .line 2836
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 2844
    :cond_0
    if-nez p1, :cond_1

    #@75
    .line 2845
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@77
    const-string/jumbo v3, "response is null"

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2

    #@7e
    .line 2850
    :cond_1
    if-eqz p2, :cond_2

    #@80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    #@83
    move-result v2

    #@84
    if-nez v2, :cond_3

    #@86
    .line 2851
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@88
    const-string/jumbo v3, "sessionBundle is empty"

    #@8b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v2

    #@8f
    .line 2855
    :cond_3
    move-object/from16 v0, p0

    #@91
    move/from16 v1, p5

    #@93
    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@96
    move-result v2

    #@97
    if-eqz v2, :cond_4

    #@99
    .line 2856
    new-instance v2, Ljava/lang/SecurityException;

    #@9b
    .line 2858
    const-string/jumbo v3, "User %s trying to finish session for %s without cross user permission"

    #@9e
    .line 2857
    const/4 v4, 0x2

    #@9f
    new-array v4, v4, [Ljava/lang/Object;

    #@a1
    .line 2859
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a4
    move-result v6

    #@a5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v6

    #@a9
    const/4 v8, 0x0

    #@aa
    aput-object v6, v4, v8

    #@ac
    .line 2860
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v6

    #@b0
    const/4 v8, 0x1

    #@b1
    aput-object v6, v4, v8

    #@b3
    .line 2857
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    .line 2856
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v2

    #@bb
    .line 2864
    :cond_4
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@c0
    move-result v2

    #@c1
    if-nez v2, :cond_5

    #@c3
    .line 2866
    const-string/jumbo v2, "uid %s cannot finish session because it\'s not system uid."

    #@c6
    .line 2865
    const/4 v3, 0x1

    #@c7
    new-array v3, v3, [Ljava/lang/Object;

    #@c9
    .line 2867
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v4

    #@cd
    const/4 v6, 0x0

    #@ce
    aput-object v4, v3, v6

    #@d0
    .line 2865
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d3
    move-result-object v20

    #@d4
    .line 2868
    .local v20, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    #@d6
    move-object/from16 v0, v20

    #@d8
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@db
    throw v2

    #@dc
    .line 2871
    .end local v20    # "msg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@de
    move/from16 v1, p5

    #@e0
    invoke-direct {v0, v1, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@e3
    move-result v2

    #@e4
    if-nez v2, :cond_6

    #@e6
    .line 2874
    const-string/jumbo v2, "User is not allowed to add an account!"

    #@e9
    .line 2873
    const/16 v3, 0x64

    #@eb
    .line 2872
    move-object/from16 v0, p0

    #@ed
    move-object/from16 v1, p1

    #@ef
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@f2
    .line 2875
    const/16 v2, 0x64

    #@f4
    move-object/from16 v0, p0

    #@f6
    move/from16 v1, p5

    #@f8
    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@fb
    .line 2876
    return-void

    #@fc
    .line 2879
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@ff
    move-result v21

    #@100
    .line 2884
    .local v21, "pid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    #@103
    move-result-object v16

    #@104
    .line 2885
    .local v16, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    move-object/from16 v0, v16

    #@106
    move-object/from16 v1, p2

    #@108
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@10b
    move-result-object v13

    #@10c
    .line 2886
    .local v13, "decryptedBundle":Landroid/os/Bundle;
    if-nez v13, :cond_7

    #@10e
    .line 2890
    const-string/jumbo v2, "failed to decrypt session bundle"

    #@111
    .line 2889
    const/16 v3, 0x8

    #@113
    .line 2887
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, p1

    #@117
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@11a
    .line 2891
    return-void

    #@11b
    .line 2893
    :cond_7
    const-string/jumbo v2, "accountType"

    #@11e
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    .line 2896
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@125
    move-result v2

    #@126
    if-eqz v2, :cond_8

    #@128
    .line 2900
    const-string/jumbo v2, "accountType is empty"

    #@12b
    .line 2899
    const/4 v3, 0x7

    #@12c
    .line 2897
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, p1

    #@130
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@133
    .line 2901
    return-void

    #@134
    .line 2908
    :cond_8
    if-eqz p4, :cond_9

    #@136
    .line 2909
    move-object/from16 v0, p4

    #@138
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13b
    .line 2913
    :cond_9
    const-string/jumbo v2, "callerUid"

    #@13e
    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@141
    .line 2914
    const-string/jumbo v2, "callerPid"

    #@144
    move/from16 v0, v21

    #@146
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@149
    .line 2926
    move-object/from16 v0, p0

    #@14b
    move/from16 v1, p5

    #@14d
    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@150
    move-result v2

    #@151
    if-nez v2, :cond_b

    #@153
    .line 2930
    const-string/jumbo v2, "User cannot modify accounts of this type (policy)."

    #@156
    .line 2929
    const/16 v3, 0x65

    #@158
    .line 2927
    move-object/from16 v0, p0

    #@15a
    move-object/from16 v1, p1

    #@15c
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@15f
    .line 2931
    const/16 v2, 0x65

    #@161
    move-object/from16 v0, p0

    #@163
    move/from16 v1, p5

    #@165
    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@168
    .line 2933
    return-void

    #@169
    .line 2915
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v13    # "decryptedBundle":Landroid/os/Bundle;
    .end local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :catch_0
    move-exception v17

    #@16a
    .line 2916
    .local v17, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v2, "AccountManagerService"

    #@16d
    const/4 v3, 0x3

    #@16e
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_a

    #@174
    .line 2917
    const-string/jumbo v2, "AccountManagerService"

    #@177
    const-string/jumbo v3, "Failed to decrypt session bundle!"

    #@17a
    move-object/from16 v0, v17

    #@17c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17f
    .line 2922
    :cond_a
    const-string/jumbo v2, "failed to decrypt session bundle"

    #@182
    .line 2921
    const/16 v3, 0x8

    #@184
    .line 2919
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, p1

    #@188
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@18b
    .line 2923
    return-void

    #@18c
    .line 2936
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v7    # "accountType":Ljava/lang/String;
    .restart local v13    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :cond_b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@18f
    move-result-wide v18

    #@190
    .line 2938
    .local v18, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@192
    move/from16 v1, p5

    #@194
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@197
    move-result-object v5

    #@198
    .line 2941
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get7()Ljava/lang/String;

    #@19b
    move-result-object v2

    #@19c
    .line 2942
    const-string/jumbo v3, "accounts"

    #@19f
    .line 2939
    move-object/from16 v0, p0

    #@1a1
    invoke-direct {v0, v5, v2, v3, v15}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@1a4
    .line 2944
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$10;

    #@1a6
    .line 2949
    const/4 v9, 0x1

    #@1a7
    .line 2950
    const/4 v10, 0x0

    #@1a8
    .line 2951
    const/4 v11, 0x0

    #@1a9
    .line 2952
    const/4 v12, 0x1

    #@1aa
    move-object/from16 v3, p0

    #@1ac
    move-object/from16 v4, p0

    #@1ae
    move-object/from16 v6, p1

    #@1b0
    move/from16 v8, p3

    #@1b2
    move-object v14, v7

    #@1b3
    .line 2944
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    #@1b6
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b9
    .line 2966
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1bc
    .line 2832
    return-void

    #@1bd
    .line 2965
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@1be
    .line 2966
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1c1
    .line 2965
    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 3404
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 3406
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 3407
    const/4 v5, 0x0

    #@f
    new-array v5, v5, [Landroid/accounts/Account;

    #@11
    return-object v5

    #@12
    .line 3409
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 3411
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@19
    move-result-object v0

    #@1a
    .line 3415
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@1b
    .line 3412
    invoke-direct {p0, v0, v1, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v5

    #@1f
    .line 3418
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@22
    .line 3412
    return-object v5

    #@23
    .line 3417
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v5

    #@24
    .line 3418
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@27
    .line 3417
    throw v5
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3655
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3472
    const/4 v3, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 3694
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
    .line 3695
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
    .line 3696
    const-string/jumbo v5, ", response "

    #@26
    .line 3695
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
    .line 3697
    const-string/jumbo v5, ", features "

    #@33
    .line 3695
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 3697
    invoke-static/range {p3 .. p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 3695
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 3698
    const-string/jumbo v5, ", caller\'s uid "

    #@42
    .line 3695
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 3699
    const-string/jumbo v5, ", pid "

    #@4d
    .line 3695
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 3699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v5

    #@55
    .line 3695
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
    .line 3701
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
    .line 3702
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
    .line 3703
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@79
    move-result v14

    #@7a
    .line 3705
    .local v14, "userId":I
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, p4

    #@7e
    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@81
    move-result-object v15

    #@82
    .line 3707
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    #@84
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@87
    move-result v2

    #@88
    if-nez v2, :cond_3

    #@8a
    .line 3708
    new-instance v11, Landroid/os/Bundle;

    #@8c
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@8f
    .line 3710
    .local v11, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@92
    const/4 v3, 0x0

    #@93
    new-array v3, v3, [Landroid/accounts/Account;

    #@95
    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@98
    .line 3712
    :try_start_0
    move-object/from16 v0, p1

    #@9a
    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    .line 3716
    :goto_0
    return-void

    #@9e
    .line 3713
    :catch_0
    move-exception v10

    #@9f
    .line 3714
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@a2
    const-string/jumbo v3, "Cannot respond to caller do to exception."

    #@a5
    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    goto :goto_0

    #@a9
    .line 3718
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@ac
    move-result-wide v12

    #@ad
    .line 3720
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b2
    move-result-object v4

    #@b3
    .line 3721
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_4

    #@b5
    move-object/from16 v0, p3

    #@b7
    array-length v2, v0

    #@b8
    if-nez v2, :cond_5

    #@ba
    .line 3723
    :cond_4
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@bf
    .line 3724
    const/4 v3, 0x0

    #@c0
    :try_start_2
    move-object/from16 v0, p0

    #@c2
    move-object/from16 v1, p2

    #@c4
    invoke-virtual {v0, v4, v1, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c7
    move-result-object v9

    #@c8
    .local v9, "accounts":[Landroid/accounts/Account;
    :try_start_3
    monitor-exit v2

    #@c9
    .line 3726
    new-instance v11, Landroid/os/Bundle;

    #@cb
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@ce
    .line 3727
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@d1
    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@d4
    .line 3728
    move-object/from16 v0, p0

    #@d6
    move-object/from16 v1, p1

    #@d8
    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@db
    .line 3738
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@de
    .line 3729
    return-void

    #@df
    .line 3723
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@e0
    :try_start_4
    monitor-exit v2

    #@e1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e2
    .line 3737
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v2

    #@e3
    .line 3738
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@e6
    .line 3737
    throw v2

    #@e7
    .line 3731
    .restart local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_5
    :try_start_5
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    #@e9
    move-object/from16 v3, p0

    #@eb
    move-object/from16 v5, p1

    #@ed
    move-object/from16 v6, p2

    #@ef
    move-object/from16 v7, p3

    #@f1
    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    #@f4
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f7
    .line 3738
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@fa
    .line 3692
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3674
    const/4 v4, -0x1

    #@1
    .line 3676
    .local v4, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v0

    #@5
    .line 3678
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v1

    #@9
    .line 3677
    const/16 v2, 0x2000

    #@b
    .line 3676
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v4

    #@f
    .line 3683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@12
    move-result v2

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move-object v3, p2

    #@16
    move-object v5, p3

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 3679
    :catch_0
    move-exception v6

    #@1d
    .line 3680
    .local v6, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "AccountManagerService"

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Couldn\'t determine the packageUid for "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 3681
    const/4 v0, 0x0

    #@3c
    new-array v0, v0, [Landroid/accounts/Account;

    #@3e
    return-object v0
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 3662
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@7
    move-result v0

    #@8
    invoke-static {v6, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 3663
    new-instance v0, Ljava/lang/SecurityException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "getAccountsForPackage() called from unauthorized uid "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 3664
    const-string/jumbo v2, " with uid="

    #@23
    .line 3663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 3666
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@36
    move-result v2

    #@37
    const/4 v1, 0x0

    #@38
    move-object v0, p0

    #@39
    move-object v3, p1

    #@3a
    move v4, p2

    #@3b
    move-object v5, p3

    #@3c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@3f
    move-result-object v0

    #@40
    return-object v0
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
    .line 5422
    if-eqz p2, :cond_1

    #@3
    .line 5423
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
    .line 5424
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_0

    #@f
    .line 5425
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@11
    return-object v5

    #@12
    .line 5427
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
    .line 5431
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    #@1f
    .line 5432
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
    .line 5433
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    #@38
    add-int/2addr v4, v5

    #@39
    goto :goto_0

    #@3a
    .line 5435
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    #@3c
    .line 5436
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@3e
    return-object v5

    #@3f
    .line 5438
    :cond_3
    new-array v0, v4, [Landroid/accounts/Account;

    #@41
    .line 5439
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    #@42
    .line 5440
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
    .line 5442
    .local v2, "accountsOfType":[Landroid/accounts/Account;
    array-length v5, v2

    #@5b
    .line 5441
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5e
    .line 5443
    array-length v5, v2

    #@5f
    add-int/2addr v4, v5

    #@60
    goto :goto_1

    #@61
    .line 5445
    .end local v2    # "accountsOfType":[Landroid/accounts/Account;
    :cond_4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    #@64
    move-result-object v5

    #@65
    return-object v5
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 5

    #@0
    .prologue
    .line 3442
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v3

    #@4
    const/4 v4, 0x1

    #@5
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 3443
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    new-array v1, v3, [I

    #@f
    .line 3444
    .local v1, "userIds":[I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@11
    if-ge v0, v3, :cond_0

    #@13
    .line 3445
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/content/pm/UserInfo;

    #@19
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    #@1b
    aput v3, v1, v0

    #@1d
    .line 3444
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3447
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    #@23
    move-result-object v3

    #@24
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
    .line 2151
    const/4 v6, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2152
    const-string/jumbo v6, "AccountManagerService"

    #@9
    const/4 v8, 0x2

    #@a
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 2153
    const-string/jumbo v6, "AccountManagerService"

    #@13
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "getAuthToken: "

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    .line 2154
    const-string/jumbo v9, ", response "

    #@28
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    .line 2155
    const-string/jumbo v9, ", authTokenType "

    #@35
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v8

    #@3f
    .line 2156
    const-string/jumbo v9, ", notifyOnAuthFailure "

    #@42
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    move/from16 v0, p4

    #@48
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    .line 2157
    const-string/jumbo v9, ", expectActivityLaunch "

    #@4f
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    move/from16 v0, p5

    #@55
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    .line 2158
    const-string/jumbo v9, ", caller\'s uid "

    #@5c
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 2158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v9

    #@64
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    .line 2159
    const-string/jumbo v9, ", pid "

    #@6b
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    .line 2159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@72
    move-result v9

    #@73
    .line 2153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v8

    #@7b
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 2161
    :cond_0
    if-nez p1, :cond_1

    #@80
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@82
    const-string/jumbo v8, "response is null"

    #@85
    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v6

    #@89
    .line 2163
    :cond_1
    if-nez p2, :cond_2

    #@8b
    .line 2164
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    #@8e
    const-string/jumbo v8, "getAuthToken called with null account"

    #@91
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 2165
    const-string/jumbo v6, "account is null"

    #@97
    const/4 v8, 0x7

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    #@9d
    .line 2166
    return-void

    #@9e
    .line 2168
    :cond_2
    if-nez p3, :cond_3

    #@a0
    .line 2169
    const-string/jumbo v6, "AccountManagerService"

    #@a3
    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    #@a6
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 2170
    const-string/jumbo v6, "authTokenType is null"

    #@ac
    const/4 v8, 0x7

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b2
    .line 2171
    return-void

    #@b3
    .line 2173
    :catch_0
    move-exception v35

    #@b4
    .line 2174
    .local v35, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccountManagerService"

    #@b7
    new-instance v8, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v9, "Failed to report error back to the client."

    #@bf
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v8

    #@c3
    move-object/from16 v0, v35

    #@c5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v8

    #@c9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v8

    #@cd
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    .line 2175
    return-void

    #@d1
    .line 2177
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@d4
    move-result v43

    #@d5
    .line 2178
    .local v43, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d8
    move-result-wide v36

    #@d9
    .line 2182
    .local v36, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    #@db
    move/from16 v1, v43

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@e0
    move-result-object v7

    #@e1
    .line 2183
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@e3
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@e5
    .line 2184
    move-object/from16 v0, p2

    #@e7
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e9
    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@ec
    move-result-object v8

    #@ed
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@f0
    move-result v9

    #@f1
    .line 2183
    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f4
    move-result-object v33

    #@f5
    .line 2186
    .local v33, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f8
    .line 2190
    if-eqz v33, :cond_5

    #@fa
    move-object/from16 v0, v33

    #@fc
    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@fe
    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    #@100
    iget-boolean v0, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    #@102
    move/from16 v28, v0

    #@104
    .line 2193
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@107
    move-result v27

    #@108
    .line 2195
    .local v27, "callerUid":I
    if-nez v28, :cond_6

    #@10a
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, p2

    #@10e
    move-object/from16 v2, p3

    #@110
    move/from16 v3, v27

    #@112
    move/from16 v4, v43

    #@114
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    #@117
    move-result v26

    #@118
    .line 2198
    :goto_1
    const-string/jumbo v6, "androidPackageName"

    #@11b
    move-object/from16 v0, p6

    #@11d
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v10

    #@121
    .line 2200
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@124
    move-result-wide v36

    #@125
    .line 2202
    :try_start_2
    move-object/from16 v0, p0

    #@127
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@129
    move/from16 v0, v27

    #@12b
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@12e
    move-result-object v6

    #@12f
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@132
    move-result-object v34

    #@133
    .line 2204
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@136
    .line 2206
    if-eqz v10, :cond_7

    #@138
    move-object/from16 v0, v34

    #@13a
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13d
    move-result v6

    #@13e
    if-eqz v6, :cond_7

    #@140
    .line 2215
    const-string/jumbo v6, "callerUid"

    #@143
    move-object/from16 v0, p6

    #@145
    move/from16 v1, v27

    #@147
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14a
    .line 2216
    const-string/jumbo v6, "callerPid"

    #@14d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@150
    move-result v8

    #@151
    move-object/from16 v0, p6

    #@153
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@156
    .line 2218
    if-eqz p4, :cond_4

    #@158
    .line 2219
    const-string/jumbo v6, "notifyOnAuthFailure"

    #@15b
    const/4 v8, 0x1

    #@15c
    move-object/from16 v0, p6

    #@15e
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@161
    .line 2222
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@164
    move-result-wide v38

    #@165
    .line 2225
    .local v38, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    #@167
    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    #@16a
    move-result-object v11

    #@16b
    .line 2229
    .local v11, "callerPkgSigDigest":[B
    if-nez v28, :cond_8

    #@16d
    if-eqz v26, :cond_8

    #@16f
    .line 2230
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, p2

    #@173
    move-object/from16 v2, p3

    #@175
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@178
    move-result-object v32

    #@179
    .line 2231
    .local v32, "authToken":Ljava/lang/String;
    if-eqz v32, :cond_8

    #@17b
    .line 2232
    new-instance v41, Landroid/os/Bundle;

    #@17d
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@180
    .line 2233
    .local v41, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@183
    move-object/from16 v0, v41

    #@185
    move-object/from16 v1, v32

    #@187
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18a
    .line 2234
    const-string/jumbo v6, "authAccount"

    #@18d
    move-object/from16 v0, p2

    #@18f
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@191
    move-object/from16 v0, v41

    #@193
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@196
    .line 2235
    const-string/jumbo v6, "accountType"

    #@199
    move-object/from16 v0, p2

    #@19b
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@19d
    move-object/from16 v0, v41

    #@19f
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a2
    .line 2236
    move-object/from16 v0, p0

    #@1a4
    move-object/from16 v1, p1

    #@1a6
    move-object/from16 v2, v41

    #@1a8
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1ab
    .line 2362
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1ae
    .line 2237
    return-void

    #@1af
    .line 2185
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

    #@1b0
    .line 2186
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b3
    .line 2185
    throw v6

    #@1b4
    .line 2190
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_5
    const/16 v28, 0x0

    #@1b6
    .local v28, "customTokens":Z
    goto/16 :goto_0

    #@1b8
    .line 2195
    .end local v28    # "customTokens":Z
    .restart local v27    # "callerUid":I
    :cond_6
    const/16 v26, 0x1

    #@1ba
    .local v26, "permissionGranted":Z
    goto/16 :goto_1

    #@1bc
    .line 2203
    .end local v26    # "permissionGranted":Z
    .restart local v10    # "callerPkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    #@1bd
    .line 2204
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c0
    .line 2203
    throw v6

    #@1c1
    .line 2208
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "Uid %s is attempting to illegally masquerade as package %s!"

    #@1c4
    .line 2207
    const/4 v8, 0x2

    #@1c5
    new-array v8, v8, [Ljava/lang/Object;

    #@1c7
    .line 2209
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ca
    move-result-object v9

    #@1cb
    const/4 v12, 0x0

    #@1cc
    aput-object v9, v8, v12

    #@1ce
    .line 2210
    const/4 v9, 0x1

    #@1cf
    aput-object v10, v8, v9

    #@1d1
    .line 2207
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d4
    move-result-object v40

    #@1d5
    .line 2211
    .local v40, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@1d7
    move-object/from16 v0, v40

    #@1d9
    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v6

    #@1dd
    .line 2241
    .end local v40    # "msg":Ljava/lang/String;
    .restart local v11    # "callerPkgSigDigest":[B
    .restart local v38    # "identityToken":J
    :cond_8
    if-eqz v28, :cond_a

    #@1df
    move-object/from16 v6, p0

    #@1e1
    move-object/from16 v8, p2

    #@1e3
    move-object/from16 v9, p3

    #@1e5
    .line 2247
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    #@1e8
    move-result-object v42

    #@1e9
    .line 2253
    .local v42, "token":Ljava/lang/String;
    if-eqz v42, :cond_a

    #@1eb
    .line 2254
    const-string/jumbo v6, "AccountManagerService"

    #@1ee
    const/4 v8, 0x2

    #@1ef
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f2
    move-result v6

    #@1f3
    if-eqz v6, :cond_9

    #@1f5
    .line 2255
    const-string/jumbo v6, "AccountManagerService"

    #@1f8
    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    #@1fb
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1fe
    .line 2257
    :cond_9
    new-instance v41, Landroid/os/Bundle;

    #@200
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@203
    .line 2258
    .restart local v41    # "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@206
    move-object/from16 v0, v41

    #@208
    move-object/from16 v1, v42

    #@20a
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@20d
    .line 2259
    const-string/jumbo v6, "authAccount"

    #@210
    move-object/from16 v0, p2

    #@212
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@214
    move-object/from16 v0, v41

    #@216
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@219
    .line 2260
    const-string/jumbo v6, "accountType"

    #@21c
    move-object/from16 v0, p2

    #@21e
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@220
    move-object/from16 v0, v41

    #@222
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@225
    .line 2261
    move-object/from16 v0, p0

    #@227
    move-object/from16 v1, p1

    #@229
    move-object/from16 v2, v41

    #@22b
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@22e
    .line 2362
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@231
    .line 2262
    return-void

    #@232
    .line 2266
    .end local v41    # "result":Landroid/os/Bundle;
    .end local v42    # "token":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$6;

    #@234
    .line 2269
    move-object/from16 v0, p2

    #@236
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@238
    move-object/from16 v17, v0

    #@23a
    .line 2272
    move-object/from16 v0, p2

    #@23c
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@23e
    move-object/from16 v20, v0

    #@240
    .line 2271
    const/16 v19, 0x0

    #@242
    .line 2273
    const/16 v21, 0x0

    #@244
    move-object/from16 v13, p0

    #@246
    move-object/from16 v14, p0

    #@248
    move-object v15, v7

    #@249
    move-object/from16 v16, p1

    #@24b
    move/from16 v18, p5

    #@24d
    move-object/from16 v22, p6

    #@24f
    move-object/from16 v23, p2

    #@251
    move-object/from16 v24, p3

    #@253
    move/from16 v25, p4

    #@255
    move-object/from16 v29, v10

    #@257
    move-object/from16 v30, v11

    #@259
    move-object/from16 v31, v7

    #@25b
    .line 2266
    invoke-direct/range {v12 .. v31}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@25e
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@261
    .line 2362
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@264
    .line 2150
    return-void

    #@265
    .line 2361
    .end local v11    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v6

    #@266
    .line 2362
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@269
    .line 2361
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
    .line 2097
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
    .line 2098
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
    .line 2100
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@19
    move-result v14

    #@1a
    .line 2101
    .local v14, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@1d
    .line 2102
    const/16 v2, 0x3e8

    #@1f
    if-eq v14, v2, :cond_2

    #@21
    .line 2103
    new-instance v2, Ljava/lang/SecurityException;

    #@23
    const-string/jumbo v3, "can only call from system"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 2105
    :cond_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    #@2d
    move-result v15

    #@2e
    .line 2106
    .local v15, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@31
    move-result-wide v16

    #@32
    .line 2108
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@37
    move-result-object v5

    #@38
    .line 2109
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$5;

    #@3a
    const/4 v8, 0x0

    #@3b
    .line 2110
    const/4 v9, 0x0

    #@3c
    const/4 v10, 0x0

    #@3d
    .line 2111
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
    .line 2109
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@4d
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 2139
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@53
    .line 2096
    return-void

    #@54
    .line 2138
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@55
    .line 2139
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@58
    .line 2138
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    .line 909
    .local v0, "callingUid":I
    const-string/jumbo v1, "AccountManagerService"

    #@8
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 910
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
    .line 912
    const-string/jumbo v5, " caller\'s uid "

    #@24
    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 913
    const-string/jumbo v5, ", pid "

    #@2f
    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v5

    #@37
    .line 910
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
    .line 916
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 917
    new-instance v1, Ljava/lang/SecurityException;

    #@4a
    .line 919
    const-string/jumbo v4, "User %s tying to get authenticator types for %s"

    #@4d
    .line 918
    new-array v5, v6, [Ljava/lang/Object;

    #@4f
    .line 920
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
    .line 921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    const/4 v7, 0x1

    #@5f
    aput-object v6, v5, v7

    #@61
    .line 918
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 917
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 924
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@6c
    move-result-wide v2

    #@6d
    .line 926
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result-object v1

    #@71
    .line 929
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 926
    return-object v1

    #@75
    .line 928
    :catchall_0
    move-exception v1

    #@76
    .line 929
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@79
    .line 928
    throw v1
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4209
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 4210
    const-string/jumbo v2, "accounts_ce.db"

    #@9
    .line 4209
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 4211
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method getDeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4202
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 4203
    const-string/jumbo v2, "accounts_de.db"

    #@9
    .line 4202
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 4204
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 779
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 780
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
    .line 781
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 780
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    .line 781
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v8

    #@2c
    .line 780
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 782
    const-string/jumbo v8, ", pid "

    #@33
    .line 780
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v8

    #@3b
    .line 780
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
    .line 784
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
    .line 785
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@54
    move-result v5

    #@55
    .line 786
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@57
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5a
    move-result v6

    #@5b
    if-nez v6, :cond_2

    #@5d
    .line 788
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    #@60
    .line 787
    new-array v7, v9, [Ljava/lang/Object;

    #@62
    .line 789
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v8

    #@66
    const/4 v9, 0x0

    #@67
    aput-object v8, v7, v9

    #@69
    .line 790
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6b
    const/4 v9, 0x1

    #@6c
    aput-object v8, v7, v9

    #@6e
    .line 787
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    .line 791
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@74
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@77
    throw v6

    #@78
    .line 793
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@7b
    move-result-wide v2

    #@7c
    .line 795
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7f
    move-result-object v0

    #@80
    .line 796
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result-object v6

    #@84
    .line 798
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 796
    return-object v6

    #@88
    .line 797
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@89
    .line 798
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8c
    .line 797
    throw v6
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4175
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@3
    move-result-object v2

    #@4
    .line 4176
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@6
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@9
    move-result-object v4

    #@a
    .line 4177
    const-string/jumbo v5, "accounts.db"

    #@d
    .line 4176
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 4178
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p1, :cond_0

    #@12
    .line 4183
    new-instance v1, Ljava/io/File;

    #@14
    const-string/jumbo v4, "accounts.db"

    #@17
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .line 4184
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
    .line 4197
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 4186
    .restart local v1    # "oldFile":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@2e
    move-result-object v3

    #@2f
    .line 4187
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 4188
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 4189
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
    .line 4192
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@58
    move-result v4

    #@59
    if-nez v4, :cond_0

    #@5b
    .line 4193
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

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 820
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
    .line 821
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
    .line 822
    const-string/jumbo v6, ", caller\'s uid "

    #@20
    .line 821
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v6

    #@28
    .line 821
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 823
    const-string/jumbo v6, ", pid "

    #@2f
    .line 821
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v6

    #@37
    .line 821
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
    .line 825
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
    .line 826
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v1

    #@51
    .line 827
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@54
    move-result-wide v2

    #@55
    .line 829
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@58
    move-result-object v0

    #@59
    .line 830
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    move-result-object v4

    #@5d
    .line 832
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@60
    .line 830
    return-object v4

    #@61
    .line 831
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    #@62
    .line 832
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@65
    .line 831
    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    #@0
    .prologue
    .line 3431
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
    .line 3436
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 3432
    .end local v1    # "runningUserIds":[I
    :catch_0
    move-exception v0

    #@e
    .line 3434
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
    .line 3626
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p1

    #@4
    .line 3627
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v10

    #@8
    .line 3628
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    #@a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 3629
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    #@e
    .line 3631
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@15
    move-result-object v0

    #@16
    .line 3632
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
    .line 3633
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
    .line 3631
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@30
    move-result-object v11

    #@31
    .line 3634
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    #@33
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 3635
    const-string/jumbo v0, "name"

    #@3c
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3f
    move-result v12

    #@40
    .line 3636
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    #@43
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@46
    move-result v13

    #@47
    .line 3638
    .local v13, "typeIndex":I
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    #@49
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 3639
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 3638
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 3640
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_0

    #@5d
    .line 3643
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_1
    if-eqz v11, :cond_2

    #@5f
    .line 3644
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@62
    .line 3647
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v0

    #@66
    new-array v8, v0, [Landroid/accounts/Account;

    #@68
    .line 3648
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6b
    .line 3649
    return-object v8

    #@6c
    .line 3642
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@6d
    .line 3643
    if-eqz v11, :cond_3

    #@6f
    .line 3644
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@72
    .line 3642
    :cond_3
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 621
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v7

    #@3
    .line 622
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b
    .line 623
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@c
    .line 624
    .local v5, "validateAccounts":Z
    if-nez v0, :cond_0

    #@e
    .line 625
    new-instance v4, Ljava/io/File;

    #@10
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    .line 626
    .local v4, "preNDbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@19
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    .line 627
    .local v2, "deDbFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@22
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@24
    invoke-direct {v0, v6, p1, v4, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    #@27
    .line 629
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@2e
    move-result-object v6

    #@2f
    .line 628
    invoke-direct {p0, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@32
    .line 630
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@37
    .line 631
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@3a
    .line 632
    const/4 v5, 0x1

    #@3b
    .line 635
    .end local v2    # "deDbFile":Ljava/io/File;
    .end local v4    # "preNDbFile":Ljava/io/File;
    :cond_0
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_1

    #@45
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@47
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_1

    #@4d
    .line 636
    const-string/jumbo v6, "AccountManagerService"

    #@50
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "User "

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    const-string/jumbo v9, " is unlocked - opening CE database"

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 637
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@71
    move-result-object v8

    #@72
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@73
    .line 638
    :try_start_1
    new-instance v3, Ljava/io/File;

    #@75
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7c
    .line 639
    .local v3, "preNDatabaseFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@7e
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@85
    .line 640
    .local v1, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@87
    invoke-static {v6, p1, v3, v1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;

    #@8a
    .line 641
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6, v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->attachCeDatabase(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    :try_start_2
    monitor-exit v8

    #@92
    .line 643
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@95
    .line 645
    .end local v1    # "ceDatabaseFile":Ljava/io/File;
    .end local v3    # "preNDatabaseFile":Ljava/io/File;
    :cond_1
    if-eqz v5, :cond_2

    #@97
    .line 646
    const/4 v6, 0x1

    #@98
    invoke-direct {p0, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9b
    :cond_2
    monitor-exit v7

    #@9c
    .line 648
    return-object v0

    #@9d
    .line 637
    :catchall_0
    move-exception v6

    #@9e
    :try_start_3
    monitor-exit v8

    #@9f
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a0
    .line 621
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "validateAccounts":Z
    :catchall_1
    move-exception v6

    #@a1
    monitor-exit v7

    #@a2
    throw v6
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 873
    .local v1, "callingUid":I
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
    .line 874
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    #@11
    const/4 v7, 0x4

    #@12
    new-array v7, v7, [Ljava/lang/Object;

    #@14
    .line 875
    const/4 v8, 0x0

    #@15
    aput-object p1, v7, v8

    #@17
    const/4 v8, 0x1

    #@18
    aput-object p2, v7, v8

    #@1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    const/4 v9, 0x2

    #@1f
    aput-object v8, v7, v9

    #@21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@24
    move-result v8

    #@25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v8

    #@29
    const/4 v9, 0x3

    #@2a
    aput-object v8, v7, v9

    #@2c
    .line 874
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 876
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@33
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 878
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@38
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v7, "account is null"

    #@3d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v6

    #@41
    .line 879
    :cond_1
    if-nez p2, :cond_2

    #@43
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v7, "key is null"

    #@48
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v6

    #@4c
    .line 880
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4f
    move-result v5

    #@50
    .line 881
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@52
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_3

    #@58
    .line 883
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    #@5b
    .line 882
    const/4 v7, 0x2

    #@5c
    new-array v7, v7, [Ljava/lang/Object;

    #@5e
    .line 884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 885
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 882
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 886
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 888
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@77
    move-result v6

    #@78
    if-nez v6, :cond_4

    #@7a
    .line 889
    const-string/jumbo v6, "AccountManagerService"

    #@7d
    new-instance v7, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v8, "User "

    #@85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    const-string/jumbo v8, " data is locked. callingUid "

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v7

    #@9c
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 890
    const/4 v6, 0x0

    #@a0
    return-object v6

    #@a1
    .line 892
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a4
    move-result-wide v2

    #@a5
    .line 894
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@a8
    move-result-object v0

    #@a9
    .line 895
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@ac
    move-result-object v7

    #@ad
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@ae
    .line 896
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_5

    #@b4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b5
    .line 897
    const/4 v6, 0x0

    #@b6
    .line 902
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b9
    .line 897
    return-object v6

    #@ba
    .line 899
    :cond_5
    :try_start_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bd
    move-result-object v6

    #@be
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@bf
    .line 902
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c2
    .line 899
    return-object v6

    #@c3
    .line 895
    :catchall_0
    move-exception v6

    #@c4
    :try_start_5
    monitor-exit v7

    #@c5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c6
    .line 901
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    #@c7
    .line 902
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@ca
    .line 901
    throw v6
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1272
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 1273
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
    .line 1274
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
    .line 1275
    const-string/jumbo v3, ", response "

    #@24
    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 1276
    const-string/jumbo v3, ", features "

    #@2f
    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 1276
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1277
    const-string/jumbo v3, ", caller\'s uid "

    #@3e
    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1278
    const-string/jumbo v3, ", pid "

    #@49
    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1278
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v3

    #@51
    .line 1274
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
    .line 1280
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
    .line 1281
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
    .line 1282
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
    .line 1283
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@80
    move-result v7

    #@81
    .line 1284
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@83
    invoke-direct {p0, v6, v0, v7, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    #@86
    .line 1287
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@89
    move-result-wide v8

    #@8a
    .line 1289
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8d
    move-result-object v2

    #@8e
    .line 1290
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
    .line 1292
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1271
    return-void

    #@9e
    .line 1291
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@9f
    .line 1292
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a2
    .line 1291
    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "n"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 4956
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
    .line 4957
    const/4 v1, 0x0

    #@c
    .line 4956
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@f
    .line 4955
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 1721
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
    .line 1722
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
    .line 1723
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1722
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1724
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1722
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1722
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
    .line 1726
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
    .line 1727
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
    .line 1728
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5b
    move-result v3

    #@5c
    .line 1729
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@5f
    move-result-wide v4

    #@60
    .line 1731
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@63
    move-result-object v0

    #@64
    .line 1732
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@67
    move-result-object v7

    #@68
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@69
    .line 1733
    :try_start_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@70
    move-result-object v2

    #@71
    .line 1734
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@74
    .line 1736
    :try_start_2
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    #@77
    .line 1737
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 1738
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    .line 1740
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
    .line 1744
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@84
    .line 1719
    return-void

    #@85
    .line 1739
    :catchall_0
    move-exception v6

    #@86
    .line 1740
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@89
    .line 1739
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8a
    .line 1732
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
    .line 1743
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v6

    #@8e
    .line 1744
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@91
    .line 1743
    throw v6
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3146
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
    .line 3147
    const-string/jumbo v2, "AccountManagerService"

    #@d
    .line 3148
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "isCredentialsUpdateSuggested: "

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
    const-string/jumbo v4, ", response "

    #@22
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
    .line 3149
    const-string/jumbo v4, ", caller\'s uid "

    #@2f
    .line 3148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 3149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@36
    move-result v4

    #@37
    .line 3148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 3150
    const-string/jumbo v4, ", pid "

    #@3e
    .line 3148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 3150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v4

    #@46
    .line 3148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 3147
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 3152
    :cond_0
    if-nez p1, :cond_1

    #@53
    .line 3153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v3, "response is null"

    #@58
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 3155
    :cond_1
    if-nez p2, :cond_2

    #@5e
    .line 3156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@60
    const-string/jumbo v3, "account is null"

    #@63
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 3158
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_3

    #@6d
    .line 3159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v3, "status token is empty"

    #@72
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 3162
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@79
    move-result v17

    #@7a
    .line 3164
    .local v17, "uid":I
    move-object/from16 v0, p0

    #@7c
    move/from16 v1, v17

    #@7e
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@81
    move-result v2

    #@82
    if-nez v2, :cond_4

    #@84
    .line 3166
    const-string/jumbo v2, "uid %s cannot stat add account session."

    #@87
    .line 3165
    const/4 v3, 0x1

    #@88
    new-array v3, v3, [Ljava/lang/Object;

    #@8a
    .line 3167
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v4

    #@8e
    const/4 v6, 0x0

    #@8f
    aput-object v4, v3, v6

    #@91
    .line 3165
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v16

    #@95
    .line 3168
    .local v16, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v2

    #@9d
    .line 3171
    .end local v16    # "msg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a0
    move-result v18

    #@a1
    .line 3172
    .local v18, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a4
    move-result-wide v14

    #@a5
    .line 3174
    .local v14, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@a7
    move/from16 v1, v18

    #@a9
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@ac
    move-result-object v5

    #@ad
    .line 3175
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$14;

    #@af
    move-object/from16 v0, p2

    #@b1
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b3
    .line 3176
    move-object/from16 v0, p2

    #@b5
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b7
    .line 3175
    const/4 v8, 0x0

    #@b8
    .line 3176
    const/4 v9, 0x0

    #@b9
    .line 3177
    const/4 v11, 0x0

    #@ba
    move-object/from16 v3, p0

    #@bc
    move-object/from16 v4, p0

    #@be
    move-object/from16 v6, p1

    #@c0
    move-object/from16 v12, p2

    #@c2
    move-object/from16 v13, p3

    #@c4
    .line 3175
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    #@c7
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ca
    .line 3231
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cd
    .line 3145
    return-void

    #@ce
    .line 3230
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@cf
    .line 3231
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d2
    .line 3230
    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4815
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
    .line 773
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 772
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    .line 772
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
    .line 385
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 386
    :catch_0
    move-exception v0

    #@6
    .line 389
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 390
    const-string/jumbo v1, "AccountManagerService"

    #@d
    const-string/jumbo v2, "Account Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 392
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 742
    const-string/jumbo v0, "AccountManagerService"

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 743
    const-string/jumbo v0, "AccountManagerService"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "onUserUnlocked "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 745
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@27
    monitor-enter v1

    #@28
    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v1

    #@2f
    .line 748
    if-ge p1, v3, :cond_1

    #@31
    return-void

    #@32
    .line 745
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0

    #@35
    .line 749
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    #@38
    .line 741
    return-void
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 738
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@3
    const/4 v1, -0x1

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    #@b
    .line 737
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    .line 1849
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    .line 1850
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@9
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 1851
    const-string/jumbo v6, "AccountManagerService"

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "peekAuthToken: "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    .line 1852
    const-string/jumbo v8, ", authTokenType "

    #@25
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    .line 1853
    const-string/jumbo v8, ", caller\'s uid "

    #@30
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 1854
    const-string/jumbo v8, ", pid "

    #@3b
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@42
    move-result v8

    #@43
    .line 1851
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1856
    :cond_0
    if-nez p1, :cond_1

    #@50
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@52
    const-string/jumbo v7, "account is null"

    #@55
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v6

    #@59
    .line 1857
    :cond_1
    if-nez p2, :cond_2

    #@5b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v7, "authTokenType is null"

    #@60
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v6

    #@64
    .line 1858
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@67
    move-result v5

    #@68
    .line 1859
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6a
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6d
    move-result v6

    #@6e
    if-nez v6, :cond_3

    #@70
    .line 1861
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    #@73
    .line 1860
    new-array v7, v10, [Ljava/lang/Object;

    #@75
    .line 1862
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v8

    #@79
    const/4 v9, 0x0

    #@7a
    aput-object v8, v7, v9

    #@7c
    .line 1863
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7e
    const/4 v9, 0x1

    #@7f
    aput-object v8, v7, v9

    #@81
    .line 1860
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    .line 1864
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@87
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v6

    #@8b
    .line 1866
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@8e
    move-result v6

    #@8f
    if-nez v6, :cond_4

    #@91
    .line 1867
    const-string/jumbo v6, "AccountManagerService"

    #@94
    new-instance v7, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v8, "Authtoken not available - user "

    #@9c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    const-string/jumbo v8, " data is locked. callingUid "

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v7

    #@ab
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 1869
    return-object v9

    #@b7
    .line 1871
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@ba
    move-result-wide v2

    #@bb
    .line 1873
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@be
    move-result-object v0

    #@bf
    .line 1874
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c2
    move-result-object v6

    #@c3
    .line 1876
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c6
    .line 1874
    return-object v6

    #@c7
    .line 1875
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@c8
    .line 1876
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cb
    .line 1875
    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5491
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    monitor-enter v3

    #@5
    .line 5492
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
    .line 5493
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@11
    .line 5495
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@18
    move-result-object v1

    #@19
    .line 5496
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@1c
    move-result-object v0

    #@1d
    .line 5497
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 5499
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
    .line 5491
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
    .line 5537
    new-instance v9, Ljava/util/HashMap;

    #@5
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 5538
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.authtokens"

    #@b
    .line 5539
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@d
    .line 5540
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 5541
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
    .line 5538
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v10

    #@22
    .line 5544
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 5545
    const/4 v0, 0x0

    #@29
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v11

    #@2d
    .line 5546
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 5547
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 5549
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 5550
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3a
    .line 5549
    throw v0

    #@3b
    .line 5550
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3e
    .line 5552
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
    .line 5469
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 5470
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
    .line 5469
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
    .line 5517
    new-instance v10, Ljava/util/HashMap;

    #@5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 5518
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.extras"

    #@b
    .line 5519
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    #@d
    .line 5520
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 5521
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
    .line 5518
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 5524
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 5525
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 5526
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 5527
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 5529
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 5530
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    .line 5529
    throw v0

    #@3b
    .line 5530
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3e
    .line 5532
    return-object v10
.end method

.method protected readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5505
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/HashMap;

    #@a
    .line 5506
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@c
    .line 5508
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@13
    move-result-object v0

    #@14
    .line 5509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@17
    move-result-object v1

    #@18
    .line 5510
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 5512
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/String;

    #@25
    return-object v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 1
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    #@0
    .prologue
    .line 1492
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1488
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    #@7
    .line 1487
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v11

    #@4
    .line 1499
    .local v11, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    #@7
    const/4 v6, 0x2

    #@8
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1500
    const-string/jumbo v4, "AccountManagerService"

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "removeAccount: "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    .line 1501
    const-string/jumbo v7, ", response "

    #@26
    .line 1500
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    .line 1502
    const-string/jumbo v7, ", caller\'s uid "

    #@33
    .line 1500
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    .line 1503
    const-string/jumbo v7, ", pid "

    #@3e
    .line 1500
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 1503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v7

    #@46
    .line 1500
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 1504
    const-string/jumbo v7, ", for user id "

    #@4d
    .line 1500
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    move/from16 v0, p4

    #@53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1506
    :cond_0
    if-nez p1, :cond_1

    #@60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@62
    const-string/jumbo v6, "response is null"

    #@65
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v4

    #@69
    .line 1507
    :cond_1
    if-nez p2, :cond_2

    #@6b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v6, "account is null"

    #@70
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v4

    #@74
    .line 1509
    :cond_2
    move-object/from16 v0, p0

    #@76
    move/from16 v1, p4

    #@78
    invoke-direct {v0, v11, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_3

    #@7e
    .line 1510
    new-instance v4, Ljava/lang/SecurityException;

    #@80
    .line 1512
    const-string/jumbo v6, "User %s tying remove account for %s"

    #@83
    .line 1511
    const/4 v7, 0x2

    #@84
    new-array v7, v7, [Ljava/lang/Object;

    #@86
    .line 1513
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@89
    move-result v12

    #@8a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v12

    #@8e
    const/4 v13, 0x0

    #@8f
    aput-object v12, v7, v13

    #@91
    .line 1514
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v12

    #@95
    const/4 v13, 0x1

    #@96
    aput-object v12, v7, v13

    #@98
    .line 1511
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    .line 1510
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v4

    #@a0
    .line 1521
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@a3
    move-result-object v25

    #@a4
    .line 1522
    .local v25, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p2

    #@a6
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a8
    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    #@ab
    move-result v6

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v0, v4, v11, v6}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@b1
    move-result v4

    #@b2
    if-nez v4, :cond_4

    #@b4
    .line 1523
    move-object/from16 v0, p0

    #@b6
    invoke-direct {v0, v11}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_5

    #@bc
    .line 1530
    :cond_4
    move-object/from16 v0, p0

    #@be
    move/from16 v1, p4

    #@c0
    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@c3
    move-result v4

    #@c4
    if-nez v4, :cond_6

    #@c6
    .line 1533
    :try_start_0
    const-string/jumbo v4, "User cannot modify accounts"

    #@c9
    .line 1532
    const/16 v6, 0x64

    #@cb
    move-object/from16 v0, p1

    #@cd
    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d0
    .line 1536
    :goto_0
    return-void

    #@d1
    .line 1525
    :cond_5
    const-string/jumbo v4, "uid %s cannot remove accounts of type: %s"

    #@d4
    .line 1524
    const/4 v6, 0x2

    #@d5
    new-array v6, v6, [Ljava/lang/Object;

    #@d7
    .line 1526
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@da
    move-result-object v7

    #@db
    const/4 v12, 0x0

    #@dc
    aput-object v7, v6, v12

    #@de
    .line 1527
    move-object/from16 v0, p2

    #@e0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e2
    const/4 v12, 0x1

    #@e3
    aput-object v7, v6, v12

    #@e5
    .line 1524
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v19

    #@e9
    .line 1528
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@eb
    move-object/from16 v0, v19

    #@ed
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v4

    #@f1
    .line 1538
    .end local v19    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    #@f3
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@f5
    move-object/from16 v0, p0

    #@f7
    move/from16 v1, p4

    #@f9
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@fc
    move-result v4

    #@fd
    if-nez v4, :cond_7

    #@ff
    .line 1541
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@102
    .line 1540
    const/16 v6, 0x65

    #@104
    move-object/from16 v0, p1

    #@106
    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@109
    .line 1544
    :goto_1
    return-void

    #@10a
    .line 1546
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@10d
    move-result-wide v20

    #@10e
    .line 1547
    .local v20, "identityToken":J
    move-object/from16 v0, p0

    #@110
    move/from16 v1, p4

    #@112
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@115
    move-result-object v10

    #@116
    .line 1548
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@118
    move-object/from16 v1, p2

    #@11a
    invoke-direct {v0, v10, v1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@121
    move-result v4

    #@122
    move-object/from16 v0, p0

    #@124
    move-object/from16 v1, v25

    #@126
    invoke-virtual {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@129
    .line 1549
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@12c
    move-result-object v6

    #@12d
    monitor-enter v6

    #@12e
    .line 1551
    :try_start_2
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@131
    move-result-object v4

    #@132
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@135
    move-result-object v4

    #@136
    .line 1550
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@139
    move-result-object v23

    #@13a
    .local v23, "pair$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@13d
    move-result v4

    #@13e
    if-eqz v4, :cond_9

    #@140
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@143
    move-result-object v22

    #@144
    check-cast v22, Landroid/util/Pair;

    #@146
    .line 1552
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v22

    #@148
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14a
    check-cast v4, Landroid/util/Pair;

    #@14c
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14e
    move-object/from16 v0, p2

    #@150
    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v4

    #@154
    if-eqz v4, :cond_8

    #@156
    .line 1553
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@159
    move-result-object v4

    #@15a
    move-object/from16 v0, v22

    #@15c
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    move-result-object v4

    #@160
    check-cast v4, Ljava/lang/Integer;

    #@162
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@165
    move-result v18

    #@166
    .line 1554
    .local v18, "id":I
    move-object/from16 v0, p0

    #@168
    move/from16 v1, v18

    #@16a
    move-object/from16 v2, v25

    #@16c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16f
    goto :goto_2

    #@170
    .line 1549
    .end local v18    # "id":I
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@171
    monitor-exit v6

    #@172
    throw v4

    #@173
    .restart local v23    # "pair$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v6

    #@174
    .line 1558
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@177
    move-result-object v4

    #@178
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@17b
    move-result-object v5

    #@17c
    .line 1559
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, p2

    #@180
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@183
    move-result-wide v8

    #@184
    .line 1562
    .local v8, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    #@187
    move-result-object v6

    #@188
    .line 1563
    const-string/jumbo v7, "accounts"

    #@18b
    move-object/from16 v4, p0

    #@18d
    .line 1560
    invoke-direct/range {v4 .. v11}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@190
    .line 1568
    :try_start_3
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    #@192
    move-object/from16 v13, p0

    #@194
    move-object v14, v10

    #@195
    move-object/from16 v15, p1

    #@197
    move-object/from16 v16, p2

    #@199
    move/from16 v17, p3

    #@19b
    invoke-direct/range {v12 .. v17}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    #@19e
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1a1
    .line 1570
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a4
    .line 1497
    return-void

    #@1a5
    .line 1569
    :catchall_1
    move-exception v4

    #@1a6
    .line 1570
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a9
    .line 1569
    throw v4

    #@1aa
    .line 1542
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v10    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v20    # "identityToken":J
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v24

    #@1ab
    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@1ad
    .line 1534
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    #@1ae
    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 14
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v7

    #@6
    .line 1577
    .local v7, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@9
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1578
    const-string/jumbo v0, "AccountManagerService"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "removeAccountExplicitly: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1579
    const-string/jumbo v3, ", caller\'s uid "

    #@25
    .line 1578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1580
    const-string/jumbo v3, ", pid "

    #@30
    .line 1578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1580
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v3

    #@38
    .line 1578
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
    .line 1582
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@4a
    move-result v11

    #@4b
    .line 1583
    .local v11, "userId":I
    if-nez p1, :cond_1

    #@4d
    .line 1588
    const-string/jumbo v0, "AccountManagerService"

    #@50
    const-string/jumbo v2, "account is null"

    #@53
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1589
    return v12

    #@57
    .line 1590
    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@59
    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5c
    move-result v0

    #@5d
    if-nez v0, :cond_2

    #@5f
    .line 1592
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    #@62
    .line 1591
    new-array v2, v13, [Ljava/lang/Object;

    #@64
    .line 1593
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    aput-object v3, v2, v12

    #@6a
    .line 1594
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6c
    const/4 v12, 0x1

    #@6d
    aput-object v3, v2, v12

    #@6f
    .line 1591
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v10

    #@73
    .line 1595
    .local v10, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    #@75
    invoke-direct {v0, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    .line 1597
    .end local v10    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7c
    move-result-object v6

    #@7d
    .line 1598
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@84
    move-result-object v1

    #@85
    .line 1599
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@88
    move-result-wide v4

    #@89
    .line 1602
    .local v4, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    .line 1603
    const-string/jumbo v3, "accounts"

    #@90
    move-object v0, p0

    #@91
    .line 1600
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@94
    .line 1607
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@97
    move-result-wide v8

    #@98
    .line 1609
    .local v8, "identityToken":J
    :try_start_0
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    move-result v0

    #@9c
    .line 1611
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9f
    .line 1609
    return v0

    #@a0
    .line 1610
    :catchall_0
    move-exception v0

    #@a1
    .line 1611
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a4
    .line 1610
    throw v0
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1666
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@b
    .line 1665
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3606
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
    .line 1356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1357
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
    .line 1358
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
    .line 1359
    const-string/jumbo v13, ", caller\'s uid "

    #@33
    .line 1358
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    .line 1360
    const-string/jumbo v13, ", pid "

    #@3e
    .line 1358
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v13

    #@46
    .line 1358
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
    .line 1362
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
    .line 1363
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5f
    move-result v10

    #@60
    .line 1364
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
    .line 1366
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    #@6d
    .line 1365
    const/4 v12, 0x2

    #@6e
    new-array v12, v12, [Ljava/lang/Object;

    #@70
    .line 1367
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v13

    #@74
    const/4 v14, 0x0

    #@75
    aput-object v13, v12, v14

    #@77
    .line 1368
    move-object/from16 v0, p2

    #@79
    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7b
    const/4 v14, 0x1

    #@7c
    aput-object v13, v12, v14

    #@7e
    .line 1365
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 1369
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    #@84
    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@87
    throw v11

    #@88
    .line 1371
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8b
    move-result-wide v6

    #@8c
    .line 1373
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8f
    move-result-object v2

    #@90
    .line 1374
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, p3

    #@94
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@97
    move-result-object v9

    #@98
    .line 1375
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    #@9a
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@9d
    .line 1376
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v11, "authAccount"

    #@a0
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a2
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    .line 1377
    const-string/jumbo v11, "accountType"

    #@a8
    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@aa
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ad
    .line 1379
    :try_start_1
    move-object/from16 v0, p1

    #@af
    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b2
    .line 1384
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b5
    .line 1355
    return-void

    #@b6
    .line 1380
    :catch_0
    move-exception v4

    #@b7
    .line 1381
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
    .line 1383
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v11

    #@c3
    .line 1384
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c6
    .line 1383
    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3583
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p3

    #@4
    .line 3584
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v6

    #@8
    .line 3585
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 3586
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@13
    move-result-wide v4

    #@14
    .line 3587
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    #@16
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@19
    .line 3588
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@1c
    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 3590
    const-string/jumbo v0, "shared_accounts"

    #@22
    .line 3592
    const-string/jumbo v2, "name=? AND type=?"

    #@25
    .line 3593
    const/4 v3, 0x2

    #@26
    new-array v3, v3, [Ljava/lang/String;

    #@28
    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2a
    const/4 v11, 0x0

    #@2b
    aput-object v10, v3, v11

    #@2d
    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2f
    const/4 v11, 0x1

    #@30
    aput-object v10, v3, v11

    #@32
    .line 3589
    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@35
    move-result v8

    #@36
    .line 3594
    .local v8, "r":I
    if-lez v8, :cond_0

    #@38
    .line 3595
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3b
    move-result v7

    #@3c
    .line 3596
    .local v7, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, "shared_accounts"

    #@43
    move-object v0, p0

    #@44
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@47
    .line 3599
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@4a
    .line 3601
    .end local v7    # "callingUid":I
    :cond_0
    if-lez v8, :cond_1

    #@4c
    const/4 v0, 0x1

    #@4d
    :goto_0
    return v0

    #@4e
    :cond_1
    const/4 v0, 0x0

    #@4f
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
    .line 1882
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1883
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1884
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
    .line 1885
    const-string/jumbo v8, ", authTokenType "

    #@24
    .line 1884
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1886
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 1884
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 1887
    const-string/jumbo v8, ", pid "

    #@3a
    .line 1884
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 1887
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 1884
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
    .line 1889
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
    .line 1890
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
    .line 1891
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 1892
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 1894
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    #@72
    .line 1893
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 1895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 1896
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 1893
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 1897
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 1899
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 1901
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 1902
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    .line 1904
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@98
    .line 1881
    return-void

    #@99
    .line 1903
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@9a
    .line 1904
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1903
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
    .line 1910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 1911
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1912
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
    .line 1913
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1912
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1914
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1912
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1912
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
    .line 1916
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
    .line 1917
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 1918
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 1920
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    #@5c
    .line 1919
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 1921
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 1922
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1919
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 1923
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1925
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 1927
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 1928
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 1930
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@82
    .line 1909
    return-void

    #@83
    .line 1929
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@84
    .line 1930
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 1929
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
    .line 2000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2001
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 2002
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
    .line 2003
    const-string/jumbo v8, ", key "

    #@24
    .line 2002
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 2004
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 2002
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 2005
    const-string/jumbo v8, ", pid "

    #@3a
    .line 2002
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 2005
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 2002
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
    .line 2007
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
    .line 2008
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
    .line 2009
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 2010
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 2012
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    #@72
    .line 2011
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 2013
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 2014
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 2011
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 2015
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 2017
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 2019
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 2020
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    #@95
    move-result-object v7

    #@96
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@97
    .line 2021
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9a
    move-result v6

    #@9b
    if-nez v6, :cond_4

    #@9d
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9e
    .line 2027
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a1
    .line 2022
    return-void

    #@a2
    .line 2024
    :cond_4
    :try_start_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a6
    .line 2027
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a9
    .line 1999
    return-void

    #@aa
    .line 2020
    :catchall_0
    move-exception v6

    #@ab
    :try_start_5
    monitor-exit v7

    #@ac
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ad
    .line 2026
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    #@ae
    .line 2027
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b1
    .line 2026
    throw v6
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v4

    #@5
    const/16 v5, 0x3e8

    #@7
    invoke-static {v5, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 3280
    new-instance v4, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v5, "Only system can check for accounts across users"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 3282
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v2

    #@1a
    .line 3284
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    #@1d
    move-result-object v0

    #@1e
    .line 3285
    .local v0, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v4, v0

    #@1f
    add-int/lit8 v1, v4, -0x1

    #@21
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@23
    .line 3286
    aget-object v4, v0, v1

    #@25
    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@27
    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 3287
    const/4 v4, 0x1

    #@2e
    .line 3292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 3287
    return v4

    #@32
    .line 3285
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_0

    #@35
    .line 3292
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 3290
    return v6

    #@39
    .line 3291
    .end local v0    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@3a
    .line 3292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 3291
    throw v4
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 27
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2631
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2632
    const-string/jumbo v4, "AccountManagerService"

    #@9
    const/4 v5, 0x2

    #@a
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 2633
    const-string/jumbo v4, "AccountManagerService"

    #@13
    .line 2634
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "startAddAccountSession: accountType "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    .line 2635
    const-string/jumbo v6, ", response "

    #@28
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 2636
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 2637
    const-string/jumbo v6, ", requiredFeatures "

    #@42
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    .line 2637
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 2638
    const-string/jumbo v6, ", expectActivityLaunch "

    #@51
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    move/from16 v0, p5

    #@57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 2639
    const-string/jumbo v6, ", caller\'s uid "

    #@5e
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 2639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@65
    move-result v6

    #@66
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 2640
    const-string/jumbo v6, ", pid "

    #@6d
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 2640
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@74
    move-result v6

    #@75
    .line 2634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 2633
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 2642
    :cond_0
    if-nez p1, :cond_1

    #@82
    .line 2643
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@84
    const-string/jumbo v5, "response is null"

    #@87
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v4

    #@8b
    .line 2645
    :cond_1
    if-nez p2, :cond_2

    #@8d
    .line 2646
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v5, "accountType is null"

    #@92
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 2649
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@99
    move-result v25

    #@9a
    .line 2651
    .local v25, "uid":I
    move-object/from16 v0, p0

    #@9c
    move/from16 v1, v25

    #@9e
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@a1
    move-result v4

    #@a2
    if-nez v4, :cond_3

    #@a4
    .line 2653
    const-string/jumbo v4, "uid %s cannot stat add account session."

    #@a7
    .line 2652
    const/4 v5, 0x1

    #@a8
    new-array v5, v5, [Ljava/lang/Object;

    #@aa
    .line 2654
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v6

    #@ae
    const/4 v8, 0x0

    #@af
    aput-object v6, v5, v8

    #@b1
    .line 2652
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b4
    move-result-object v22

    #@b5
    .line 2655
    .local v22, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@b7
    move-object/from16 v0, v22

    #@b9
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v4

    #@bd
    .line 2658
    .end local v22    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    #@c0
    move-result v26

    #@c1
    .line 2659
    .local v26, "userId":I
    move-object/from16 v0, p0

    #@c3
    move/from16 v1, v26

    #@c5
    move/from16 v2, v25

    #@c7
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@ca
    move-result v4

    #@cb
    if-nez v4, :cond_4

    #@cd
    .line 2662
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@d0
    .line 2661
    const/16 v5, 0x64

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d7
    .line 2665
    :goto_0
    const/16 v4, 0x64

    #@d9
    move-object/from16 v0, p0

    #@db
    move/from16 v1, v26

    #@dd
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@e0
    .line 2666
    return-void

    #@e1
    .line 2668
    :cond_4
    move-object/from16 v0, p0

    #@e3
    move/from16 v1, v26

    #@e5
    move-object/from16 v2, p2

    #@e7
    move/from16 v3, v25

    #@e9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@ec
    move-result v4

    #@ed
    if-nez v4, :cond_5

    #@ef
    .line 2671
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@f2
    .line 2670
    const/16 v5, 0x65

    #@f4
    move-object/from16 v0, p1

    #@f6
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f9
    .line 2674
    :goto_1
    const/16 v4, 0x65

    #@fb
    move-object/from16 v0, p0

    #@fd
    move/from16 v1, v26

    #@ff
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@102
    .line 2676
    return-void

    #@103
    .line 2678
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@106
    move-result v23

    #@107
    .line 2679
    .local v23, "pid":I
    if-nez p6, :cond_6

    #@109
    new-instance v17, Landroid/os/Bundle;

    #@10b
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@10e
    .line 2680
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    #@111
    move-object/from16 v0, v17

    #@113
    move/from16 v1, v25

    #@115
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@118
    .line 2681
    const-string/jumbo v4, "callerPid"

    #@11b
    move-object/from16 v0, v17

    #@11d
    move/from16 v1, v23

    #@11f
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@122
    .line 2684
    const-string/jumbo v4, "androidPackageName"

    #@125
    move-object/from16 v0, p6

    #@127
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@12a
    move-result-object v19

    #@12b
    .line 2685
    .local v19, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    #@12c
    new-array v4, v4, [Ljava/lang/String;

    #@12e
    .line 2686
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    #@131
    const/4 v6, 0x0

    #@132
    aput-object v5, v4, v6

    #@134
    .line 2685
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, v19

    #@138
    move/from16 v2, v25

    #@13a
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@13d
    move-result v14

    #@13e
    .line 2688
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@141
    move-result-wide v20

    #@142
    .line 2690
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    #@144
    move/from16 v1, v26

    #@146
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@149
    move-result-object v7

    #@14a
    .line 2691
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    #@14d
    move-result-object v4

    #@14e
    .line 2692
    const-string/jumbo v5, "accounts"

    #@151
    .line 2691
    move-object/from16 v0, p0

    #@153
    move/from16 v1, v25

    #@155
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@158
    .line 2693
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$9;

    #@15a
    .line 2698
    const/4 v11, 0x0

    #@15b
    .line 2699
    const/4 v12, 0x0

    #@15c
    .line 2700
    const/4 v13, 0x1

    #@15d
    move-object/from16 v5, p0

    #@15f
    move-object/from16 v6, p0

    #@161
    move-object/from16 v8, p1

    #@163
    move-object/from16 v9, p2

    #@165
    move/from16 v10, p5

    #@167
    move-object/from16 v15, p3

    #@169
    move-object/from16 v16, p4

    #@16b
    move-object/from16 v18, p2

    #@16d
    .line 2693
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@170
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@173
    .line 2717
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@176
    .line 2630
    return-void

    #@177
    .line 2679
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    #@179
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@17a
    .line 2716
    .restart local v14    # "isPasswordForwardingAllowed":Z
    .restart local v19    # "callerPkg":Ljava/lang/String;
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@17b
    .line 2717
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@17e
    .line 2716
    throw v4

    #@17f
    .line 2672
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    .end local v23    # "pid":I
    :catch_0
    move-exception v24

    #@180
    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@182
    .line 2663
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    #@183
    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3076
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p5

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3077
    const-string/jumbo v4, "AccountManagerService"

    #@9
    const/4 v5, 0x2

    #@a
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 3078
    const-string/jumbo v4, "AccountManagerService"

    #@13
    .line 3079
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "startUpdateCredentialsSession: "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, ", response "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 3080
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 3080
    const-string/jumbo v6, ", expectActivityLaunch "

    #@42
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    move/from16 v0, p4

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 3081
    const-string/jumbo v6, ", caller\'s uid "

    #@4f
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 3081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@56
    move-result v6

    #@57
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 3082
    const-string/jumbo v6, ", pid "

    #@5e
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 3082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@65
    move-result v6

    #@66
    .line 3079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .line 3078
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 3084
    :cond_0
    if-nez p1, :cond_1

    #@73
    .line 3085
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@75
    const-string/jumbo v5, "response is null"

    #@78
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 3087
    :cond_1
    if-nez p2, :cond_2

    #@7e
    .line 3088
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v5, "account is null"

    #@83
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v4

    #@87
    .line 3091
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8a
    move-result v22

    #@8b
    .line 3093
    .local v22, "uid":I
    move-object/from16 v0, p0

    #@8d
    move/from16 v1, v22

    #@8f
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@92
    move-result v4

    #@93
    if-nez v4, :cond_3

    #@95
    .line 3095
    const-string/jumbo v4, "uid %s cannot start update credentials session."

    #@98
    .line 3094
    const/4 v5, 0x1

    #@99
    new-array v5, v5, [Ljava/lang/Object;

    #@9b
    .line 3096
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v6

    #@9f
    const/4 v8, 0x0

    #@a0
    aput-object v6, v5, v8

    #@a2
    .line 3094
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a5
    move-result-object v19

    #@a6
    .line 3097
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@a8
    move-object/from16 v0, v19

    #@aa
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v4

    #@ae
    .line 3100
    .end local v19    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b1
    move-result v23

    #@b2
    .line 3103
    .local v23, "userId":I
    const-string/jumbo v4, "androidPackageName"

    #@b5
    move-object/from16 v0, p5

    #@b7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v18

    #@bb
    .line 3104
    .local v18, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    #@bc
    new-array v4, v4, [Ljava/lang/String;

    #@be
    .line 3105
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    #@c1
    const/4 v6, 0x0

    #@c2
    aput-object v5, v4, v6

    #@c4
    .line 3104
    move-object/from16 v0, p0

    #@c6
    move-object/from16 v1, v18

    #@c8
    move/from16 v2, v22

    #@ca
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@cd
    move-result v14

    #@ce
    .line 3107
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@d1
    move-result-wide v20

    #@d2
    .line 3109
    .local v20, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@d4
    move/from16 v1, v23

    #@d6
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@d9
    move-result-object v7

    #@da
    .line 3110
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$13;

    #@dc
    .line 3113
    move-object/from16 v0, p2

    #@de
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e0
    .line 3115
    move-object/from16 v0, p2

    #@e2
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@e4
    .line 3116
    const/4 v12, 0x0

    #@e5
    .line 3117
    const/4 v13, 0x1

    #@e6
    move-object/from16 v5, p0

    #@e8
    move-object/from16 v6, p0

    #@ea
    move-object/from16 v8, p1

    #@ec
    move/from16 v10, p4

    #@ee
    move-object/from16 v15, p2

    #@f0
    move-object/from16 v16, p3

    #@f2
    move-object/from16 v17, p5

    #@f4
    .line 3110
    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f7
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fa
    .line 3137
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@fd
    .line 3075
    return-void

    #@fe
    .line 3136
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    #@ff
    .line 3137
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@102
    .line 3136
    throw v4
.end method

.method public systemReady()V
    .locals 0

    #@0
    .prologue
    .line 396
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
    .line 5227
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 5229
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 5230
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    #@d
    throw v1

    #@e
    .line 5233
    :cond_0
    if-eqz p4, :cond_1

    #@10
    .line 5234
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@13
    .line 5226
    :goto_0
    return-void

    #@14
    .line 5236
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
    .line 3033
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p5

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3034
    const-string/jumbo v2, "AccountManagerService"

    #@9
    const/4 v3, 0x2

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 3035
    const-string/jumbo v2, "AccountManagerService"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "updateCredentials: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 3036
    const-string/jumbo v4, ", response "

    #@28
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 3037
    const-string/jumbo v4, ", authTokenType "

    #@35
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 3038
    const-string/jumbo v4, ", expectActivityLaunch "

    #@42
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    move/from16 v0, p4

    #@48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 3039
    const-string/jumbo v4, ", caller\'s uid "

    #@4f
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 3039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@56
    move-result v4

    #@57
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 3040
    const-string/jumbo v4, ", pid "

    #@5e
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 3040
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@65
    move-result v4

    #@66
    .line 3035
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 3042
    :cond_0
    if-nez p1, :cond_1

    #@73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@75
    const-string/jumbo v3, "response is null"

    #@78
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v2

    #@7c
    .line 3043
    :cond_1
    if-nez p2, :cond_2

    #@7e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v3, "account is null"

    #@83
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v2

    #@87
    .line 3044
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8a
    move-result v18

    #@8b
    .line 3045
    .local v18, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8e
    move-result-wide v16

    #@8f
    .line 3047
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@91
    move/from16 v1, v18

    #@93
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@96
    move-result-object v5

    #@97
    .line 3048
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$12;

    #@99
    move-object/from16 v0, p2

    #@9b
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@9d
    .line 3049
    move-object/from16 v0, p2

    #@9f
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a1
    const/4 v9, 0x1

    #@a2
    .line 3050
    const/4 v11, 0x0

    #@a3
    const/4 v12, 0x1

    #@a4
    move-object/from16 v3, p0

    #@a6
    move-object/from16 v4, p0

    #@a8
    move-object/from16 v6, p1

    #@aa
    move/from16 v8, p4

    #@ac
    move-object/from16 v13, p2

    #@ae
    move-object/from16 v14, p3

    #@b0
    move-object/from16 v15, p5

    #@b2
    .line 3048
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b5
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b8
    .line 3065
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@bb
    .line 3032
    return-void

    #@bc
    .line 3064
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@bd
    .line 3065
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 3064
    throw v2
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 410
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
    .line 5477
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
    .line 5478
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 5479
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 5480
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 5482
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 5483
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 5476
    :goto_0
    return-void

    #@1d
    .line 5485
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
    .line 5451
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
    .line 5452
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 5453
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 5454
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 5456
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 5457
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 5450
    :goto_0
    return-void

    #@1d
    .line 5459
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0
.end method

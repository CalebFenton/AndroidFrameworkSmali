.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
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

.field static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

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

.field private static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x1

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

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

.field static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field static final TABLE_GRANTS:Ljava/lang/String; = "grants"

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

.field private final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

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
.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 5656
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 5698
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/content/Context;I)Ljava/util/HashMap;
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

.method static synthetic -wrap11(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
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

.method static synthetic -wrap14(Ljava/io/File;)V
    .locals 0
    .param p0, "dbFile"    # Ljava/io/File;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
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

.method static synthetic -wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
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

.method static synthetic -wrap2(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
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

.method static synthetic -wrap4(Lcom/android/server/accounts/AccountManagerService;I)Z
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

.method static synthetic -wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
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

.method static synthetic -wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
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

.method static synthetic -wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
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

.method static synthetic -wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
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
    .line 231
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
    .line 230
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@11
    .line 235
    new-instance v0, Landroid/content/Intent;

    #@13
    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    #@16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1b
    .line 236
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@1d
    const/high16 v1, 0x4000000

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@22
    .line 257
    new-array v0, v4, [Ljava/lang/String;

    #@24
    const-string/jumbo v1, "type"

    #@27
    aput-object v1, v0, v2

    #@29
    .line 258
    const-string/jumbo v1, "authtoken"

    #@2c
    aput-object v1, v0, v3

    #@2e
    .line 257
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@30
    .line 262
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
    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@43
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@45
    .line 326
    new-array v0, v2, [Landroid/accounts/Account;

    #@47
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@49
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 339
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
    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "authenticatorCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 342
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    #@5
    .line 269
    new-instance v0, Ljava/util/LinkedHashMap;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@c
    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 320
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@1a
    .line 321
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@21
    .line 323
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@28
    .line 344
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2a
    .line 345
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2c
    .line 346
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2e
    const-class v1, Landroid/app/AppOpsManager;

    #@30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/app/AppOpsManager;

    #@36
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@38
    .line 348
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@3a
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    #@45
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@47
    .line 350
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@49
    .line 351
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@4b
    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    #@4e
    .line 353
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    #@50
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@53
    .line 355
    new-instance v6, Landroid/content/IntentFilter;

    #@55
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@58
    .line 356
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@5b
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5e
    .line 357
    const-string/jumbo v0, "package"

    #@61
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@64
    .line 358
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@66
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    #@68
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@6b
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@6e
    .line 384
    new-instance v3, Landroid/content/IntentFilter;

    #@70
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@73
    .line 385
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@76
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@79
    .line 386
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@7b
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    #@7d
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@80
    .line 394
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@82
    move-object v5, v4

    #@83
    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@86
    .line 396
    const-class v0, Landroid/accounts/AccountManagerInternal;

    #@88
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    #@8a
    invoke-direct {v1, p0, v4}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;)V

    #@8d
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@90
    .line 399
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$3;

    #@92
    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@95
    .line 411
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@97
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@99
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    #@9c
    move-result-object v2

    #@9d
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9f
    .line 399
    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@a2
    .line 414
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@a4
    .line 415
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$4;

    #@a6
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@a9
    .line 414
    const/16 v2, 0x3e

    #@ab
    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    #@ae
    .line 438
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@b0
    .line 439
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;

    #@b2
    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    #@b5
    .line 438
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    #@b8
    .line 343
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
    .line 2196
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@3
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 2197
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@d
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [Landroid/accounts/Account;

    #@15
    array-length v4, v1

    #@16
    move v2, v3

    #@17
    :goto_0
    if-ge v2, v4, :cond_1

    #@19
    aget-object v0, v1, v2

    #@1b
    .line 2198
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1d
    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 2199
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 2197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2203
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
    .line 1290
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 1291
    if-nez p2, :cond_0

    #@8
    .line 1292
    const/4 v2, 0x0

    #@9
    return v2

    #@a
    .line 1294
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

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
    .line 1295
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
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@35
    move-result v9

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 1296
    const-string/jumbo v9, " is locked. callingUid="

    #@3d
    .line 1295
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
    .line 1297
    const/4 v2, 0x0

    #@4f
    return v2

    #@50
    .line 1299
    :cond_1
    move-object/from16 v0, p1

    #@52
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@54
    move-object/from16 v20, v0

    #@56
    monitor-enter v20

    #@57
    .line 1300
    :try_start_0
    move-object/from16 v0, p1

    #@59
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@5b
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@5e
    move-result-object v3

    #@5f
    .line 1301
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@62
    .line 1304
    :try_start_1
    const-string/jumbo v2, "select count(*) from ceDb.accounts WHERE name=? AND type=?"

    #@65
    .line 1306
    const/4 v8, 0x2

    #@66
    new-array v8, v8, [Ljava/lang/String;

    #@68
    move-object/from16 v0, p2

    #@6a
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6c
    const/4 v10, 0x0

    #@6d
    aput-object v9, v8, v10

    #@6f
    move-object/from16 v0, p2

    #@71
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@73
    const/4 v10, 0x1

    #@74
    aput-object v9, v8, v10

    #@76
    .line 1303
    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@79
    move-result-wide v18

    #@7a
    .line 1307
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    #@7c
    cmp-long v2, v18, v8

    #@7e
    if-lez v2, :cond_2

    #@80
    .line 1308
    const-string/jumbo v2, "AccountManagerService"

    #@83
    new-instance v8, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    .line 1309
    const-string/jumbo v9, ", skipping since the account already exists"

    #@98
    .line 1308
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    .line 1351
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@a6
    .line 1310
    const/4 v2, 0x0

    #@a7
    monitor-exit v20

    #@a8
    return v2

    #@a9
    .line 1312
    :cond_2
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    #@ab
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@ae
    .line 1313
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    #@b1
    move-object/from16 v0, p2

    #@b3
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b5
    move-object/from16 v0, v17

    #@b7
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ba
    .line 1314
    const-string/jumbo v2, "type"

    #@bd
    move-object/from16 v0, p2

    #@bf
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@c1
    move-object/from16 v0, v17

    #@c3
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c6
    .line 1315
    const-string/jumbo v2, "password"

    #@c9
    move-object/from16 v0, v17

    #@cb
    move-object/from16 v1, p3

    #@cd
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d0
    .line 1316
    const-string/jumbo v2, "ceDb.accounts"

    #@d3
    const-string/jumbo v8, "name"

    #@d6
    move-object/from16 v0, v17

    #@d8
    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@db
    move-result-wide v4

    #@dc
    .line 1317
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    #@de
    cmp-long v2, v4, v8

    #@e0
    if-gez v2, :cond_3

    #@e2
    .line 1318
    const-string/jumbo v2, "AccountManagerService"

    #@e5
    new-instance v8, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@ed
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v8

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v8

    #@f7
    .line 1319
    const-string/jumbo v9, ", skipping the DB insert failed"

    #@fa
    .line 1318
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v8

    #@fe
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v8

    #@102
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@105
    .line 1351
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@108
    .line 1320
    const/4 v2, 0x0

    #@109
    monitor-exit v20

    #@10a
    return v2

    #@10b
    .line 1323
    :cond_3
    :try_start_5
    new-instance v17, Landroid/content/ContentValues;

    #@10d
    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@110
    .line 1324
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    #@113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@116
    move-result-object v8

    #@117
    move-object/from16 v0, v17

    #@119
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@11c
    .line 1325
    const-string/jumbo v2, "name"

    #@11f
    move-object/from16 v0, p2

    #@121
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@123
    move-object/from16 v0, v17

    #@125
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@128
    .line 1326
    const-string/jumbo v2, "type"

    #@12b
    move-object/from16 v0, p2

    #@12d
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@12f
    move-object/from16 v0, v17

    #@131
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    .line 1327
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    #@137
    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13a
    move-result-wide v8

    #@13b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13e
    move-result-object v8

    #@13f
    .line 1327
    move-object/from16 v0, v17

    #@141
    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@144
    .line 1329
    const-string/jumbo v2, "accounts"

    #@147
    const-string/jumbo v8, "name"

    #@14a
    move-object/from16 v0, v17

    #@14c
    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@14f
    move-result-wide v8

    #@150
    const-wide/16 v10, 0x0

    #@152
    cmp-long v2, v8, v10

    #@154
    if-gez v2, :cond_4

    #@156
    .line 1330
    const-string/jumbo v2, "AccountManagerService"

    #@159
    new-instance v8, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@161
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v8

    #@165
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v8

    #@16b
    .line 1331
    const-string/jumbo v9, ", skipping the DB insert failed"

    #@16e
    .line 1330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v8

    #@172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v8

    #@176
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@179
    .line 1351
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@17c
    .line 1332
    const/4 v2, 0x0

    #@17d
    monitor-exit v20

    #@17e
    return v2

    #@17f
    .line 1334
    :cond_4
    if-eqz p4, :cond_6

    #@181
    .line 1335
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@184
    move-result-object v2

    #@185
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@188
    move-result-object v16

    #@189
    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@18c
    move-result v2

    #@18d
    if-eqz v2, :cond_6

    #@18f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@192
    move-result-object v6

    #@193
    check-cast v6, Ljava/lang/String;

    #@195
    .line 1336
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    #@197
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19a
    move-result-object v7

    #@19b
    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    #@19d
    .line 1337
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    #@1a0
    move-result-wide v8

    #@1a1
    const-wide/16 v10, 0x0

    #@1a3
    cmp-long v2, v8, v10

    #@1a5
    if-gez v2, :cond_5

    #@1a7
    .line 1338
    const-string/jumbo v2, "AccountManagerService"

    #@1aa
    new-instance v8, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    const-string/jumbo v9, "insertAccountIntoDatabase: "

    #@1b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v8

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v8

    #@1bc
    .line 1339
    const-string/jumbo v9, ", skipping since insertExtra failed for key "

    #@1bf
    .line 1338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v8

    #@1c3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v8

    #@1c7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v8

    #@1cb
    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1ce
    .line 1351
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1d1
    .line 1340
    const/4 v2, 0x0

    #@1d2
    monitor-exit v20

    #@1d3
    return v2

    #@1d4
    .line 1344
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@1d7
    .line 1346
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    #@1da
    move-result-object v10

    #@1db
    const-string/jumbo v11, "accounts"

    #@1de
    move-object/from16 v8, p0

    #@1e0
    move-object v9, v3

    #@1e1
    move-wide v12, v4

    #@1e2
    move-object/from16 v14, p1

    #@1e4
    move/from16 v15, p5

    #@1e6
    invoke-direct/range {v8 .. v15}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@1e9
    .line 1349
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1ec
    .line 1351
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1ef
    monitor-exit v20

    #@1f0
    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1f3
    move-result-object v2

    #@1f4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1f7
    move-result v8

    #@1f8
    invoke-virtual {v2, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1fb
    move-result-object v2

    #@1fc
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    #@1ff
    move-result v2

    #@200
    if-eqz v2, :cond_7

    #@202
    .line 1355
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@205
    move-result v2

    #@206
    move-object/from16 v0, p0

    #@208
    move-object/from16 v1, p2

    #@20a
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    #@20d
    .line 1359
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@210
    move-result v2

    #@211
    move-object/from16 v0, p0

    #@213
    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@216
    .line 1360
    const/4 v2, 0x1

    #@217
    return v2

    #@218
    .line 1350
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_0
    move-exception v2

    #@219
    .line 1351
    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@21c
    .line 1350
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@21d
    .line 1299
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    #@21e
    monitor-exit v20

    #@21f
    throw v2
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    #@0
    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 1377
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
    .line 1378
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
    .line 1379
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@24
    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@27
    .line 1380
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 1381
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@31
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@33
    .line 1382
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@35
    const/4 v6, 0x4

    #@36
    .line 1381
    invoke-virtual {v4, v6, p2, v5, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 1375
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
    .line 3863
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 3864
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 3865
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 3866
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    #@12
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 3867
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@18
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 3868
    const-string/jumbo v0, "type"

    #@20
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@22
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 3869
    const-string/jumbo v0, "shared_accounts"

    #@28
    const-string/jumbo v2, "name=? AND type=?"

    #@2b
    .line 3870
    const/4 v3, 0x2

    #@2c
    new-array v3, v3, [Ljava/lang/String;

    #@2e
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@30
    aput-object v8, v3, v9

    #@32
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@34
    aput-object v8, v3, v10

    #@36
    .line 3869
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@39
    .line 3871
    const-string/jumbo v0, "shared_accounts"

    #@3c
    const-string/jumbo v2, "name"

    #@3f
    invoke-virtual {v1, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@42
    move-result-wide v4

    #@43
    .line 3872
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    #@45
    cmp-long v0, v4, v2

    #@47
    if-gez v0, :cond_0

    #@49
    .line 3873
    const-string/jumbo v0, "AccountManagerService"

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "insertAccountIntoDatabase: "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 3874
    const-string/jumbo v3, ", skipping the DB insert failed"

    #@5f
    .line 3873
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 3875
    return v9

    #@6b
    .line 3877
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    const-string/jumbo v3, "shared_accounts"

    #@72
    move-object v0, p0

    #@73
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@76
    .line 3878
    return v10
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2535
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    #@4
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@7
    move-result-object v0

    #@8
    .line 2536
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@a
    .line 2537
    const/16 v7, 0x40

    #@c
    .line 2536
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v2

    #@10
    .line 2538
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
    .line 2539
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
    .line 2538
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2544
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    #@23
    .line 2545
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
    .line 2546
    const/4 v0, 0x0

    #@3e
    .line 2548
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@40
    :goto_2
    return-object v5

    #@41
    .line 2541
    :catch_1
    move-exception v4

    #@42
    .line 2542
    .local v4, "x":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "AccountManagerService"

    #@45
    const-string/jumbo v7, "SHA-256 should be available"

    #@48
    invoke-static {v6, v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 2543
    const/4 v0, 0x0

    #@4c
    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_1

    #@4d
    .line 2548
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
    .line 1608
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 1609
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
    .line 5566
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5567
    return v2

    #@8
    .line 5569
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
    .line 5570
    const-string/jumbo v1, "no_modify_accounts"

    #@18
    .line 5569
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 5571
    const/4 v0, 0x0

    #@1f
    return v0

    #@20
    .line 5573
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
    .line 5578
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 5579
    return v7

    #@9
    .line 5581
    :cond_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@b
    .line 5582
    const-string/jumbo v5, "device_policy"

    #@e
    .line 5581
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@14
    .line 5583
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 5584
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_1

    #@1a
    .line 5585
    return v7

    #@1b
    .line 5587
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
    .line 5588
    .local v1, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 5589
    return v4

    #@28
    .line 5587
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 5592
    .end local v1    # "forbiddenType":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    #@0
    .prologue
    .line 474
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v2

    #@4
    const-string/jumbo v3, "android"

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@b
    move-result-object v1

    #@c
    .line 475
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    #@d
    array-length v3, v1

    #@e
    :goto_0
    if-ge v2, v3, :cond_0

    #@10
    aget-object v0, v1, v2

    #@12
    .line 476
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    #@15
    .line 475
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 473
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "checkAccess"    # Z

    #@0
    .prologue
    .line 501
    if-eqz p4, :cond_0

    #@2
    .line 502
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    #@5
    move-result-object v0

    #@6
    .line 501
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 504
    :cond_0
    const-string/jumbo v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@f
    .line 503
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v0

    #@17
    .line 505
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    #@1a
    move-result-object v1

    #@1b
    .line 503
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    #@1e
    .line 500
    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    #@0
    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 491
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    .line 492
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-object v0, v1, v2

    #@e
    .line 493
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    #@11
    .line 492
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 489
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    #@0
    .prologue
    .line 482
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v2

    #@4
    const-string/jumbo v3, "android"

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@b
    move-result-object v1

    #@c
    .line 483
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    #@d
    array-length v3, v1

    #@e
    :goto_0
    if-ge v2, v3, :cond_0

    #@10
    aget-object v0, v1, v2

    #@12
    .line 484
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    #@15
    .line 483
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 481
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
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
    .line 5478
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    #@5
    .line 5479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 5478
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 5480
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    #@12
    .line 5481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v1

    #@16
    .line 5480
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 5482
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
    .line 5477
    :cond_0
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5471
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
    .line 5470
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 5473
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
    .line 5469
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
    .line 5554
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 5556
    const-string/jumbo v1, "caller uid %s cannot access %s accounts"

    #@9
    .line 5555
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    .line 5557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    .line 5558
    const/4 v3, 0x1

    #@14
    aput-object p2, v2, v3

    #@16
    .line 5555
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 5559
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
    .line 5560
    new-instance v1, Ljava/lang/SecurityException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 5553
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5
    move-result-wide v2

    #@6
    .line 3494
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@9
    move-result-object v4

    #@a
    .line 3495
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v4, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_0

    #@10
    .line 3504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 3496
    return v6

    #@14
    .line 3498
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 3499
    .local v1, "opCode":I
    const/4 v7, -0x1

    #@19
    if-eq v1, v7, :cond_1

    #@1b
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@1d
    invoke-virtual {v7, v1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v7

    #@21
    if-nez v7, :cond_2

    #@23
    .line 3504
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 3499
    return v5

    #@27
    :cond_2
    move v5, v6

    #@28
    goto :goto_0

    #@29
    .line 3501
    .end local v1    # "opCode":I
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    #@2a
    .line 3504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 3506
    return v6

    #@2e
    .line 3503
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@2f
    .line 3504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3503
    throw v5
.end method

.method private compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 4645
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
    .line 4646
    const-string/jumbo v2, " VALUES (?,?,?,?,?,?)"

    #@17
    .line 4645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 4647
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@22
    move-result-object v1

    #@23
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    #@26
    .line 4644
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
    .line 1238
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p2

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 1239
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@9
    move-result-wide v16

    #@a
    .line 1241
    .local v16, "id":J
    :try_start_0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$6;

    #@c
    move-object/from16 v0, p3

    #@e
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@10
    .line 1242
    move-object/from16 v0, p3

    #@12
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@14
    .line 1241
    const/4 v8, 0x0

    #@15
    .line 1242
    const/4 v9, 0x0

    #@16
    .line 1243
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
    .line 1241
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    #@28
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 1284
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2e
    .line 1237
    return-void

    #@2f
    .line 1283
    :catchall_0
    move-exception v2

    #@30
    .line 1284
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@33
    .line 1283
    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 2554
    const-string/jumbo v2, "uid"

    #@3
    const/4 v3, -0x1

    #@4
    .line 2553
    move-object/from16 v0, p2

    #@6
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v15

    #@a
    .line 2556
    .local v15, "uid":I
    const-string/jumbo v2, "authTokenType"

    #@d
    .line 2555
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 2558
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@17
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 2559
    move-object/from16 v0, p1

    #@1c
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1e
    const/4 v5, 0x0

    #@1f
    aput-object v4, v3, v5

    #@21
    .line 2558
    const v4, 0x104046c

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    .line 2560
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    #@2a
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v10

    #@2e
    .line 2561
    .local v10, "index":I
    move-object v13, v14

    #@2f
    .line 2562
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@32
    .line 2563
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_0

    #@34
    .line 2564
    const/4 v2, 0x0

    #@35
    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    .line 2565
    add-int/lit8 v2, v10, 0x1

    #@3b
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    .line 2567
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    #@41
    move/from16 v0, p4

    #@43
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@46
    .line 2568
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@4b
    move-result-object v9

    #@4c
    .line 2569
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    #@4e
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@51
    .line 2570
    const v3, 0x108008a

    #@54
    .line 2569
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@57
    move-result-object v2

    #@58
    .line 2571
    const-wide/16 v4, 0x0

    #@5a
    .line 2569
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@5d
    move-result-object v2

    #@5e
    .line 2573
    const v3, 0x106005b

    #@61
    .line 2572
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    #@64
    move-result v3

    #@65
    .line 2569
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
    .line 2576
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@75
    const/4 v3, 0x0

    #@76
    .line 2577
    const/high16 v5, 0x10000000

    #@78
    const/4 v6, 0x0

    #@79
    move-object/from16 v4, p2

    #@7b
    .line 2576
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@7e
    move-result-object v2

    #@7f
    .line 2569
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
    .line 2579
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
    .line 2580
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    #@98
    move-result v3

    #@99
    .line 2579
    move-object/from16 v0, p0

    #@9b
    move-object/from16 v1, p3

    #@9d
    invoke-direct {v0, v2, v11, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    #@a0
    .line 2552
    return-void
.end method

.method private static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .locals 3
    .param p0, "dbFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 857
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 858
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
    .line 856
    :cond_0
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 19
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 5242
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v14

    #@4
    .line 5244
    .local v14, "identityToken":J
    :try_start_0
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
    .line 5245
    const-string/jumbo v6, "AccountManagerService"

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "doNotification: "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    move-object/from16 v0, p3

    #@1f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    const-string/jumbo v8, " intent:"

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 5248
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3a
    move-result-object v6

    #@3b
    if-eqz v6, :cond_1

    #@3d
    .line 5249
    const-class v6, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@3f
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 5250
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    .line 5249
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v6

    #@4f
    .line 5248
    if-eqz v6, :cond_1

    #@51
    .line 5251
    move-object/from16 v0, p0

    #@53
    move-object/from16 v1, p2

    #@55
    move-object/from16 v2, p4

    #@57
    move-object/from16 v3, p5

    #@59
    move/from16 v4, p6

    #@5b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 5273
    :goto_0
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@61
    .line 5241
    return-void

    #@62
    .line 5253
    :cond_1
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    #@64
    move/from16 v0, p6

    #@66
    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    #@6e
    move-result-object v12

    #@6f
    .line 5254
    .local v12, "contextForUser":Landroid/content/Context;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@72
    move-result-object v16

    #@73
    .line 5255
    .local v16, "notificationId":Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    move-object/from16 v0, p4

    #@79
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@7c
    .line 5258
    const v6, 0x1040105

    #@7f
    invoke-virtual {v12, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@82
    move-result-object v6

    #@83
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@86
    move-result-object v17

    #@87
    .line 5259
    .local v17, "notificationTitleFormat":Ljava/lang/String;
    new-instance v6, Landroid/app/Notification$Builder;

    #@89
    invoke-direct {v6, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8c
    .line 5260
    const-wide/16 v8, 0x0

    #@8e
    .line 5259
    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@91
    move-result-object v6

    #@92
    .line 5261
    const v7, 0x108008a

    #@95
    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@98
    move-result-object v6

    #@99
    .line 5263
    const v7, 0x106005b

    #@9c
    .line 5262
    invoke-virtual {v12, v7}, Landroid/content/Context;->getColor(I)I

    #@9f
    move-result v7

    #@a0
    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a3
    move-result-object v6

    #@a4
    .line 5264
    const/4 v7, 0x1

    #@a5
    new-array v7, v7, [Ljava/lang/Object;

    #@a7
    move-object/from16 v0, p2

    #@a9
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@ab
    const/4 v9, 0x0

    #@ac
    aput-object v8, v7, v9

    #@ae
    move-object/from16 v0, v17

    #@b0
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@b7
    move-result-object v6

    #@b8
    move-object/from16 v0, p3

    #@ba
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@bd
    move-result-object v18

    #@be
    .line 5267
    move-object/from16 v0, p0

    #@c0
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@c2
    .line 5268
    new-instance v11, Landroid/os/UserHandle;

    #@c4
    move/from16 v0, p6

    #@c6
    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@c9
    .line 5267
    const/4 v7, 0x0

    #@ca
    const/high16 v9, 0x10000000

    #@cc
    .line 5268
    const/4 v10, 0x0

    #@cd
    move-object/from16 v8, p4

    #@cf
    .line 5266
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@d2
    move-result-object v6

    #@d3
    .line 5259
    move-object/from16 v0, v18

    #@d5
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@dc
    move-result-object v13

    #@dd
    .line 5270
    .local v13, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    #@e0
    move-result v6

    #@e1
    move-object/from16 v0, p0

    #@e3
    move-object/from16 v1, p5

    #@e5
    move/from16 v2, p6

    #@e7
    invoke-direct {v0, v6, v13, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ea
    goto/16 :goto_0

    #@ec
    .line 5272
    .end local v12    # "contextForUser":Landroid/content/Context;
    .end local v13    # "n":Landroid/app/Notification;
    .end local v16    # "notificationId":Ljava/lang/Integer;
    .end local v17    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@ed
    .line 5273
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@f0
    .line 5272
    throw v6
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
    .line 5183
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@4
    move-object/from16 v19, v0

    #@6
    monitor-enter v19

    #@7
    .line 5184
    :try_start_0
    move-object/from16 v0, p1

    #@9
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@b
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@e
    move-result-object v4

    #@f
    .line 5186
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_3

    #@11
    .line 5188
    const-string/jumbo v5, "accounts"

    #@14
    sget-object v6, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    #@16
    .line 5189
    const-string/jumbo v9, "type"

    #@19
    const/4 v7, 0x0

    #@1a
    const/4 v8, 0x0

    #@1b
    const/4 v10, 0x0

    #@1c
    const/4 v11, 0x0

    #@1d
    .line 5188
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@20
    move-result-object v14

    #@21
    .line 5191
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 5193
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const/4 v6, 0x0

    #@2d
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    const-string/jumbo v6, ","

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    const/4 v6, 0x1

    #@3d
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    move-object/from16 v0, p3

    #@4b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 5195
    :catchall_0
    move-exception v5

    #@50
    .line 5196
    if-eqz v14, :cond_0

    #@52
    .line 5197
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@55
    .line 5195
    :cond_0
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    .line 5183
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    #@57
    monitor-exit v19

    #@58
    throw v5

    #@59
    .line 5196
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    #@5b
    .line 5197
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5e
    :cond_2
    :goto_1
    monitor-exit v19

    #@5f
    .line 5182
    return-void

    #@60
    .line 5202
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@63
    move-result v5

    #@64
    .line 5201
    const/4 v6, 0x0

    #@65
    .line 5202
    const/4 v7, 0x0

    #@66
    .line 5201
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, p1

    #@6a
    invoke-virtual {v0, v1, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@6d
    move-result-object v13

    #@6e
    .line 5203
    .local v13, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v6, "Accounts: "

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    array-length v6, v13

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 5204
    const/4 v5, 0x0

    #@89
    array-length v6, v13

    #@8a
    :goto_2
    if-ge v5, v6, :cond_4

    #@8c
    aget-object v12, v13, v5

    #@8e
    .line 5205
    .local v12, "account":Landroid/accounts/Account;
    new-instance v7, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v8, "  "

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    move-object/from16 v0, p3

    #@a4
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 5204
    add-int/lit8 v5, v5, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 5209
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@ad
    .line 5210
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    .line 5211
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@b4
    move-result-object v11

    #@b5
    .line 5210
    const/4 v6, 0x0

    #@b6
    .line 5211
    const/4 v7, 0x0

    #@b7
    const/4 v8, 0x0

    #@b8
    const/4 v9, 0x0

    #@b9
    const/4 v10, 0x0

    #@ba
    .line 5210
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@bd
    move-result-object v14

    #@be
    .line 5212
    .restart local v14    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    #@c1
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 5213
    const-string/jumbo v5, "Accounts History"

    #@c9
    move-object/from16 v0, p3

    #@cb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ce
    .line 5215
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@d1
    move-result v5

    #@d2
    if-eqz v5, :cond_5

    #@d4
    .line 5217
    new-instance v5, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const/4 v6, 0x0

    #@da
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    const-string/jumbo v6, ","

    #@e5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    const/4 v6, 0x1

    #@ea
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@ed
    move-result-object v6

    #@ee
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v5

    #@f2
    const-string/jumbo v6, ","

    #@f5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v5

    #@f9
    .line 5218
    const/4 v6, 0x2

    #@fa
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v5

    #@102
    .line 5218
    const-string/jumbo v6, ","

    #@105
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v5

    #@109
    .line 5218
    const/4 v6, 0x3

    #@10a
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v5

    #@112
    .line 5218
    const-string/jumbo v6, ","

    #@115
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    .line 5219
    const/4 v6, 0x4

    #@11a
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@11d
    move-result-object v6

    #@11e
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    .line 5219
    const-string/jumbo v6, ","

    #@125
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v5

    #@129
    .line 5219
    const/4 v6, 0x5

    #@12a
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@12d
    move-result-object v6

    #@12e
    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v5

    #@132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v5

    #@136
    move-object/from16 v0, p3

    #@138
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@13b
    goto :goto_3

    #@13c
    .line 5221
    :catchall_2
    move-exception v5

    #@13d
    .line 5222
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@140
    .line 5221
    throw v5

    #@141
    .line 5222
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@144
    .line 5225
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@147
    .line 5226
    move-object/from16 v0, p0

    #@149
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@14b
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@14c
    .line 5227
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14f
    move-result-wide v16

    #@150
    .line 5228
    .local v16, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v7, "Active Sessions: "

    #@158
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v5

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@160
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    #@163
    move-result v7

    #@164
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@167
    move-result-object v5

    #@168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v5

    #@16c
    move-object/from16 v0, p3

    #@16e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@171
    .line 5229
    move-object/from16 v0, p0

    #@173
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    #@175
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@178
    move-result-object v5

    #@179
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17c
    move-result-object v18

    #@17d
    .local v18, "session$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@180
    move-result v5

    #@181
    if-eqz v5, :cond_6

    #@183
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@186
    move-result-object v15

    #@187
    check-cast v15, Lcom/android/server/accounts/AccountManagerService$Session;

    #@189
    .line 5230
    .local v15, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v5, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v7, "  "

    #@191
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v5

    #@195
    invoke-virtual/range {v15 .. v17}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    #@198
    move-result-object v7

    #@199
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v5

    #@19d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v5

    #@1a1
    move-object/from16 v0, p3

    #@1a3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@1a6
    goto :goto_4

    #@1a7
    .line 5226
    .end local v15    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    .end local v16    # "now":J
    .end local v18    # "session$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    #@1a8
    :try_start_8
    monitor-exit v6

    #@1a9
    throw v5

    #@1aa
    .restart local v16    # "now":J
    .restart local v18    # "session$iterator":Ljava/util/Iterator;
    :cond_6
    monitor-exit v6

    #@1ab
    .line 5234
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    #@1ae
    .line 5235
    move-object/from16 v0, p0

    #@1b0
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@1b2
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1b5
    move-result v6

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    move-object/from16 v1, p3

    #@1ba
    move-object/from16 v2, p4

    #@1bc
    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1bf
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
    .line 5750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v15

    #@4
    if-eqz v15, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    .line 5752
    :cond_0
    return-object p2

    #@9
    .line 5750
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@c
    move-result v15

    #@d
    if-ltz v15, :cond_0

    #@f
    .line 5751
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v15

    #@13
    move/from16 v0, p3

    #@15
    if-eq v0, v15, :cond_0

    #@17
    .line 5754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@1a
    move-result-object v15

    #@1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1e
    move-result v16

    #@1f
    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@22
    move-result-object v13

    #@23
    .line 5755
    .local v13, "user":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_e

    #@25
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@28
    move-result v15

    #@29
    if-eqz v15, :cond_e

    #@2b
    .line 5756
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
    .line 5760
    .local v8, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@37
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v15

    #@3d
    .line 5761
    const v16, 0x1040063

    #@40
    .line 5760
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    .line 5762
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
    .line 5763
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
    .line 5764
    return-object p2

    #@74
    .line 5762
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@76
    goto :goto_0

    #@77
    .line 5767
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    #@79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@7c
    .line 5768
    .local v3, "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@7f
    move-result v15

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@85
    move-result-object v12

    #@86
    .line 5769
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
    .line 5770
    :cond_5
    const-string/jumbo v10, ""

    #@8f
    .line 5774
    .local v10, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_8

    #@91
    .line 5775
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
    .line 5776
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_6

    #@a1
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@a3
    if-eqz v15, :cond_6

    #@a5
    .line 5777
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 5791
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
    .line 5792
    .local v2, "account":Landroid/accounts/Account;
    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b9
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_a

    #@bf
    .line 5793
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 5791
    :cond_7
    :goto_3
    add-int/lit8 v15, v16, 0x1

    #@c4
    move/from16 v16, v15

    #@c6
    goto :goto_2

    #@c7
    .line 5781
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
    .line 5782
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
    .line 5783
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_9

    #@e3
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@e5
    move-object/from16 v17, v0

    #@e7
    if-eqz v17, :cond_9

    #@e9
    .line 5784
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    goto :goto_1

    #@ec
    .line 5781
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@ee
    goto :goto_4

    #@ef
    .line 5795
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_a
    const/4 v5, 0x0

    #@f0
    .line 5796
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
    .line 5797
    .local v11, "shared":Landroid/accounts/Account;
    invoke-virtual {v11, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v19

    #@fe
    if-eqz v19, :cond_c

    #@100
    .line 5798
    const/4 v5, 0x1

    #@101
    .line 5802
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_b
    if-nez v5, :cond_7

    #@103
    .line 5803
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@106
    goto :goto_3

    #@107
    .line 5796
    .restart local v11    # "shared":Landroid/accounts/Account;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    #@109
    goto :goto_5

    #@10a
    .line 5807
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
    .line 5808
    .local v4, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@113
    .line 5809
    return-object v4

    #@114
    .line 5811
    .end local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "filtered":[Landroid/accounts/Account;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "requiredAccountType":Ljava/lang/String;
    .end local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v14    # "whiteList":Ljava/lang/String;
    :cond_e
    return-object p2

    #@115
    .line 5789
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
    .line 4043
    const-string/jumbo v1, "shared_accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 4044
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
    .line 4043
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 4046
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 4047
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 4047
    return-wide v0

    #@31
    .line 4049
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 4049
    return-wide v0

    #@37
    .line 4050
    :catchall_0
    move-exception v0

    #@38
    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 4050
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
    .line 4056
    const-string/jumbo v1, "accounts"

    #@6
    new-array v2, v7, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 4057
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
    .line 4056
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 4059
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 4060
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-wide v0

    #@2d
    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@30
    .line 4060
    return-wide v0

    #@31
    .line 4062
    :cond_0
    const-wide/16 v0, -0x1

    #@33
    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@36
    .line 4062
    return-wide v0

    #@37
    .line 4063
    :catchall_0
    move-exception v0

    #@38
    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3b
    .line 4063
    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    #@0
    .prologue
    .line 3752
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v3

    #@4
    .line 3753
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
    .line 3754
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@d
    move-result-object v4

    #@e
    .line 3755
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v4, :cond_0

    #@10
    .line 3753
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 3756
    :cond_0
    iget-object v8, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@15
    monitor-enter v8

    #@16
    .line 3758
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@19
    move-result v9

    #@1a
    .line 3757
    const/4 v10, 0x0

    #@1b
    .line 3758
    const/4 v11, 0x0

    #@1c
    .line 3757
    invoke-virtual {p0, v4, v10, v9, v11}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1f
    move-result-object v1

    #@20
    .line 3759
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    #@21
    .local v0, "a":I
    :goto_2
    array-length v9, v1

    #@22
    if-ge v0, v9, :cond_1

    #@24
    .line 3760
    new-instance v9, Landroid/accounts/AccountAndUser;

    #@26
    aget-object v10, v1, v0

    #@28
    invoke-direct {v9, v10, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@2b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 3759
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_2

    #@31
    :cond_1
    monitor-exit v8

    #@32
    goto :goto_1

    #@33
    .line 3756
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    #@34
    monitor-exit v8

    #@35
    throw v6

    #@36
    .line 3765
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v6

    #@3a
    new-array v2, v6, [Landroid/accounts/AccountAndUser;

    #@3c
    .line 3766
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, [Landroid/accounts/AccountAndUser;

    #@42
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
    .line 3782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 3784
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v5

    #@9
    if-eq p2, v5, :cond_0

    #@b
    .line 3785
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@e
    move-result v5

    #@f
    if-eq v1, v5, :cond_0

    #@11
    .line 3786
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@13
    .line 3787
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@16
    .line 3786
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 3789
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
    .line 3790
    const-string/jumbo v7, " trying to get account for "

    #@35
    .line 3789
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
    .line 3793
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
    .line 3794
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
    .line 3795
    const-string/jumbo v7, ", caller\'s uid "

    #@65
    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 3795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6c
    move-result v7

    #@6d
    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 3796
    const-string/jumbo v7, ", pid "

    #@74
    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    .line 3796
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7b
    move-result v7

    #@7c
    .line 3794
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
    .line 3800
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
    .line 3801
    move v1, p4

    #@95
    .line 3802
    move-object p5, p3

    #@96
    .line 3805
    :cond_2
    invoke-direct {p0, v1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@99
    move-result-object v4

    #@9a
    .line 3807
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@9d
    move-result v5

    #@9e
    if-nez v5, :cond_5

    #@a0
    .line 3808
    if-eqz p1, :cond_3

    #@a2
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a5
    move-result v5

    #@a6
    if-eqz v5, :cond_5

    #@a8
    .line 3810
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_4

    #@ae
    .line 3812
    new-instance v4, Ljava/util/ArrayList;

    #@b0
    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@b3
    .line 3813
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    .line 3817
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@b9
    move-result-wide v2

    #@ba
    .line 3819
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@bd
    move-result-object v0

    #@be
    .line 3820
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c1
    move-result-object v5

    #@c2
    .line 3826
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c5
    .line 3820
    return-object v5

    #@c6
    .line 3809
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_5
    new-array v5, v8, [Landroid/accounts/Account;

    #@c8
    return-object v5

    #@c9
    .line 3825
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v5

    #@ca
    .line 3826
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cd
    .line 3825
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
    .line 3836
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 3837
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3838
    .local v3, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v5

    #@c
    .local v5, "visibleType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/lang/String;

    #@18
    .line 3839
    .local v4, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1b
    move-result-object v0

    #@1c
    .line 3841
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@1e
    .line 3842
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 3836
    .end local v0    # "accountsForType":[Landroid/accounts/Account;
    .end local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "visibleType":Ljava/lang/String;
    .end local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@27
    monitor-exit v7

    #@28
    throw v6

    #@29
    .line 3845
    .restart local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v6

    #@2d
    new-array v2, v6, [Landroid/accounts/Account;

    #@2f
    .line 3846
    .local v2, "result":[Landroid/accounts/Account;
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v6

    #@34
    if-ge v1, v6, :cond_2

    #@36
    .line 3847
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Landroid/accounts/Account;

    #@3c
    aput-object v6, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 3846
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_1

    #@41
    :cond_2
    monitor-exit v7

    #@42
    .line 3849
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
    .line 727
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    #@5
    .line 728
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
    .line 734
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 735
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
    .line 737
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
    .line 739
    .end local v1    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1063
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@2
    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    #@5
    .line 1065
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@7
    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    .line 1067
    .local v2, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@e
    move-result v5

    #@f
    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    #@11
    .line 1068
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    #@12
    .line 1069
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "authenticator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@22
    .line 1071
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@24
    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    #@26
    aput-object v5, v4, v3

    #@28
    .line 1072
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1074
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5956
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
    .line 5957
    :catch_0
    move-exception v0

    #@f
    .line 5959
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
    .line 2608
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v3

    #@4
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v0

    #@8
    .line 2609
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@b
    move-result-object v4

    #@c
    monitor-enter v4

    #@d
    .line 2611
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    #@f
    .line 2612
    new-instance v3, Landroid/util/Pair;

    #@11
    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    .line 2611
    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1b
    .line 2613
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Integer;

    #@25
    .line 2614
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@27
    .line 2615
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
    .line 2616
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

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
    .line 2619
    return-object v1

    #@3a
    .line 2609
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
    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4663
    const-string/jumbo v2, "SELECT "

    #@8
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 4663
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 4664
    const-string/jumbo v2, " FROM "

    #@17
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 4664
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 4665
    const-string/jumbo v2, " ORDER BY "

    #@26
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 4666
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 4666
    const-string/jumbo v2, ","

    #@35
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 4666
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 4667
    const-string/jumbo v2, " LIMIT 1"

    #@44
    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 4669
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
    .line 4651
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
    .line 4652
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
    .line 4069
    const-string/jumbo v1, "ceDb.extras"

    #@6
    new-array v2, v4, [Ljava/lang/String;

    #@8
    const-string/jumbo v0, "_id"

    #@b
    aput-object v0, v2, v6

    #@d
    .line 4070
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
    .line 4071
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
    .line 4069
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@40
    move-result-object v8

    #@41
    .line 4073
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_0

    #@47
    .line 4074
    const/4 v0, 0x0

    #@48
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-wide v0

    #@4c
    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4f
    .line 4074
    return-wide v0

    #@50
    .line 4076
    :cond_0
    const-wide/16 v0, -0x1

    #@52
    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@55
    .line 4076
    return-wide v0

    #@56
    .line 4077
    :catchall_0
    move-exception v0

    #@57
    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@5a
    .line 4077
    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 2624
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 2625
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    .line 2626
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@11
    .line 2627
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
    .line 2628
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

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
    .line 2631
    return-object v0

    #@24
    .line 2624
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
    .line 335
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
    .line 5440
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 5441
    .local v2, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 5444
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
    .line 5446
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 5448
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
    .line 5450
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@24
    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@26
    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    #@29
    move-result v6

    #@2a
    .line 5451
    .local v6, "sigChk":I
    if-nez p3, :cond_1

    #@2c
    if-nez v6, :cond_0

    #@2e
    .line 5452
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
    .line 5445
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_0
    move-exception v7

    #@39
    .line 5446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 5445
    throw v7

    #@3d
    .line 5455
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
    .line 5435
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
    .line 5429
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
    .line 5430
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 5429
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 5431
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
    .line 712
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 713
    const/16 v5, 0x2000

    #@4
    .line 712
    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 714
    .local v3, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@a
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    invoke-direct {v0, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@11
    .line 715
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
    .line 716
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 717
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
    .line 718
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
    .line 721
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    #@0
    .prologue
    .line 743
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
    .line 525
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 526
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@c
    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    #@e
    return-object v0
.end method

.method private handleIncomingUser(I)I
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 5336
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
    .line 5335
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 5337
    :catch_0
    move-exception v8

    #@19
    .line 5340
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 3470
    if-nez p2, :cond_1

    #@5
    .line 3471
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 3472
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 3473
    return v3

    #@12
    .line 3477
    :cond_0
    aget-object p2, v0, v3

    #@14
    .line 3482
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@17
    move-result v2

    #@18
    invoke-direct {p0, p1, v4, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 3483
    return v1

    #@1f
    .line 3487
    :cond_2
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    #@22
    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_3

    #@28
    .line 3488
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    #@2b
    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    .line 3487
    :cond_3
    return v1
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 5489
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v6

    #@6
    const/16 v7, 0x3e8

    #@8
    if-ne v6, v7, :cond_0

    #@a
    .line 5490
    return v5

    #@b
    .line 5492
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@e
    move-result v6

    #@f
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@12
    move-result-object v0

    #@13
    .line 5493
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@15
    monitor-enter v6

    #@16
    .line 5494
    :try_start_0
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@18
    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v2

    #@1c
    .line 5499
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_2

    #@1e
    .line 5500
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    #@21
    .line 5501
    .local v4, "query":Ljava/lang/String;
    const/4 v7, 0x4

    #@22
    new-array v1, v7, [Ljava/lang/String;

    #@24
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    const/4 v8, 0x0

    #@29
    aput-object v7, v1, v8

    #@2b
    const/4 v7, 0x1

    #@2c
    aput-object p2, v1, v7

    #@2e
    .line 5502
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@30
    const/4 v8, 0x2

    #@31
    aput-object v7, v1, v8

    #@33
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@35
    const/4 v8, 0x3

    #@36
    aput-object v7, v1, v8

    #@38
    .line 5508
    .local v1, "args":[Ljava/lang/String;
    :goto_0
    invoke-static {v2, v4, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    #@3b
    move-result-wide v8

    #@3c
    const-wide/16 v10, 0x0

    #@3e
    cmp-long v7, v8, v10

    #@40
    if-eqz v7, :cond_1

    #@42
    move v3, v5

    #@43
    .line 5509
    .local v3, "permissionGranted":Z
    :cond_1
    if-nez v3, :cond_3

    #@45
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_3

    #@4b
    .line 5512
    const-string/jumbo v7, "AccountManagerService"

    #@4e
    new-instance v8, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v9, "no credentials permission for usage of "

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    const-string/jumbo v9, ", "

    #@61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    .line 5513
    const-string/jumbo v9, " by uid "

    #@6c
    .line 5512
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    .line 5514
    const-string/jumbo v9, " but ignoring since device is in test harness."

    #@77
    .line 5512
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v8

    #@7f
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    monitor-exit v6

    #@83
    .line 5515
    return v5

    #@84
    .line 5504
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    #@87
    .line 5505
    .restart local v4    # "query":Ljava/lang/String;
    const/4 v7, 0x3

    #@88
    new-array v1, v7, [Ljava/lang/String;

    #@8a
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    const/4 v8, 0x0

    #@8f
    aput-object v7, v1, v8

    #@91
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@93
    const/4 v8, 0x1

    #@94
    aput-object v7, v1, v8

    #@96
    .line 5506
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@98
    const/4 v8, 0x2

    #@99
    aput-object v7, v1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9b
    .line 5505
    .restart local v1    # "args":[Ljava/lang/String;
    goto :goto_0

    #@9c
    .restart local v3    # "permissionGranted":Z
    :cond_3
    monitor-exit v6

    #@9d
    .line 5517
    return v3

    #@9e
    .line 5493
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@9f
    monitor-exit v6

    #@a0
    throw v5
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 4634
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    #@3
    move-result-wide v2

    #@4
    long-to-int v0, v2

    #@5
    .line 4635
    .local v0, "size":I
    const/16 v1, 0x40

    #@7
    if-lt v0, v1, :cond_0

    #@9
    .line 4637
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    #@c
    move-result-wide v2

    #@d
    long-to-int v1, v2

    #@e
    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@11
    .line 4641
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@14
    .line 4632
    return-void

    #@15
    .line 4639
    :cond_0
    invoke-static {p2, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@18
    goto :goto_0
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5735
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@3
    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/accounts/Account;

    #@b
    .line 5736
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    #@d
    array-length v2, v0

    #@e
    .line 5737
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    #@10
    new-array v1, v5, [Landroid/accounts/Account;

    #@12
    .line 5738
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    #@14
    .line 5739
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 5741
    :cond_0
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 5743
    .local v3, "token":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/accounts/Account;

    #@23
    invoke-direct {v4, p2, v3}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    #@26
    aput-object v4, v1, v2

    #@28
    .line 5744
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@2a
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2c
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 5745
    aget-object v4, v1, v2

    #@31
    return-object v4

    #@32
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    move v2, v4

    #@33
    .line 5736
    goto :goto_0

    #@34
    .line 5742
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .restart local v2    # "oldLength":I
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .restart local v3    # "token":Ljava/lang/String;
    goto :goto_1
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1389
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 1390
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    #@8
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1391
    const-string/jumbo v1, "accounts_id"

    #@e
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@15
    .line 1392
    const-string/jumbo v1, "value"

    #@18
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 1393
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

.method private installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    .locals 12
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 5285
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 5287
    .local v10, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v0

    #@8
    .line 5290
    .local v0, "notificationManager":Landroid/app/INotificationManager;
    const/4 v1, 0x1

    #@9
    :try_start_1
    new-array v6, v1, [I

    #@b
    .line 5289
    const/4 v3, 0x0

    #@c
    move-object v1, p3

    #@d
    move-object v2, p3

    #@e
    move v4, p1

    #@f
    move-object v5, p2

    #@10
    move/from16 v7, p4

    #@12
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 5295
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 5284
    return-void

    #@19
    .line 5294
    .end local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catchall_0
    move-exception v1

    #@1a
    .line 5295
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 5294
    throw v1

    #@1e
    .line 5291
    .restart local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catch_0
    move-exception v8

    #@1f
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 1916
    if-eqz p4, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 1917
    :cond_0
    return-void

    #@8
    .line 1920
    :cond_1
    const-string/jumbo v0, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    #@b
    .line 1929
    new-array v1, v1, [Ljava/lang/String;

    #@d
    aput-object p4, v1, v2

    #@f
    aput-object p3, v1, v3

    #@11
    .line 1919
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@14
    move-result-object v7

    #@15
    .line 1931
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1932
    const/4 v0, 0x0

    #@1c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    #@1f
    move-result-wide v8

    #@20
    .line 1933
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    #@21
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 1934
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    #@26
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 1935
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
    .line 1939
    new-instance v3, Landroid/accounts/Account;

    #@47
    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 1941
    const/4 v5, 0x0

    #@4b
    move-object v0, p0

    #@4c
    move-object v1, p1

    #@4d
    move-object v2, p2

    #@4e
    .line 1936
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1943
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_0
    move-exception v0

    #@53
    .line 1944
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@56
    .line 1943
    throw v0

    #@57
    .line 1944
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@5a
    .line 1915
    return-void
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1907
    if-eqz p3, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1908
    :cond_0
    return-void

    #@5
    .line 1911
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1906
    return-void
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 5419
    if-nez p1, :cond_0

    #@2
    .line 5420
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 5422
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
    .line 5459
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@4
    move-result-object v1

    #@5
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 5460
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@10
    move-result-object v1

    #@11
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 5461
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_0

    #@27
    .line 5462
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 5460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 5466
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
    .line 5410
    if-nez p1, :cond_0

    #@2
    .line 5411
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 5413
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
    .line 1078
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v1

    #@5
    if-eq p2, v1, :cond_0

    #@7
    .line 1079
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@a
    move-result v1

    #@b
    if-eq p1, v1, :cond_0

    #@d
    .line 1080
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@f
    .line 1081
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@12
    .line 1080
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 1078
    :cond_0
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1364
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1365
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
    .line 1364
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
    .line 5318
    array-length v4, p3

    #@2
    move v2, v3

    #@3
    :goto_0
    if-ge v2, v4, :cond_3

    #@5
    aget-object v1, p3, v2

    #@7
    .line 5319
    .local v1, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v5, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_2

    #@f
    .line 5320
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
    .line 5321
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
    .line 5323
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@41
    move-result v0

    #@42
    .line 5324
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
    .line 5326
    :cond_1
    const/4 v2, 0x1

    #@4e
    return v2

    #@4f
    .line 5318
    .end local v0    # "opCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 5330
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
    .line 5344
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@4
    move-result v0

    #@5
    .line 5348
    .local v0, "callingUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@7
    .line 5349
    const-string/jumbo v8, "android"

    #@a
    new-instance v9, Landroid/os/UserHandle;

    #@c
    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    const/4 v10, 0x0

    #@10
    .line 5348
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
    .line 5354
    .local v5, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 5355
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
    .line 5357
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    #@23
    :try_start_1
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@26
    move-result-object v3

    #@27
    .line 5358
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    #@29
    .line 5359
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
    .line 5361
    const/4 v6, 0x1

    #@32
    return v6

    #@33
    .line 5350
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    #@34
    .line 5351
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@35
    .line 5363
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    #@36
    .line 5364
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    #@37
    .line 5355
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 5367
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
    .line 5597
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    #@8
    .line 5598
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 5599
    const/4 v1, -0x1

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@e
    move-result v1

    #@f
    .line 5598
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
    .line 5522
    const/4 v5, 0x0

    #@3
    .line 5523
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 5525
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
    .line 5527
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 5529
    if-eqz v5, :cond_1

    #@12
    .line 5530
    array-length v8, v5

    #@13
    move v6, v7

    #@14
    :goto_0
    if-ge v6, v8, :cond_2

    #@16
    aget-object v1, v5, v6

    #@18
    .line 5532
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
    .line 5533
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    #@21
    .line 5534
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
    .line 5536
    return v12

    #@2a
    .line 5526
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v5, "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@2b
    .line 5527
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 5526
    throw v6

    #@2f
    .line 5538
    .restart local v1    # "name":Ljava/lang/String;
    .local v5, "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@30
    .line 5539
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
    .line 5530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 5543
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
    .line 5545
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
    .line 4606
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
    .line 4605
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
    .line 4614
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    .line 4615
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@8
    .line 4616
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@c
    .line 4617
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
    .line 4618
    int-to-long v2, p7

    #@1e
    const/4 v1, 0x4

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@22
    .line 4619
    const/4 v1, 0x5

    #@23
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    #@26
    .line 4620
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@29
    move-result v1

    #@2a
    int-to-long v2, v1

    #@2b
    const/4 v1, 0x6

    #@2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@2f
    .line 4621
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    #@32
    .line 4622
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    #@35
    .line 4623
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@38
    move-result v1

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    rem-int/lit8 v1, v1, 0x40

    #@3d
    invoke-static {p6, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    #@40
    .line 4613
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4592
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v1

    #@6
    .line 4593
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    #@8
    move-object v0, p0

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v6, p1

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@f
    .line 4591
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
    .line 4597
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v1

    #@6
    .line 4598
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    #@8
    move-object v0, p0

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v6, p1

    #@c
    move v7, p4

    #@d
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@10
    .line 4596
    return-void
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    #@0
    .prologue
    .line 2587
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 2589
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    #@b
    .line 2593
    const/high16 v1, 0x10000000

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@10
    .line 2595
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 2596
    if-eqz p2, :cond_1

    #@1f
    .line 2595
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    .line 2597
    const-string/jumbo v1, "account"

    #@31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 2598
    const-string/jumbo v1, "authTokenType"

    #@37
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3a
    .line 2599
    const-string/jumbo v1, "response"

    #@3d
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@40
    .line 2600
    const-string/jumbo v1, "uid"

    #@43
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@46
    .line 2602
    return-object v0

    #@47
    .line 2596
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, ""

    #@4a
    goto :goto_0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    #@0
    .prologue
    .line 3548
    new-instance v7, Landroid/accounts/AccountAuthenticatorResponse;

    #@2
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move v3, p3

    #@7
    move-object v4, p2

    #@8
    move-object v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    #@c
    invoke-direct {v7, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    #@f
    .line 3574
    const-string/jumbo v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@12
    const/4 v6, 0x0

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move v3, p3

    #@17
    move-object v4, v7

    #@18
    .line 3547
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    #@1b
    move-result-object v0

    #@1c
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
    .line 2239
    if-nez p2, :cond_0

    #@3
    .line 2240
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
    .line 2242
    :cond_0
    const-string/jumbo v1, "AccountManagerService"

    #@14
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2243
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
    .line 2247
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 2238
    :cond_2
    :goto_0
    return-void

    #@44
    .line 2248
    :catch_0
    move-exception v0

    #@45
    .line 2251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    #@48
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 2252
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
    .line 826
    const-string/jumbo v6, "android.intent.extra.user_handle"

    #@3
    const/4 v7, -0x1

    #@4
    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v4

    #@8
    .line 827
    .local v4, "userId":I
    const/4 v6, 0x1

    #@9
    if-ge v4, v6, :cond_0

    #@b
    return-void

    #@c
    .line 831
    :cond_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@e
    monitor-enter v7

    #@f
    .line 832
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@17
    .line 833
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    #@1c
    .line 834
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@1e
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@21
    move-result v5

    #@22
    .line 835
    .local v5, "userUnlocked":Z
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@24
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v7

    #@28
    .line 837
    if-eqz v0, :cond_1

    #@2a
    .line 838
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2c
    monitor-enter v7

    #@2d
    .line 839
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2f
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    monitor-exit v7

    #@33
    .line 842
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    #@36
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "Removing database files for user "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 843
    new-instance v2, Ljava/io/File;

    #@4f
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@56
    .line 845
    .local v2, "dbFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    #@59
    .line 847
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@5c
    move-result v3

    #@5d
    .line 848
    .local v3, "fbeEnabled":Z
    if-eqz v3, :cond_2

    #@5f
    if-eqz v5, :cond_3

    #@61
    .line 849
    :cond_2
    new-instance v1, Ljava/io/File;

    #@63
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6a
    .line 850
    .local v1, "ceDb":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_3

    #@70
    .line 851
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    #@73
    .line 825
    .end local v1    # "ceDb":Ljava/io/File;
    :cond_3
    return-void

    #@74
    .line 831
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v3    # "fbeEnabled":Z
    .end local v5    # "userUnlocked":Z
    :catchall_0
    move-exception v6

    #@75
    monitor-exit v7

    #@76
    throw v6

    #@77
    .line 838
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userUnlocked":Z
    :catchall_1
    move-exception v6

    #@78
    monitor-exit v7

    #@79
    throw v6
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x2

    #@2
    .line 5372
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x3e8

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 5373
    const-string/jumbo v0, "AccountManagerService"

    #@d
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 5374
    const-string/jumbo v0, "AccountManagerService"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Access to "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " granted calling uid is system"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 5376
    :cond_0
    return v3

    #@35
    .line 5379
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 5380
    const-string/jumbo v0, "AccountManagerService"

    #@3e
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 5381
    const-string/jumbo v0, "AccountManagerService"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "Access to "

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, " granted calling uid "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 5382
    const-string/jumbo v2, " privileged"

    #@65
    .line 5381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 5384
    :cond_2
    return v3

    #@71
    .line 5386
    :cond_3
    if-eqz p1, :cond_5

    #@73
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@75
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_5

    #@7b
    .line 5387
    const-string/jumbo v0, "AccountManagerService"

    #@7e
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 5388
    const-string/jumbo v0, "AccountManagerService"

    #@87
    new-instance v1, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v2, "Access to "

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    const-string/jumbo v2, " granted calling uid "

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 5389
    const-string/jumbo v2, " manages the account"

    #@a5
    .line 5388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 5391
    :cond_4
    return v3

    #@b1
    .line 5393
    :cond_5
    if-eqz p1, :cond_7

    #@b3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@b6
    move-result v0

    #@b7
    if-eqz v0, :cond_7

    #@b9
    .line 5394
    const-string/jumbo v0, "AccountManagerService"

    #@bc
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_6

    #@c2
    .line 5395
    const-string/jumbo v0, "AccountManagerService"

    #@c5
    new-instance v1, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v2, "Access to "

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v1

    #@d5
    const-string/jumbo v2, " granted calling uid "

    #@d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    .line 5396
    const-string/jumbo v2, " user granted access"

    #@e3
    .line 5395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    .line 5398
    :cond_6
    return v3

    #@ef
    .line 5401
    :cond_7
    const-string/jumbo v0, "AccountManagerService"

    #@f2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@f5
    move-result v0

    #@f6
    if-eqz v0, :cond_8

    #@f8
    .line 5402
    const-string/jumbo v0, "AccountManagerService"

    #@fb
    new-instance v1, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v2, "Access to "

    #@103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    const-string/jumbo v2, " not granted for uid "

    #@10e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v1

    #@112
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v1

    #@116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v1

    #@11a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 5405
    :cond_8
    const/4 v0, 0x0

    #@11e
    return v0
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@0
    .prologue
    .line 802
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 803
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@5
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v0

    #@9
    .line 804
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    #@c
    .line 805
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/String;

    #@f
    const-string/jumbo v3, "uid"

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    .line 806
    const-string/jumbo v5, "uid"

    #@18
    const/4 v3, 0x0

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v6, 0x0

    #@1b
    const/4 v7, 0x0

    #@1c
    .line 804
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    move-result-object v8

    #@20
    .line 808
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 809
    const/4 v1, 0x0

    #@27
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    #@2a
    move-result v10

    #@2b
    .line 810
    .local v10, "uid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2d
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    if-eqz v1, :cond_1

    #@33
    const/4 v9, 0x1

    #@34
    .line 811
    .local v9, "packageExists":Z
    :goto_1
    if-nez v9, :cond_0

    #@36
    .line 814
    const-string/jumbo v1, "AccountManagerService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "deleting grants for UID "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 815
    const-string/jumbo v3, " because its package is no longer installed"

    #@4c
    .line 814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 816
    const-string/jumbo v1, "grants"

    #@5a
    const-string/jumbo v2, "uid=?"

    #@5d
    .line 817
    const/4 v3, 0x1

    #@5e
    new-array v3, v3, [Ljava/lang/String;

    #@60
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    const/4 v5, 0x0

    #@65
    aput-object v4, v3, v5

    #@67
    .line 816
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 819
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_0
    move-exception v1

    #@6c
    .line 820
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6f
    .line 819
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    .line 802
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    #@71
    monitor-exit v11

    #@72
    throw v1

    #@73
    .line 810
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    #@74
    .restart local v9    # "packageExists":Z
    goto :goto_1

    #@75
    .line 820
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@78
    monitor-exit v11

    #@79
    .line 801
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    #@0
    .prologue
    .line 794
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 795
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
    .line 796
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
    .line 795
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 793
    return-void

    #@1c
    .line 794
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
    .line 929
    if-nez p2, :cond_0

    #@3
    .line 930
    return-object v4

    #@4
    .line 932
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 933
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
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

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
    .line 934
    return-object v4

    #@34
    .line 937
    :cond_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@36
    monitor-enter v2

    #@37
    .line 938
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@39
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@3c
    move-result-object v0

    #@3d
    .line 939
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@3f
    .line 940
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@41
    .line 939
    invoke-static {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findAccountPasswordByNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    move-result-object v1

    #@45
    monitor-exit v2

    #@46
    return-object v1

    #@47
    .line 937
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 963
    if-nez p2, :cond_0

    #@2
    .line 964
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 966
    :cond_0
    iget-object v12, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@6
    monitor-enter v12

    #@7
    .line 967
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v10

    #@f
    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    #@11
    .line 968
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    #@13
    .line 969
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@15
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@18
    move-result-object v0

    #@19
    .line 971
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    #@1c
    .line 972
    const/4 v2, 0x1

    #@1d
    new-array v2, v2, [Ljava/lang/String;

    #@1f
    const-string/jumbo v3, "previous_name"

    #@22
    const/4 v4, 0x0

    #@23
    aput-object v3, v2, v4

    #@25
    .line 973
    const-string/jumbo v3, "name=? AND type=?"

    #@28
    .line 974
    const/4 v4, 0x2

    #@29
    new-array v4, v4, [Ljava/lang/String;

    #@2b
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2d
    const/4 v6, 0x0

    #@2e
    aput-object v5, v4, v6

    #@30
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@32
    const/4 v6, 0x1

    #@33
    aput-object v5, v4, v6

    #@35
    .line 975
    const/4 v5, 0x0

    #@36
    .line 976
    const/4 v6, 0x0

    #@37
    .line 977
    const/4 v7, 0x0

    #@38
    .line 970
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3b
    move-result-object v8

    #@3c
    .line 979
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 980
    const/4 v1, 0x0

    #@43
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    .line 981
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    #@49
    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 982
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local v11, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@53
    .line 988
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@56
    monitor-exit v12

    #@57
    .line 983
    return-object v9

    #@58
    .line 988
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5b
    .line 985
    const/4 v1, 0x0

    #@5c
    monitor-exit v12

    #@5d
    return-object v1

    #@5e
    .line 987
    :catchall_0
    move-exception v1

    #@5f
    .line 988
    :goto_0
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@62
    .line 987
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@63
    .line 966
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    #@64
    monitor-exit v12

    #@65
    throw v1

    #@66
    .line 991
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6c
    monitor-exit v12

    #@6d
    return-object v1

    #@6e
    .line 987
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "previousName":Ljava/lang/String;
    .restart local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    #@6f
    move-object v10, v11

    #@70
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
    .line 5707
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@2
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, [Landroid/accounts/Account;

    #@a
    .line 5708
    .local v3, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_2

    #@c
    .line 5709
    new-instance v2, Ljava/util/ArrayList;

    #@e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 5710
    .local v2, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v4, 0x0

    #@12
    array-length v5, v3

    #@13
    :goto_0
    if-ge v4, v5, :cond_1

    #@15
    aget-object v0, v3, v4

    #@17
    .line 5711
    .local v0, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 5712
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 5710
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 5715
    .end local v0    # "curAccount":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3

    #@29
    .line 5716
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@2b
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2d
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 5723
    .end local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 5724
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 5725
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 5706
    return-void

    #@46
    .line 5718
    .restart local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v4

    #@4a
    new-array v1, v4, [Landroid/accounts/Account;

    #@4c
    .line 5719
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v1, [Landroid/accounts/Account;

    #@52
    .line 5720
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@54
    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@56
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_1
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    .line 1797
    const/4 v11, 0x0

    #@1
    .line 1798
    .local v11, "isChanged":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@4
    move-result v4

    #@5
    move-object/from16 v0, p0

    #@7
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@a
    move-result v20

    #@b
    .line 1799
    .local v20, "userUnlocked":Z
    if-nez v20, :cond_0

    #@d
    .line 1800
    const-string/jumbo v4, "AccountManagerService"

    #@10
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v10, "Removing account "

    #@18
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    move-object/from16 v0, p2

    #@1e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    const-string/jumbo v10, " while user "

    #@25
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@2c
    move-result v10

    #@2d
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    .line 1801
    const-string/jumbo v10, " is still locked. CE data will be removed later"

    #@34
    .line 1800
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1803
    :cond_0
    move-object/from16 v0, p1

    #@41
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@43
    move-object/from16 v22, v0

    #@45
    monitor-enter v22

    #@46
    .line 1804
    if-eqz v20, :cond_5

    #@48
    .line 1805
    :try_start_0
    move-object/from16 v0, p1

    #@4a
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@4c
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@4f
    move-result-object v5

    #@50
    .line 1807
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@53
    .line 1810
    const-wide/16 v8, -0x1

    #@55
    .line 1812
    .local v8, "accountId":J
    :try_start_1
    move-object/from16 v0, p0

    #@57
    move-object/from16 v1, p2

    #@59
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@5c
    move-result-wide v8

    #@5d
    .line 1813
    const-wide/16 v24, 0x0

    #@5f
    cmp-long v4, v8, v24

    #@61
    if-ltz v4, :cond_2

    #@63
    .line 1815
    const-string/jumbo v4, "accounts"

    #@66
    .line 1816
    const-string/jumbo v7, "name=? AND type=?"

    #@69
    .line 1817
    const/4 v10, 0x2

    #@6a
    new-array v10, v10, [Ljava/lang/String;

    #@6c
    move-object/from16 v0, p2

    #@6e
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@70
    move-object/from16 v23, v0

    #@72
    const/16 v24, 0x0

    #@74
    aput-object v23, v10, v24

    #@76
    move-object/from16 v0, p2

    #@78
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7a
    move-object/from16 v23, v0

    #@7c
    const/16 v24, 0x1

    #@7e
    aput-object v23, v10, v24

    #@80
    .line 1814
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@83
    .line 1818
    if-eqz v20, :cond_1

    #@85
    .line 1821
    const-string/jumbo v4, "ceDb.accounts"

    #@88
    .line 1822
    const-string/jumbo v7, "name=? AND type=?"

    #@8b
    .line 1823
    const/4 v10, 0x2

    #@8c
    new-array v10, v10, [Ljava/lang/String;

    #@8e
    move-object/from16 v0, p2

    #@90
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@92
    move-object/from16 v23, v0

    #@94
    const/16 v24, 0x0

    #@96
    aput-object v23, v10, v24

    #@98
    move-object/from16 v0, p2

    #@9a
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@9c
    move-object/from16 v23, v0

    #@9e
    const/16 v24, 0x1

    #@a0
    aput-object v23, v10, v24

    #@a2
    .line 1820
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@a5
    .line 1825
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a8
    .line 1826
    const/4 v11, 0x1

    #@a9
    .line 1829
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@ac
    .line 1831
    if-eqz v11, :cond_3

    #@ae
    .line 1832
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@b1
    .line 1834
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@b4
    move-result v4

    #@b5
    move-object/from16 v0, p0

    #@b7
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@ba
    .line 1835
    if-eqz v20, :cond_6

    #@bc
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    #@bf
    move-result-object v6

    #@c0
    .line 1837
    .local v6, "action":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "accounts"

    #@c3
    move-object/from16 v4, p0

    #@c5
    move-object/from16 v10, p1

    #@c7
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@ca
    .end local v6    # "action":Ljava/lang/String;
    :cond_3
    monitor-exit v22

    #@cb
    .line 1840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ce
    move-result-wide v12

    #@cf
    .line 1842
    .local v12, "id":J
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@d2
    move-result v16

    #@d3
    .line 1843
    .local v16, "parentUserId":I
    move-object/from16 v0, p0

    #@d5
    move/from16 v1, v16

    #@d7
    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    #@da
    move-result v4

    #@db
    if-eqz v4, :cond_7

    #@dd
    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@e0
    move-result-object v4

    #@e1
    const/4 v7, 0x1

    #@e2
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@e5
    move-result-object v21

    #@e6
    .line 1846
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e9
    move-result-object v19

    #@ea
    .local v19, "user$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@ed
    move-result v4

    #@ee
    if-eqz v4, :cond_7

    #@f0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f3
    move-result-object v18

    #@f4
    check-cast v18, Landroid/content/pm/UserInfo;

    #@f6
    .line 1847
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@f9
    move-result v4

    #@fa
    if-eqz v4, :cond_4

    #@fc
    move-object/from16 v0, v18

    #@fe
    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@100
    move/from16 v0, v16

    #@102
    if-ne v0, v4, :cond_4

    #@104
    .line 1848
    move-object/from16 v0, v18

    #@106
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@108
    move-object/from16 v0, p0

    #@10a
    move-object/from16 v1, p2

    #@10c
    move/from16 v2, p3

    #@10e
    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@111
    goto :goto_2

    #@112
    .line 1852
    .end local v16    # "parentUserId":I
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    .end local v19    # "user$iterator":Ljava/util/Iterator;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    #@113
    .line 1853
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@116
    .line 1852
    throw v4

    #@117
    .line 1806
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v12    # "id":J
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    #@119
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@11b
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@11e
    move-result-object v5

    #@11f
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_0

    #@121
    .line 1828
    .restart local v8    # "accountId":J
    :catchall_1
    move-exception v4

    #@122
    .line 1829
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@125
    .line 1828
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@126
    .line 1803
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    :catchall_2
    move-exception v4

    #@127
    monitor-exit v22

    #@128
    throw v4

    #@129
    .line 1836
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@12c
    move-result-object v6

    #@12d
    .restart local v6    # "action":Ljava/lang/String;
    goto :goto_1

    #@12e
    .line 1853
    .end local v6    # "action":Ljava/lang/String;
    .restart local v12    # "id":J
    .restart local v16    # "parentUserId":I
    :cond_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@131
    .line 1856
    if-eqz v11, :cond_a

    #@133
    .line 1857
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@136
    move-result-object v7

    #@137
    monitor-enter v7

    #@138
    .line 1859
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13b
    move-result-object v4

    #@13c
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@13f
    move-result-object v4

    #@140
    .line 1858
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@143
    move-result-object v15

    #@144
    .local v15, "key$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@147
    move-result v4

    #@148
    if-eqz v4, :cond_9

    #@14a
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14d
    move-result-object v14

    #@14e
    check-cast v14, Landroid/util/Pair;

    #@150
    .line 1860
    .local v14, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@152
    check-cast v4, Landroid/util/Pair;

    #@154
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@156
    move-object/from16 v0, p2

    #@158
    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v4

    #@15c
    if-eqz v4, :cond_8

    #@15e
    .line 1861
    const-string/jumbo v10, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@161
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@163
    check-cast v4, Landroid/util/Pair;

    #@165
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@167
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16a
    move-result v4

    #@16b
    .line 1860
    if-eqz v4, :cond_8

    #@16d
    .line 1862
    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@16f
    check-cast v4, Ljava/lang/Integer;

    #@171
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@174
    move-result v17

    #@175
    .line 1863
    .local v17, "uid":I
    move-object/from16 v0, p0

    #@177
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@179
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;

    #@17b
    move-object/from16 v0, p0

    #@17d
    move-object/from16 v1, p2

    #@17f
    move/from16 v2, v17

    #@181
    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    #@184
    invoke-virtual {v4, v10}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@187
    goto :goto_3

    #@188
    .line 1857
    .end local v14    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    .end local v17    # "uid":I
    :catchall_3
    move-exception v4

    #@189
    monitor-exit v7

    #@18a
    throw v4

    #@18b
    .restart local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v7

    #@18c
    .line 1870
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    return v11
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
    .line 3910
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@5
    move-result p2

    #@6
    .line 3911
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@9
    move-result-object v6

    #@a
    .line 3912
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@c
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v1

    #@10
    .line 3913
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@13
    move-result-wide v4

    #@14
    .line 3914
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    #@17
    const-string/jumbo v2, "name=? AND type=?"

    #@1a
    .line 3915
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [Ljava/lang/String;

    #@1d
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1f
    aput-object v7, v3, v10

    #@21
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@23
    aput-object v7, v3, v9

    #@25
    .line 3914
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@28
    move-result v8

    #@29
    .line 3916
    .local v8, "r":I
    if-lez v8, :cond_0

    #@2b
    .line 3917
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "shared_accounts"

    #@32
    move-object v0, p0

    #@33
    move v7, p3

    #@34
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@37
    .line 3919
    invoke-direct {p0, v6, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@3a
    .line 3921
    :cond_0
    if-lez v8, :cond_1

    #@3c
    move v0, v9

    #@3d
    :goto_0
    return v0

    #@3e
    :cond_1
    move v0, v10

    #@3f
    goto :goto_0
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 25
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1519
    const/16 v17, 0x0

    #@2
    .line 1530
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v4

    #@a
    .line 1531
    new-instance v6, Landroid/os/UserHandle;

    #@c
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@f
    move-result v7

    #@10
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@13
    .line 1529
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@18
    .line 1532
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1b
    move-result-object v6

    #@1c
    monitor-enter v6

    #@1d
    .line 1534
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@24
    move-result-object v4

    #@25
    .line 1533
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v14

    #@29
    .local v14, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v13

    #@33
    check-cast v13, Landroid/util/Pair;

    #@35
    .line 1535
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

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
    .line 1536
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v12

    #@51
    .line 1537
    .local v12, "id":I
    new-instance v4, Landroid/os/UserHandle;

    #@53
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

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
    .line 1532
    .end local v12    # "id":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v14    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v6

    #@62
    throw v4

    #@63
    .restart local v14    # "pair$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    #@64
    .line 1541
    move-object/from16 v0, p1

    #@66
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@68
    move-object/from16 v24, v0

    #@6a
    monitor-enter v24

    #@6b
    .line 1542
    :try_start_1
    move-object/from16 v0, p1

    #@6d
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@6f
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@72
    move-result-object v5

    #@73
    .line 1543
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@76
    .line 1544
    new-instance v16, Landroid/accounts/Account;

    #@78
    move-object/from16 v0, p2

    #@7a
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7c
    move-object/from16 v0, v16

    #@7e
    move-object/from16 v1, p3

    #@80
    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@83
    .line 1546
    .local v16, "renamedAccount":Landroid/accounts/Account;
    :try_start_2
    move-object/from16 v0, p0

    #@85
    move-object/from16 v1, p2

    #@87
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@8a
    move-result-wide v8

    #@8b
    .line 1547
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    #@8d
    cmp-long v4, v8, v6

    #@8f
    if-ltz v4, :cond_2

    #@91
    .line 1548
    new-instance v23, Landroid/content/ContentValues;

    #@93
    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    #@96
    .line 1549
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    #@99
    move-object/from16 v0, v23

    #@9b
    move-object/from16 v1, p3

    #@9d
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@a0
    .line 1550
    const/4 v4, 0x1

    #@a1
    new-array v11, v4, [Ljava/lang/String;

    #@a3
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    const/4 v6, 0x0

    #@a8
    aput-object v4, v11, v6

    #@aa
    .line 1551
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v4, "ceDb.accounts"

    #@ad
    const-string/jumbo v6, "_id=?"

    #@b0
    move-object/from16 v0, v23

    #@b2
    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@b5
    .line 1553
    const-string/jumbo v4, "previous_name"

    #@b8
    move-object/from16 v0, p2

    #@ba
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@bc
    move-object/from16 v0, v23

    #@be
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@c1
    .line 1554
    const-string/jumbo v4, "accounts"

    #@c4
    const-string/jumbo v6, "_id=?"

    #@c7
    move-object/from16 v0, v23

    #@c9
    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@cc
    .line 1555
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@cf
    .line 1556
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
    .line 1560
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@e0
    .line 1567
    move-object/from16 v0, p0

    #@e2
    move-object/from16 v1, p1

    #@e4
    move-object/from16 v2, v16

    #@e6
    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    #@e9
    move-result-object v16

    #@ea
    .line 1574
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@ed
    move-result-object v4

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    move-result-object v18

    #@f4
    check-cast v18, Ljava/util/HashMap;

    #@f6
    .line 1575
    .local v18, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@f9
    move-result-object v4

    #@fa
    move-object/from16 v0, p2

    #@fc
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    move-result-object v19

    #@100
    check-cast v19, Ljava/util/HashMap;

    #@102
    .line 1576
    .local v19, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    #@105
    .line 1581
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@108
    move-result-object v4

    #@109
    move-object/from16 v0, v16

    #@10b
    move-object/from16 v1, v18

    #@10d
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 1582
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@113
    move-result-object v4

    #@114
    move-object/from16 v0, v16

    #@116
    move-object/from16 v1, v19

    #@118
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    .line 1583
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@11e
    move-result-object v4

    #@11f
    .line 1585
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@121
    move-object/from16 v0, p2

    #@123
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@125
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@128
    .line 1583
    move-object/from16 v0, v16

    #@12a
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 1586
    move-object/from16 v17, v16

    #@12f
    .line 1588
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@132
    move-result v15

    #@133
    .line 1589
    .local v15, "parentUserId":I
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    #@138
    move-result v4

    #@139
    if-eqz v4, :cond_4

    #@13b
    .line 1594
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@13e
    move-result-object v4

    #@13f
    const/4 v6, 0x1

    #@140
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@143
    move-result-object v22

    #@144
    .line 1595
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@147
    move-result-object v21

    #@148
    .local v21, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@14b
    move-result v4

    #@14c
    if-eqz v4, :cond_4

    #@14e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@151
    move-result-object v20

    #@152
    check-cast v20, Landroid/content/pm/UserInfo;

    #@154
    .line 1596
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@157
    move-result v4

    #@158
    if-eqz v4, :cond_3

    #@15a
    .line 1597
    move-object/from16 v0, v20

    #@15c
    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@15e
    if-ne v4, v15, :cond_3

    #@160
    .line 1598
    move-object/from16 v0, v20

    #@162
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, p2

    #@168
    move-object/from16 v2, p3

    #@16a
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16d
    goto :goto_1

    #@16e
    .line 1541
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v15    # "parentUserId":I
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v4

    #@16f
    monitor-exit v24

    #@170
    throw v4

    #@171
    .line 1559
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    .local v17, "resultAccount":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    #@172
    .line 1560
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@175
    .line 1559
    throw v4

    #@176
    .line 1602
    .restart local v8    # "accountId":J
    .restart local v15    # "parentUserId":I
    .local v17, "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@179
    move-result v4

    #@17a
    move-object/from16 v0, p0

    #@17c
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@17f
    monitor-exit v24

    #@180
    .line 1604
    return-object v16
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 5669
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 5670
    :cond_0
    const-string/jumbo v6, "AccountManagerService"

    #@7
    const-string/jumbo v7, "revokeAppPermission: called with invalid arguments"

    #@a
    new-instance v8, Ljava/lang/Exception;

    #@c
    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    #@f
    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 5671
    return-void

    #@13
    .line 5673
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v6

    #@17
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 5674
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@1d
    monitor-enter v7

    #@1e
    .line 5675
    :try_start_0
    iget-object v6, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@20
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@23
    move-result-object v3

    #@24
    .line 5676
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 5678
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2a
    move-result-wide v0

    #@2b
    .line 5679
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    #@2d
    cmp-long v6, v0, v8

    #@2f
    if-ltz v6, :cond_2

    #@31
    .line 5680
    const-string/jumbo v6, "grants"

    #@34
    .line 5681
    const-string/jumbo v8, "accounts_id=? AND auth_token_type=? AND uid=?"

    #@37
    .line 5683
    const/4 v9, 0x3

    #@38
    new-array v9, v9, [Ljava/lang/String;

    #@3a
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3d
    move-result-object v10

    #@3e
    const/4 v11, 0x0

    #@3f
    aput-object v10, v9, v11

    #@41
    const/4 v10, 0x1

    #@42
    aput-object p2, v9, v10

    #@44
    .line 5684
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    const/4 v11, 0x2

    #@49
    aput-object v10, v9, v11

    #@4b
    .line 5680
    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@4e
    .line 5685
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 5688
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@54
    .line 5691
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v6

    #@5c
    .line 5692
    new-instance v8, Landroid/os/UserHandle;

    #@5e
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@61
    move-result v9

    #@62
    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    #@65
    .line 5691
    invoke-virtual {p0, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@68
    monitor-exit v7

    #@69
    .line 5697
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6b
    .line 5696
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v5

    #@6f
    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_3

    #@75
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v4

    #@79
    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    #@7b
    .line 5698
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@7d
    new-instance v7, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    #@7f
    invoke-direct {v7, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    #@82
    invoke-virtual {v6, v7}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    #@85
    goto :goto_0

    #@86
    .line 5687
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@87
    .line 5688
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@8a
    .line 5687
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8b
    .line 5674
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    #@8c
    monitor-exit v7

    #@8d
    throw v6

    #@8e
    .line 5668
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1970
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1971
    :cond_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1973
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    .line 1974
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@15
    move-result-object v1

    #@16
    .line 1973
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@19
    .line 1975
    iget-object v9, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@1b
    monitor-enter v9

    #@1c
    .line 1976
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@21
    move-result-object v2

    #@22
    .line 1977
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    .line 1979
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-wide v6

    #@29
    .line 1980
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    #@2b
    cmp-long v0, v6, v0

    #@2d
    if-gez v0, :cond_2

    #@2f
    .line 1997
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .line 1981
    const/4 v0, 0x0

    #@33
    monitor-exit v9

    #@34
    return v0

    #@35
    .line 1983
    :cond_2
    :try_start_3
    const-string/jumbo v0, "ceDb.authtokens"

    #@38
    .line 1984
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "accounts_id="

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v3, " AND "

    #@4b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v3, "type"

    #@52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v3, "=?"

    #@59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 1985
    const/4 v3, 0x1

    #@62
    new-array v3, v3, [Ljava/lang/String;

    #@64
    const/4 v4, 0x0

    #@65
    aput-object p3, v3, v4

    #@67
    .line 1983
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@6a
    .line 1986
    new-instance v8, Landroid/content/ContentValues;

    #@6c
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    #@6f
    .line 1987
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "accounts_id"

    #@72
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@79
    .line 1988
    const-string/jumbo v0, "type"

    #@7c
    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7f
    .line 1989
    const-string/jumbo v0, "authtoken"

    #@82
    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1990
    const-string/jumbo v0, "ceDb.authtokens"

    #@88
    const-string/jumbo v1, "authtoken"

    #@8b
    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@8e
    move-result-wide v0

    #@8f
    const-wide/16 v4, 0x0

    #@91
    cmp-long v0, v0, v4

    #@93
    if-ltz v0, :cond_3

    #@95
    .line 1991
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@98
    move-object v0, p0

    #@99
    move-object v1, p1

    #@9a
    move-object v3, p2

    #@9b
    move-object v4, p3

    #@9c
    move-object v5, p4

    #@9d
    .line 1992
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    .line 1997
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a3
    .line 1993
    const/4 v0, 0x1

    #@a4
    monitor-exit v9

    #@a5
    return v0

    #@a6
    .line 1997
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a9
    .line 1995
    const/4 v0, 0x0

    #@aa
    monitor-exit v9

    #@ab
    return v0

    #@ac
    .line 1996
    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@ad
    .line 1997
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@b0
    .line 1996
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b1
    .line 1975
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@b2
    monitor-exit v9

    #@b3
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
    .line 1957
    if-eqz p2, :cond_0

    #@2
    if-nez p5, :cond_1

    #@4
    .line 1958
    :cond_0
    return-void

    #@5
    .line 1957
    :cond_1
    if-eqz p3, :cond_0

    #@7
    if-eqz p4, :cond_0

    #@9
    .line 1960
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    .line 1961
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@18
    move-result-object v1

    #@19
    .line 1960
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@1c
    .line 1962
    iget-object v8, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@1e
    monitor-enter v8

    #@1f
    .line 1963
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@22
    move-result-object v0

    #@23
    move-object v1, p2

    #@24
    move-object v2, p6

    #@25
    move-object v3, p5

    #@26
    move-object v4, p3

    #@27
    move-object v5, p4

    #@28
    move-wide/from16 v6, p7

    #@2a
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v8

    #@2e
    .line 1955
    return-void

    #@2f
    .line 1962
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v8

    #@31
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
    .line 5149
    if-eqz p0, :cond_1

    #@3
    .line 5150
    array-length v3, p0

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p0, v1

    #@9
    .line 5151
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 5152
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 5150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 5156
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2131
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
    .line 2132
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    #@11
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2131
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
    .line 2133
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
    .line 2130
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5978
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 5976
    :cond_0
    :goto_0
    return-void

    #@4
    .line 5979
    :catch_0
    move-exception v0

    #@5
    .line 5982
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
    .line 5983
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
    .line 5965
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 5963
    :cond_0
    :goto_0
    return-void

    #@4
    .line 5966
    :catch_0
    move-exception v0

    #@5
    .line 5969
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
    .line 5970
    const-string/jumbo v1, "AccountManagerService"

    #@12
    const-string/jumbo v2, "failure while notifying response"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    .line 2091
    if-nez p2, :cond_0

    #@2
    .line 2092
    return-void

    #@3
    .line 2094
    :cond_0
    const/4 v9, 0x0

    #@4
    .line 2095
    .local v9, "isChanged":Z
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@6
    monitor-enter v11

    #@7
    .line 2096
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@9
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v1

    #@d
    .line 2097
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@10
    .line 2099
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    #@12
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 2100
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    #@18
    invoke-virtual {v10, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 2101
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@1e
    move-result-wide v4

    #@1f
    .line 2102
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@21
    cmp-long v0, v4, v6

    #@23
    if-ltz v0, :cond_2

    #@25
    .line 2103
    const/4 v0, 0x1

    #@26
    new-array v8, v0, [Ljava/lang/String;

    #@28
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    const/4 v3, 0x0

    #@2d
    aput-object v0, v8, v3

    #@2f
    .line 2105
    .local v8, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v0, "ceDb.accounts"

    #@32
    const-string/jumbo v3, "_id=?"

    #@35
    .line 2104
    invoke-virtual {v1, v0, v10, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@38
    .line 2107
    const-string/jumbo v0, "ceDb.authtokens"

    #@3b
    const-string/jumbo v3, "accounts_id=?"

    #@3e
    .line 2106
    invoke-virtual {v1, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@41
    .line 2108
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 2109
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    #@4f
    .line 2110
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@52
    .line 2114
    const/4 v9, 0x1

    #@53
    .line 2115
    if-eqz p3, :cond_1

    #@55
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_4

    #@5b
    .line 2116
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 2118
    .local v2, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "accounts"

    #@62
    move-object v0, p0

    #@63
    move-object v6, p1

    #@64
    move/from16 v7, p4

    #@66
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    .line 2121
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@6c
    .line 2122
    if-eqz v9, :cond_3

    #@6e
    .line 2124
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@71
    move-result v0

    #@72
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@75
    :cond_3
    monitor-exit v11

    #@76
    .line 2090
    return-void

    #@77
    .line 2117
    .restart local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    move-result-object v2

    #@7b
    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    #@7c
    .line 2120
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    #@7d
    .line 2121
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@80
    .line 2122
    if-eqz v9, :cond_5

    #@82
    .line 2124
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@85
    move-result v3

    #@86
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@89
    .line 2120
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@8a
    .line 2095
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    #@8b
    monitor-exit v11

    #@8c
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
    .line 2208
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 2209
    :cond_0
    return-void

    #@5
    .line 2211
    :cond_1
    move-object/from16 v0, p1

    #@7
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@9
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v3

    #@d
    .line 2212
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@10
    .line 2214
    :try_start_0
    move-object/from16 v0, p2

    #@12
    invoke-direct {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-wide v4

    #@16
    .line 2215
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    #@18
    cmp-long v2, v4, v6

    #@1a
    if-gez v2, :cond_2

    #@1c
    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@1f
    .line 2216
    return-void

    #@20
    .line 2218
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    #@22
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    #@25
    move-result-wide v12

    #@26
    .line 2219
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
    .line 2220
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-wide v12

    #@35
    .line 2221
    const-wide/16 v6, 0x0

    #@37
    cmp-long v2, v12, v6

    #@39
    if-gez v2, :cond_4

    #@3b
    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@3e
    .line 2222
    return-void

    #@3f
    .line 2225
    :cond_3
    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    #@41
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    #@44
    .line 2226
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    #@47
    move-object/from16 v0, p4

    #@49
    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    .line 2227
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
    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@6e
    .line 2228
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
    .line 2231
    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 2232
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@82
    .line 2207
    return-void

    #@83
    .line 2233
    .end local v4    # "accountId":J
    .end local v12    # "extrasId":J
    :catchall_0
    move-exception v2

    #@84
    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@87
    .line 2233
    throw v2
.end method

.method private showCantAddAccount(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3140
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@4
    const-class v4, Landroid/accounts/CantAddAccountActivity;

    #@6
    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@9
    .line 3141
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string/jumbo v1, "android.accounts.extra.ERROR_CODE"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@f
    .line 3142
    const/high16 v1, 0x10000000

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14
    .line 3143
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 3145
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
    .line 3147
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@25
    .line 3139
    return-void

    #@26
    .line 3146
    :catchall_0
    move-exception v1

    #@27
    .line 3147
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@2a
    .line 3146
    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5703
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
    .line 779
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
    .line 780
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@e
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v3

    #@12
    .line 781
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findCeAccountsNotInDe(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    .line 782
    .local v2, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 783
    const-string/jumbo v4, "AccountManagerService"

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Accounts "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    const-string/jumbo v6, " were previously deleted while user "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 784
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@39
    move-result v6

    #@3a
    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 784
    const-string/jumbo v6, " was locked. Removing accounts from CE tables"

    #@41
    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 785
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get11()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "accounts"

    #@53
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 787
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v1

    #@5a
    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_0

    #@60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/accounts/Account;

    #@66
    .line 788
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@69
    move-result v4

    #@6a
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    #@6d
    goto :goto_0

    #@6e
    .line 778
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
    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@5
    move-result-object v3

    #@6
    .line 881
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
    .line 882
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
    .line 883
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 884
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
    .line 886
    .local v1, "parentUserId":I
    :goto_0
    if-gez v1, :cond_3

    #@28
    .line 887
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
    .line 888
    return-void

    #@4a
    .end local v1    # "parentUserId":I
    :cond_2
    move v1, v4

    #@4b
    .line 885
    goto :goto_0

    #@4c
    .line 890
    .restart local v1    # "parentUserId":I
    :cond_3
    array-length v5, v3

    #@4d
    :goto_1
    if-ge v4, v5, :cond_5

    #@4f
    aget-object v2, v3, v4

    #@51
    .line 891
    .local v2, "sa":Landroid/accounts/Account;
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_4

    #@57
    .line 890
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 893
    :cond_4
    invoke-virtual {p0, v7, v2, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@5d
    goto :goto_2

    #@5e
    .line 878
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
    .line 1216
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@5
    move-result-object v0

    #@6
    .line 1217
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@8
    monitor-enter v5

    #@9
    .line 1218
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    #@b
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@e
    .line 1219
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    #@11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14
    move-result-wide v6

    #@15
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1c
    .line 1220
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@1e
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@21
    move-result-object v1

    #@22
    .line 1222
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "accounts"

    #@25
    .line 1224
    const-string/jumbo v6, "name=? AND type=?"

    #@28
    .line 1225
    const/4 v7, 0x2

    #@29
    new-array v7, v7, [Ljava/lang/String;

    #@2b
    .line 1226
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2d
    const/4 v9, 0x0

    #@2e
    aput-object v8, v7, v9

    #@30
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@32
    const/4 v9, 0x1

    #@33
    aput-object v8, v7, v9

    #@35
    .line 1221
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v2

    #@39
    .line 1228
    .local v2, "i":I
    if-lez v2, :cond_0

    #@3b
    monitor-exit v5

    #@3c
    .line 1229
    return v11

    #@3d
    :cond_0
    monitor-exit v5

    #@3e
    .line 1232
    return v10

    #@3f
    .line 1217
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    #@40
    monitor-exit v5

    #@41
    throw v4
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 34
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    #@0
    .prologue
    .line 548
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
    .line 549
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
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 550
    const-string/jumbo v5, " isCeDatabaseAttached="

    #@24
    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 550
    move-object/from16 v0, p1

    #@2a
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@2c
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    #@2f
    move-result v5

    #@30
    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 551
    const-string/jumbo v5, " userLocked="

    #@37
    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 551
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@3f
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@42
    move-result v6

    #@43
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@46
    move-result v5

    #@47
    .line 549
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
    .line 554
    :cond_0
    if-eqz p2, :cond_1

    #@54
    .line 555
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@58
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@5b
    move-result v4

    #@5c
    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    #@5f
    .line 559
    :cond_1
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@63
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@66
    move-result v4

    #@67
    .line 558
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    #@6a
    move-result-object v24

    #@6b
    .line 560
    .local v24, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@6e
    move-result v3

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@74
    move-result v31

    #@75
    .line 562
    .local v31, "userUnlocked":Z
    move-object/from16 v0, p1

    #@77
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@79
    move-object/from16 v33, v0

    #@7b
    monitor-enter v33

    #@7c
    .line 563
    :try_start_0
    move-object/from16 v0, p1

    #@7e
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@80
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@83
    move-result-object v2

    #@84
    .line 564
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    #@85
    .line 568
    .local v12, "accountDeleted":Z
    const-string/jumbo v3, "meta"

    #@88
    .line 569
    const/4 v4, 0x2

    #@89
    new-array v4, v4, [Ljava/lang/String;

    #@8b
    const-string/jumbo v5, "key"

    #@8e
    const/4 v6, 0x0

    #@8f
    aput-object v5, v4, v6

    #@91
    const-string/jumbo v5, "value"

    #@94
    const/4 v6, 0x1

    #@95
    aput-object v5, v4, v6

    #@97
    .line 570
    const-string/jumbo v5, "key LIKE ?"

    #@9a
    .line 571
    const/4 v6, 0x1

    #@9b
    new-array v6, v6, [Ljava/lang/String;

    #@9d
    const-string/jumbo v7, "auth_uid_for_type:%"

    #@a0
    const/4 v10, 0x0

    #@a1
    aput-object v7, v6, v10

    #@a3
    .line 574
    const-string/jumbo v9, "key"

    #@a6
    .line 572
    const/4 v7, 0x0

    #@a7
    .line 573
    const/4 v8, 0x0

    #@a8
    .line 567
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@ab
    move-result-object v27

    #@ac
    .line 576
    .local v27, "metaCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@af
    move-result-object v28

    #@b0
    .line 578
    .local v28, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    #@b2
    .line 579
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    #@b5
    move-result v3

    #@b6
    if-eqz v3, :cond_7

    #@b8
    .line 580
    const/4 v3, 0x0

    #@b9
    move-object/from16 v0, v27

    #@bb
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    const-string/jumbo v4, ":"

    #@c2
    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    const/4 v4, 0x1

    #@c7
    aget-object v29, v3, v4

    #@c9
    .line 581
    .local v29, "type":Ljava/lang/String;
    const/4 v3, 0x1

    #@ca
    move-object/from16 v0, v27

    #@cc
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@cf
    move-result-object v30

    #@d0
    .line 582
    .local v30, "uid":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d3
    move-result v3

    #@d4
    if-nez v3, :cond_3

    #@d6
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d9
    move-result v3

    #@da
    if-eqz v3, :cond_4

    #@dc
    .line 584
    :cond_3
    const-string/jumbo v3, "AccountManagerService"

    #@df
    new-instance v4, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v5, "Auth type empty: "

    #@e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ee
    move-result v5

    #@ef
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    .line 585
    const-string/jumbo v5, ", uid empty: "

    #@f6
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    .line 585
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@fd
    move-result v5

    #@fe
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@109
    goto :goto_0

    #@10a
    .line 628
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@10b
    .line 629
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    #@10e
    .line 628
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10f
    .line 562
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v27    # "metaCursor":Landroid/database/Cursor;
    .end local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    #@110
    monitor-exit v33

    #@111
    throw v3

    #@112
    .line 588
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "accountDeleted":Z
    .restart local v27    # "metaCursor":Landroid/database/Cursor;
    .restart local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29    # "type":Ljava/lang/String;
    .restart local v30    # "uid":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, v24

    #@114
    move-object/from16 v1, v29

    #@116
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    move-result-object v25

    #@11a
    check-cast v25, Ljava/lang/Integer;

    #@11c
    .line 589
    .local v25, "knownUid":Ljava/lang/Integer;
    if-eqz v25, :cond_5

    #@11e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@121
    move-result-object v3

    #@122
    move-object/from16 v0, v30

    #@124
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@127
    move-result v3

    #@128
    if-eqz v3, :cond_5

    #@12a
    .line 591
    move-object/from16 v0, v24

    #@12c
    move-object/from16 v1, v29

    #@12e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    goto :goto_0

    #@132
    .line 609
    :cond_5
    if-nez v26, :cond_6

    #@134
    .line 610
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@137
    move-result v3

    #@138
    move-object/from16 v0, p0

    #@13a
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    #@13d
    move-result-object v26

    #@13e
    .line 612
    :cond_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@141
    move-result v3

    #@142
    move-object/from16 v0, v26

    #@144
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@147
    move-result v3

    #@148
    if-nez v3, :cond_2

    #@14a
    .line 616
    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14d
    .line 619
    const-string/jumbo v3, "meta"

    #@150
    .line 620
    const-string/jumbo v4, "key=? AND value=?"

    #@153
    .line 621
    const/4 v5, 0x2

    #@154
    new-array v5, v5, [Ljava/lang/String;

    #@156
    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v7, "auth_uid_for_type:"

    #@15e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v6

    #@162
    move-object/from16 v0, v29

    #@164
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v6

    #@168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v6

    #@16c
    const/4 v7, 0x0

    #@16d
    aput-object v6, v5, v7

    #@16f
    .line 623
    const/4 v6, 0x1

    #@170
    aput-object v30, v5, v6

    #@172
    .line 618
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@175
    goto/16 :goto_0

    #@177
    .line 629
    .end local v25    # "knownUid":Ljava/lang/Integer;
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    #@17a
    .line 635
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@17d
    move-result-object v3

    #@17e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@181
    move-result-object v23

    #@182
    .line 636
    .local v23, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@185
    move-result v3

    #@186
    if-eqz v3, :cond_8

    #@188
    .line 637
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18b
    move-result-object v21

    #@18c
    check-cast v21, Ljava/util/Map$Entry;

    #@18e
    .line 638
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v32, Landroid/content/ContentValues;

    #@190
    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    #@193
    .line 639
    .local v32, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "key"

    #@196
    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v5, "auth_uid_for_type:"

    #@19e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v5

    #@1a2
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a5
    move-result-object v3

    #@1a6
    check-cast v3, Ljava/lang/String;

    #@1a8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v3

    #@1b0
    .line 639
    move-object/from16 v0, v32

    #@1b2
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1b5
    .line 641
    const-string/jumbo v4, "value"

    #@1b8
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1bb
    move-result-object v3

    #@1bc
    check-cast v3, Ljava/lang/Integer;

    #@1be
    move-object/from16 v0, v32

    #@1c0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1c3
    .line 642
    const-string/jumbo v3, "meta"

    #@1c6
    const/4 v4, 0x0

    #@1c7
    const/4 v5, 0x5

    #@1c8
    move-object/from16 v0, v32

    #@1ca
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    #@1cd
    goto :goto_1

    #@1ce
    .line 645
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string/jumbo v3, "accounts"

    #@1d1
    .line 646
    const/4 v4, 0x3

    #@1d2
    new-array v4, v4, [Ljava/lang/String;

    #@1d4
    const-string/jumbo v5, "_id"

    #@1d7
    const/4 v6, 0x0

    #@1d8
    aput-object v5, v4, v6

    #@1da
    const-string/jumbo v5, "type"

    #@1dd
    const/4 v6, 0x1

    #@1de
    aput-object v5, v4, v6

    #@1e0
    const-string/jumbo v5, "name"

    #@1e3
    const/4 v6, 0x2

    #@1e4
    aput-object v5, v4, v6

    #@1e6
    .line 647
    const-string/jumbo v9, "_id"

    #@1e9
    const/4 v5, 0x0

    #@1ea
    const/4 v6, 0x0

    #@1eb
    const/4 v7, 0x0

    #@1ec
    const/4 v8, 0x0

    #@1ed
    .line 645
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1f0
    move-result-object v20

    #@1f1
    .line 649
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_5
    move-object/from16 v0, p1

    #@1f3
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@1f5
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@1f8
    .line 650
    new-instance v15, Ljava/util/LinkedHashMap;

    #@1fa
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    #@1fd
    .line 651
    .local v15, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    #@200
    move-result v3

    #@201
    if-eqz v3, :cond_d

    #@203
    .line 652
    const/4 v3, 0x0

    #@204
    move-object/from16 v0, v20

    #@206
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    #@209
    move-result-wide v8

    #@20a
    .line 653
    .local v8, "accountId":J
    const/4 v3, 0x1

    #@20b
    move-object/from16 v0, v20

    #@20d
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@210
    move-result-object v16

    #@211
    .line 654
    .local v16, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    #@212
    move-object/from16 v0, v20

    #@214
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@217
    move-result-object v13

    #@218
    .line 656
    .local v13, "accountName":Ljava/lang/String;
    move-object/from16 v0, v28

    #@21a
    move-object/from16 v1, v16

    #@21c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@21f
    move-result v3

    #@220
    if-eqz v3, :cond_b

    #@222
    .line 657
    const-string/jumbo v3, "AccountManagerService"

    #@225
    new-instance v4, Ljava/lang/StringBuilder;

    #@227
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22a
    const-string/jumbo v5, "deleting account "

    #@22d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v4

    #@231
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v4

    #@235
    const-string/jumbo v5, " because type "

    #@238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v4

    #@23c
    move-object/from16 v0, v16

    #@23e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v4

    #@242
    .line 658
    const-string/jumbo v5, "\'s registered authenticator no longer exist."

    #@245
    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v4

    #@249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v4

    #@24d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@250
    .line 659
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@253
    .line 661
    :try_start_6
    const-string/jumbo v3, "accounts"

    #@256
    new-instance v4, Ljava/lang/StringBuilder;

    #@258
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25b
    const-string/jumbo v5, "_id="

    #@25e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v4

    #@262
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@265
    move-result-object v4

    #@266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v4

    #@26a
    const/4 v5, 0x0

    #@26b
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@26e
    .line 664
    if-eqz v31, :cond_9

    #@270
    .line 665
    const-string/jumbo v3, "ceDb.accounts"

    #@273
    new-instance v4, Ljava/lang/StringBuilder;

    #@275
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@278
    const-string/jumbo v5, "_id="

    #@27b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v4

    #@27f
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@282
    move-result-object v4

    #@283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@286
    move-result-object v4

    #@287
    const/4 v5, 0x0

    #@288
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@28b
    .line 667
    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@28e
    .line 669
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@291
    .line 671
    const/4 v12, 0x1

    #@292
    .line 673
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    #@295
    move-result-object v6

    #@296
    const-string/jumbo v7, "accounts"

    #@299
    move-object/from16 v4, p0

    #@29b
    move-object v5, v2

    #@29c
    move-object/from16 v10, p1

    #@29e
    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@2a1
    .line 676
    new-instance v11, Landroid/accounts/Account;

    #@2a3
    move-object/from16 v0, v16

    #@2a5
    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a8
    .line 677
    .local v11, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2ab
    move-result-object v3

    #@2ac
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2af
    .line 678
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@2b2
    move-result-object v3

    #@2b3
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b6
    .line 679
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@2b9
    move-result-object v3

    #@2ba
    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@2bd
    goto/16 :goto_2

    #@2bf
    .line 699
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :catchall_2
    move-exception v3

    #@2c0
    .line 700
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@2c3
    .line 701
    if-eqz v12, :cond_a

    #@2c5
    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@2c8
    move-result v4

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    #@2ce
    .line 699
    :cond_a
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@2cf
    .line 668
    .restart local v8    # "accountId":J
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v16    # "accountType":Ljava/lang/String;
    :catchall_3
    move-exception v3

    #@2d0
    .line 669
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@2d3
    .line 668
    throw v3

    #@2d4
    .line 681
    :cond_b
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d7
    move-result-object v14

    #@2d8
    check-cast v14, Ljava/util/ArrayList;

    #@2da
    .line 682
    .local v14, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_c

    #@2dc
    .line 683
    new-instance v14, Ljava/util/ArrayList;

    #@2de
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@2e1
    .line 684
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@2e3
    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e6
    .line 686
    :cond_c
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e9
    goto/16 :goto_2

    #@2eb
    .line 689
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2ee
    move-result-object v3

    #@2ef
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f2
    move-result-object v19

    #@2f3
    .local v19, "cur$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@2f6
    move-result v3

    #@2f7
    if-eqz v3, :cond_f

    #@2f9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2fc
    move-result-object v18

    #@2fd
    check-cast v18, Ljava/util/Map$Entry;

    #@2ff
    .line 690
    .local v18, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@302
    move-result-object v16

    #@303
    check-cast v16, Ljava/lang/String;

    #@305
    .line 691
    .restart local v16    # "accountType":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@308
    move-result-object v14

    #@309
    check-cast v14, Ljava/util/ArrayList;

    #@30b
    .line 692
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@30e
    move-result v3

    #@30f
    new-array v0, v3, [Landroid/accounts/Account;

    #@311
    move-object/from16 v17, v0

    #@313
    .line 693
    .local v17, "accountsForType":[Landroid/accounts/Account;
    const/16 v22, 0x0

    #@315
    .local v22, "i":I
    :goto_4
    move-object/from16 v0, v17

    #@317
    array-length v3, v0

    #@318
    move/from16 v0, v22

    #@31a
    if-ge v0, v3, :cond_e

    #@31c
    .line 694
    new-instance v4, Landroid/accounts/Account;

    #@31e
    move/from16 v0, v22

    #@320
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@323
    move-result-object v3

    #@324
    check-cast v3, Ljava/lang/String;

    #@326
    .line 695
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@329
    move-result-object v5

    #@32a
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@32d
    move-result-object v5

    #@32e
    .line 694
    move-object/from16 v0, v16

    #@330
    invoke-direct {v4, v3, v0, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@333
    aput-object v4, v17, v22

    #@335
    .line 693
    add-int/lit8 v22, v22, 0x1

    #@337
    goto :goto_4

    #@338
    .line 697
    :cond_e
    move-object/from16 v0, p1

    #@33a
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@33c
    move-object/from16 v0, v16

    #@33e
    move-object/from16 v1, v17

    #@340
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@343
    goto :goto_3

    #@344
    .line 700
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v17    # "accountsForType":[Landroid/accounts/Account;
    .end local v18    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22    # "i":I
    :cond_f
    :try_start_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    #@347
    .line 701
    if-eqz v12, :cond_10

    #@349
    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@34c
    move-result v3

    #@34d
    move-object/from16 v0, p0

    #@34f
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@352
    :cond_10
    monitor-exit v33

    #@353
    .line 547
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_accounts_AccountManagerService_lambda$1(I)V
    .locals 13
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 440
    const/4 v1, 0x0

    #@2
    .line 441
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 442
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_4

    #@a
    .line 443
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@d
    move-result v6

    #@e
    .line 444
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v2

    #@12
    .line 446
    .local v2, "identity":J
    :try_start_0
    array-length v10, v5

    #@13
    move v9, v8

    #@14
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :goto_0
    if-ge v9, v10, :cond_3

    #@16
    aget-object v4, v5, v9

    #@18
    .line 447
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v7

    #@1e
    .line 448
    const-string/jumbo v11, "android.permission.GET_ACCOUNTS"

    #@21
    .line 447
    invoke-virtual {v7, v11, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_1

    #@27
    .line 446
    :cond_0
    add-int/lit8 v7, v9, 0x1

    #@29
    move v9, v7

    #@2a
    goto :goto_0

    #@2b
    .line 453
    :cond_1
    if-nez v1, :cond_2

    #@2d
    .line 454
    const-string/jumbo v7, "android"

    #@30
    const/4 v11, 0x0

    #@31
    invoke-virtual {p0, v11, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@34
    move-result-object v1

    #@35
    .line 455
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_2

    #@3b
    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 456
    return-void

    #@3f
    .line 460
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :cond_2
    :try_start_1
    array-length v11, v1

    #@40
    move v7, v8

    #@41
    :goto_1
    if-ge v7, v11, :cond_0

    #@43
    aget-object v0, v1, v7

    #@45
    .line 462
    .local v0, "account":Landroid/accounts/Account;
    const/4 v12, 0x1

    #@46
    .line 461
    invoke-direct {p0, v0, p1, v4, v12}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 460
    add-int/lit8 v7, v7, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 466
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 0
    .end local v2    # "identity":J
    .end local v6    # "userId":I
    :cond_4
    return-void

    #@50
    .line 465
    .restart local v2    # "identity":J
    .restart local v6    # "userId":I
    :catchall_0
    move-exception v7

    #@51
    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 465
    throw v7
.end method

.method synthetic -com_android_server_accounts_AccountManagerService_lambda$2(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1864
    const/4 v0, 0x0

    #@1
    .line 1863
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    #@4
    .line 0
    return-void
.end method

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
    .line 1181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    .line 1182
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@a
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 1184
    const-string/jumbo v6, "accountAuthenticated( account: %s, callerUid: %s)"

    #@13
    .line 1183
    new-array v7, v10, [Ljava/lang/Object;

    #@15
    .line 1185
    aput-object p1, v7, v9

    #@17
    .line 1186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v8

    #@1b
    aput-object v8, v7, v11

    #@1d
    .line 1183
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1187
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@24
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1189
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@29
    .line 1190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v7, "account is null"

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 1192
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@35
    move-result v5

    #@36
    .line 1193
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@38
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@3b
    move-result v6

    #@3c
    if-nez v6, :cond_2

    #@3e
    .line 1195
    const-string/jumbo v6, "uid %s cannot notify authentication for accounts of type: %s"

    #@41
    .line 1194
    new-array v7, v10, [Ljava/lang/Object;

    #@43
    .line 1196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v8

    #@47
    aput-object v8, v7, v9

    #@49
    .line 1197
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4b
    aput-object v8, v7, v11

    #@4d
    .line 1194
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 1198
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@53
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v6

    #@57
    .line 1201
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    #@5a
    move-result v6

    #@5b
    if-eqz v6, :cond_3

    #@5d
    .line 1202
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@5f
    invoke-direct {p0, v5, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_3

    #@65
    .line 1206
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@68
    move-result-wide v2

    #@69
    .line 1208
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@6c
    move-result-object v0

    #@6d
    .line 1209
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result v6

    #@71
    .line 1211
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 1209
    return v6

    #@75
    .line 1203
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    #@76
    .line 1210
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    #@77
    .line 1211
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@7a
    .line 1210
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
    .line 2638
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2639
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
    .line 2640
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
    .line 2641
    const-string/jumbo v6, ", response "

    #@28
    .line 2640
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
    .line 2642
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 2640
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
    .line 2643
    const-string/jumbo v6, ", requiredFeatures "

    #@42
    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    .line 2643
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 2644
    const-string/jumbo v6, ", expectActivityLaunch "

    #@51
    .line 2640
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
    .line 2645
    const-string/jumbo v6, ", caller\'s uid "

    #@5e
    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 2645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@65
    move-result v6

    #@66
    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 2646
    const-string/jumbo v6, ", pid "

    #@6d
    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 2646
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@74
    move-result v6

    #@75
    .line 2640
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
    .line 2648
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
    .line 2649
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
    .line 2652
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@99
    move-result v23

    #@9a
    .line 2653
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    #@9d
    move-result v24

    #@9e
    .line 2654
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
    .line 2657
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@ad
    .line 2656
    const/16 v5, 0x64

    #@af
    move-object/from16 v0, p1

    #@b1
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@b4
    .line 2660
    :goto_0
    const/16 v4, 0x64

    #@b6
    move-object/from16 v0, p0

    #@b8
    move/from16 v1, v24

    #@ba
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@bd
    .line 2661
    return-void

    #@be
    .line 2663
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
    .line 2666
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@cf
    .line 2665
    const/16 v5, 0x65

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@d6
    .line 2669
    :goto_1
    const/16 v4, 0x65

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, v24

    #@dc
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@df
    .line 2671
    return-void

    #@e0
    .line 2674
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e3
    move-result v19

    #@e4
    .line 2675
    .local v19, "pid":I
    if-nez p6, :cond_5

    #@e6
    new-instance v17, Landroid/os/Bundle;

    #@e8
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@eb
    .line 2676
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
    .line 2677
    const-string/jumbo v4, "callerPid"

    #@f8
    move-object/from16 v0, v17

    #@fa
    move/from16 v1, v19

    #@fc
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ff
    .line 2679
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@102
    move-result v25

    #@103
    .line 2680
    .local v25, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@106
    move-result-wide v20

    #@107
    .line 2682
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
    .line 2684
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    const-string/jumbo v5, "accounts"

    #@116
    .line 2683
    move-object/from16 v0, p0

    #@118
    move/from16 v1, v23

    #@11a
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@11d
    .line 2685
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$9;

    #@11f
    .line 2686
    const/4 v11, 0x1

    #@120
    const/4 v12, 0x0

    #@121
    .line 2687
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
    .line 2685
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@136
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@139
    .line 2705
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@13c
    .line 2637
    return-void

    #@13d
    .line 2675
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
    .line 2704
    .restart local v20    # "identityToken":J
    .restart local v25    # "usrId":I
    :catchall_0
    move-exception v4

    #@141
    .line 2705
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@144
    .line 2704
    throw v4

    #@145
    .line 2667
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
    .line 2658
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
    .line 2713
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v19

    #@a
    .line 2715
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
    .line 2716
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
    .line 2717
    const-string/jumbo v6, ", response "

    #@2c
    .line 2716
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
    .line 2718
    const-string/jumbo v6, ", authTokenType "

    #@39
    .line 2716
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
    .line 2719
    const-string/jumbo v6, ", requiredFeatures "

    #@46
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    .line 2719
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 2720
    const-string/jumbo v6, ", expectActivityLaunch "

    #@55
    .line 2716
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
    .line 2721
    const-string/jumbo v6, ", caller\'s uid "

    #@62
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@69
    move-result v6

    #@6a
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    .line 2722
    const-string/jumbo v6, ", pid "

    #@71
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 2722
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@78
    move-result v6

    #@79
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 2723
    const-string/jumbo v6, ", for user id "

    #@80
    .line 2716
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
    .line 2725
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
    .line 2726
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
    .line 2728
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
    .line 2729
    new-instance v4, Ljava/lang/SecurityException;

    #@b5
    .line 2731
    const-string/jumbo v5, "User %s trying to add account for %s"

    #@b8
    .line 2730
    const/4 v6, 0x2

    #@b9
    new-array v6, v6, [Ljava/lang/Object;

    #@bb
    .line 2732
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
    .line 2733
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c9
    move-result-object v8

    #@ca
    const/4 v9, 0x1

    #@cb
    aput-object v8, v6, v9

    #@cd
    .line 2730
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    .line 2729
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v4

    #@d5
    .line 2737
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
    .line 2740
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@e4
    .line 2739
    const/16 v5, 0x64

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@eb
    .line 2743
    :goto_0
    const/16 v4, 0x64

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, p7

    #@f1
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@f4
    .line 2744
    return-void

    #@f5
    .line 2746
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
    .line 2749
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@106
    .line 2748
    const/16 v5, 0x65

    #@108
    move-object/from16 v0, p1

    #@10a
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@10d
    .line 2752
    :goto_1
    const/16 v4, 0x65

    #@10f
    move-object/from16 v0, p0

    #@111
    move/from16 v1, p7

    #@113
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@116
    .line 2754
    return-void

    #@117
    .line 2757
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@11a
    move-result v22

    #@11b
    .line 2758
    .local v22, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11e
    move-result v24

    #@11f
    .line 2759
    .local v24, "uid":I
    if-nez p6, :cond_6

    #@121
    new-instance v17, Landroid/os/Bundle;

    #@123
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@126
    .line 2760
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
    .line 2761
    const-string/jumbo v4, "callerPid"

    #@133
    move-object/from16 v0, v17

    #@135
    move/from16 v1, v22

    #@137
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13a
    .line 2763
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@13d
    move-result-wide v20

    #@13e
    .line 2765
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
    .line 2767
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    const-string/jumbo v5, "accounts"

    #@14d
    .line 2766
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, p7

    #@151
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@154
    .line 2768
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$10;

    #@156
    .line 2769
    const/4 v11, 0x1

    #@157
    const/4 v12, 0x0

    #@158
    .line 2770
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
    .line 2768
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@16d
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@170
    .line 2788
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@173
    .line 2712
    return-void

    #@174
    .line 2759
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    #@176
    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    #@177
    .line 2787
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@178
    .line 2788
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@17b
    .line 2787
    throw v4

    #@17c
    .line 2750
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
    .line 2741
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
    .line 1087
    invoke-static {p3, v10}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@5
    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v5

    #@9
    .line 1089
    .local v5, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@c
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1090
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
    .line 1091
    const-string/jumbo v3, ", caller\'s uid "

    #@28
    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 1092
    const-string/jumbo v3, ", pid "

    #@33
    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 1092
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v3

    #@3b
    .line 1090
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
    .line 1094
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
    .line 1095
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@54
    move-result v9

    #@55
    .line 1096
    .local v9, "userId":I
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@57
    invoke-direct {p0, v0, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_2

    #@5d
    .line 1098
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    #@60
    .line 1097
    new-array v2, v4, [Ljava/lang/Object;

    #@62
    .line 1099
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v3

    #@66
    const/4 v4, 0x0

    #@67
    aput-object v3, v2, v4

    #@69
    .line 1100
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6b
    aput-object v3, v2, v10

    #@6d
    .line 1097
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    .line 1101
    .local v8, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    #@73
    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 1112
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@7a
    move-result-wide v6

    #@7b
    .line 1114
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
    .line 1115
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    move-result v0

    #@87
    .line 1117
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8a
    .line 1115
    return v0

    #@8b
    .line 1116
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@8c
    .line 1117
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8f
    .line 1116
    throw v0
.end method

.method public addSharedAccountsFromParentUser(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3855
    const-string/jumbo v2, "addSharedAccountsFromParentUser"

    #@3
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3856
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
    .line 3857
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
    .line 3858
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@1a
    .line 3857
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3854
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5301
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    #@9
    .line 5300
    return-void
.end method

.method protected cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5305
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 5308
    .local v2, "identityToken":J
    :try_start_0
    const-string/jumbo v4, "notification"

    #@7
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v4

    #@b
    .line 5307
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@e
    move-result-object v1

    #@f
    .line 5309
    .local v1, "service":Landroid/app/INotificationManager;
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@12
    move-result v4

    #@13
    const/4 v5, 0x0

    #@14
    invoke-interface {v1, p2, v5, p1, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 5313
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a
    .line 5304
    .end local v1    # "service":Landroid/app/INotificationManager;
    :goto_0
    return-void

    #@1b
    .line 5310
    :catch_0
    move-exception v0

    #@1c
    .line 5313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1f
    goto :goto_0

    #@20
    .line 5312
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@21
    .line 5313
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@24
    .line 5312
    throw v4
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 2138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2139
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 2140
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
    .line 2141
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 2140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 2142
    const-string/jumbo v8, ", pid "

    #@2f
    .line 2140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 2142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 2140
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
    .line 2144
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
    .line 2145
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 2146
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 2148
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    #@5c
    .line 2147
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 2149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 2150
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 2147
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 2151
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 2153
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 2155
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 2156
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    #@7d
    invoke-direct {p0, v0, p1, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 2158
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@83
    .line 2137
    return-void

    #@84
    .line 2157
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@85
    .line 2158
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@88
    .line 2157
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
    .line 3158
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p3

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v15

    #@a
    .line 3160
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
    .line 3161
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
    .line 3162
    const-string/jumbo v4, ", response "

    #@2c
    .line 3161
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
    .line 3163
    const-string/jumbo v4, ", expectActivityLaunch "

    #@39
    .line 3161
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
    .line 3164
    const-string/jumbo v4, ", caller\'s uid "

    #@46
    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    .line 3165
    const-string/jumbo v4, ", pid "

    #@51
    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 3165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@58
    move-result v4

    #@59
    .line 3161
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
    .line 3168
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
    .line 3169
    new-instance v2, Ljava/lang/SecurityException;

    #@70
    .line 3171
    const-string/jumbo v3, "User %s trying to confirm account credentials for %s"

    #@73
    .line 3170
    const/4 v4, 0x2

    #@74
    new-array v4, v4, [Ljava/lang/Object;

    #@76
    .line 3172
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
    .line 3173
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v6

    #@85
    const/4 v7, 0x1

    #@86
    aput-object v6, v4, v7

    #@88
    .line 3170
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    .line 3169
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    .line 3175
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
    .line 3176
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
    .line 3177
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a9
    move-result-wide v16

    #@aa
    .line 3179
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
    .line 3180
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$13;

    #@b4
    move-object/from16 v0, p2

    #@b6
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b8
    .line 3181
    move-object/from16 v0, p2

    #@ba
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@bc
    const/4 v9, 0x1

    #@bd
    .line 3182
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
    .line 3180
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    #@ce
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d1
    .line 3194
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d4
    .line 3157
    return-void

    #@d5
    .line 3193
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@d6
    .line 3194
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d9
    .line 3193
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
    .line 1124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v16

    #@4
    .line 1125
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
    .line 1126
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 1129
    :cond_0
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, p3

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1f
    move-result-object v5

    #@20
    .line 1130
    .local v5, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@22
    move/from16 v1, p4

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@27
    move-result-object v14

    #@28
    .line 1131
    .local v14, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v5, :cond_1

    #@2a
    if-nez v14, :cond_3

    #@2c
    .line 1132
    :cond_1
    if-eqz p1, :cond_2

    #@2e
    .line 1133
    new-instance v20, Landroid/os/Bundle;

    #@30
    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    #@33
    .line 1134
    .local v20, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    #@36
    const/4 v3, 0x0

    #@37
    move-object/from16 v0, v20

    #@39
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3c
    .line 1136
    :try_start_0
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, v20

    #@40
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1141
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    #@44
    .line 1137
    .restart local v20    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v17

    #@45
    .line 1138
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
    .line 1144
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
    .line 1145
    const-string/jumbo v4, " from user "

    #@7c
    .line 1144
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
    .line 1145
    const-string/jumbo v4, " to user "

    #@89
    .line 1144
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
    .line 1146
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@9d
    move-result-wide v18

    #@9e
    .line 1148
    .local v18, "identityToken":J
    :try_start_1
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$5;

    #@a0
    move-object/from16 v0, p2

    #@a2
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@a4
    .line 1149
    move-object/from16 v0, p2

    #@a6
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a8
    .line 1148
    const/4 v8, 0x0

    #@a9
    .line 1149
    const/4 v9, 0x0

    #@aa
    .line 1150
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
    .line 1148
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@ba
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bd
    .line 1175
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 1123
    return-void

    #@c1
    .line 1174
    :catchall_0
    move-exception v2

    #@c2
    .line 1175
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c5
    .line 1174
    throw v2
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@9
    move-result v0

    #@a
    const/16 v1, 0x3e8

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 3513
    new-instance v0, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v1, "Can be called only by system UID"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 3516
    :cond_0
    const-string/jumbo v0, "account cannot be null"

    #@1a
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 3517
    const-string/jumbo v0, "packageName cannot be null"

    #@20
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 3518
    const-string/jumbo v0, "userHandle cannot be null"

    #@26
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 3520
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@2c
    move-result v10

    #@2d
    .line 3522
    .local v10, "userId":I
    const-string/jumbo v0, "user must be concrete"

    #@30
    const v1, 0x7fffffff

    #@33
    invoke-static {v10, v3, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@36
    .line 3526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@38
    invoke-virtual {v0, p2, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result v7

    #@3c
    .line 3532
    .local v7, "uid":I
    invoke-direct {p0, p1, p2, v7, v4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    #@3f
    move-result-object v2

    #@40
    .line 3534
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@43
    move-result-wide v8

    #@44
    .line 3537
    .local v8, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@46
    .line 3539
    new-instance v5, Landroid/os/UserHandle;

    #@48
    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    #@4b
    .line 3537
    const/4 v1, 0x0

    #@4c
    const/high16 v3, 0x54000000

    #@4e
    .line 3539
    const/4 v4, 0x0

    #@4f
    .line 3536
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    move-result-object v0

    #@57
    .line 3541
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 3536
    return-object v0

    #@5b
    .line 3527
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "uid":I
    .end local v8    # "identity":J
    :catch_0
    move-exception v6

    #@5c
    .line 3528
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "AccountManagerService"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "Unknown package "

    #@67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 3529
    return-object v4

    #@77
    .line 3540
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "uid":I
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v0

    #@78
    .line 3541
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 3540
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5161
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
    .line 5163
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
    .line 5164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 5164
    const-string/jumbo v1, ", uid="

    #@22
    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 5164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 5165
    const-string/jumbo v1, " without permission "

    #@31
    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 5165
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 5163
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
    .line 5166
    return-void

    #@44
    .line 5168
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
    .line 5169
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@56
    const-string/jumbo v0, "  "

    #@59
    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@5c
    .line 5171
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@63
    move-result-object v8

    #@64
    .line 5172
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
    .line 5173
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
    .line 5174
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@95
    .line 5175
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
    .line 5176
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@a4
    .line 5177
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@a7
    goto :goto_1

    #@a8
    .line 5168
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
    .line 5160
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
    .line 3407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v15

    #@4
    .line 3408
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
    .line 3409
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
    .line 3410
    const-string/jumbo v6, ", response "

    #@26
    .line 3409
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
    .line 3411
    const-string/jumbo v6, ", expectActivityLaunch "

    #@33
    .line 3409
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
    .line 3412
    const-string/jumbo v6, ", caller\'s uid "

    #@40
    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 3413
    const-string/jumbo v6, ", pid "

    #@4b
    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 3413
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@52
    move-result v6

    #@53
    .line 3409
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
    .line 3415
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
    .line 3416
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
    .line 3417
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@77
    move-result v19

    #@78
    .line 3418
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
    .line 3425
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8f
    move-result-wide v16

    #@90
    .line 3427
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
    .line 3428
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$17;

    #@9a
    .line 3429
    const/4 v11, 0x1

    #@9b
    const/4 v12, 0x0

    #@9c
    .line 3430
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
    .line 3428
    invoke-direct/range {v4 .. v14}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    #@ac
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@af
    .line 3442
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b2
    .line 3406
    return-void

    #@b3
    .line 3420
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "identityToken":J
    :cond_4
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    #@b6
    .line 3419
    const/4 v5, 0x2

    #@b7
    new-array v5, v5, [Ljava/lang/Object;

    #@b9
    .line 3421
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v6

    #@bd
    const/4 v8, 0x0

    #@be
    aput-object v6, v5, v8

    #@c0
    .line 3422
    const/4 v6, 0x1

    #@c1
    aput-object p2, v5, v6

    #@c3
    .line 3419
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c6
    move-result-object v18

    #@c7
    .line 3423
    .local v18, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@c9
    move-object/from16 v0, v18

    #@cb
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v4

    #@cf
    .line 3441
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    #@d0
    .line 3442
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d3
    .line 3441
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
    .line 3002
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p2

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v15

    #@a
    .line 3004
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
    .line 3005
    const-string/jumbo v2, "AccountManagerService"

    #@17
    .line 3006
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
    .line 3007
    const-string/jumbo v4, ", expectActivityLaunch "

    #@2c
    .line 3006
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
    .line 3008
    const-string/jumbo v4, ", caller\'s uid "

    #@39
    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 3009
    const-string/jumbo v4, ", caller\'s user id "

    #@44
    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 3009
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4b
    move-result v4

    #@4c
    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 3010
    const-string/jumbo v4, ", pid "

    #@53
    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@5a
    move-result v4

    #@5b
    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 3011
    const-string/jumbo v4, ", for user id "

    #@62
    .line 3006
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
    .line 3005
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 3013
    :cond_0
    if-nez p1, :cond_1

    #@75
    .line 3014
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@77
    const-string/jumbo v3, "response is null"

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2

    #@7e
    .line 3019
    :cond_1
    if-eqz p2, :cond_2

    #@80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    #@83
    move-result v2

    #@84
    if-nez v2, :cond_3

    #@86
    .line 3020
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@88
    const-string/jumbo v3, "sessionBundle is empty"

    #@8b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v2

    #@8f
    .line 3024
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
    .line 3025
    new-instance v2, Ljava/lang/SecurityException;

    #@9b
    .line 3027
    const-string/jumbo v3, "User %s trying to finish session for %s without cross user permission"

    #@9e
    .line 3026
    const/4 v4, 0x2

    #@9f
    new-array v4, v4, [Ljava/lang/Object;

    #@a1
    .line 3028
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
    .line 3029
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v6

    #@b0
    const/4 v8, 0x1

    #@b1
    aput-object v6, v4, v8

    #@b3
    .line 3026
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    .line 3025
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v2

    #@bb
    .line 3033
    :cond_4
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@c0
    move-result v2

    #@c1
    if-nez v2, :cond_5

    #@c3
    .line 3035
    const-string/jumbo v2, "uid %s cannot finish session because it\'s not system uid."

    #@c6
    .line 3034
    const/4 v3, 0x1

    #@c7
    new-array v3, v3, [Ljava/lang/Object;

    #@c9
    .line 3036
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v4

    #@cd
    const/4 v6, 0x0

    #@ce
    aput-object v4, v3, v6

    #@d0
    .line 3034
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d3
    move-result-object v20

    #@d4
    .line 3037
    .local v20, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    #@d6
    move-object/from16 v0, v20

    #@d8
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@db
    throw v2

    #@dc
    .line 3040
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
    .line 3043
    const-string/jumbo v2, "User is not allowed to add an account!"

    #@e9
    .line 3042
    const/16 v3, 0x64

    #@eb
    .line 3041
    move-object/from16 v0, p0

    #@ed
    move-object/from16 v1, p1

    #@ef
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@f2
    .line 3044
    const/16 v2, 0x64

    #@f4
    move-object/from16 v0, p0

    #@f6
    move/from16 v1, p5

    #@f8
    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@fb
    .line 3045
    return-void

    #@fc
    .line 3048
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@ff
    move-result v21

    #@100
    .line 3053
    .local v21, "pid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    #@103
    move-result-object v16

    #@104
    .line 3054
    .local v16, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    move-object/from16 v0, v16

    #@106
    move-object/from16 v1, p2

    #@108
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@10b
    move-result-object v13

    #@10c
    .line 3055
    .local v13, "decryptedBundle":Landroid/os/Bundle;
    if-nez v13, :cond_7

    #@10e
    .line 3059
    const-string/jumbo v2, "failed to decrypt session bundle"

    #@111
    .line 3058
    const/16 v3, 0x8

    #@113
    .line 3056
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, p1

    #@117
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@11a
    .line 3060
    return-void

    #@11b
    .line 3062
    :cond_7
    const-string/jumbo v2, "accountType"

    #@11e
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    .line 3065
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@125
    move-result v2

    #@126
    if-eqz v2, :cond_8

    #@128
    .line 3069
    const-string/jumbo v2, "accountType is empty"

    #@12b
    .line 3068
    const/4 v3, 0x7

    #@12c
    .line 3066
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, p1

    #@130
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@133
    .line 3070
    return-void

    #@134
    .line 3077
    :cond_8
    if-eqz p4, :cond_9

    #@136
    .line 3078
    move-object/from16 v0, p4

    #@138
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13b
    .line 3082
    :cond_9
    const-string/jumbo v2, "callerUid"

    #@13e
    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@141
    .line 3083
    const-string/jumbo v2, "callerPid"

    #@144
    move/from16 v0, v21

    #@146
    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@149
    .line 3095
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
    .line 3099
    const-string/jumbo v2, "User cannot modify accounts of this type (policy)."

    #@156
    .line 3098
    const/16 v3, 0x65

    #@158
    .line 3096
    move-object/from16 v0, p0

    #@15a
    move-object/from16 v1, p1

    #@15c
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@15f
    .line 3100
    const/16 v2, 0x65

    #@161
    move-object/from16 v0, p0

    #@163
    move/from16 v1, p5

    #@165
    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@168
    .line 3102
    return-void

    #@169
    .line 3084
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v13    # "decryptedBundle":Landroid/os/Bundle;
    .end local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :catch_0
    move-exception v17

    #@16a
    .line 3085
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
    .line 3086
    const-string/jumbo v2, "AccountManagerService"

    #@177
    const-string/jumbo v3, "Failed to decrypt session bundle!"

    #@17a
    move-object/from16 v0, v17

    #@17c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17f
    .line 3091
    :cond_a
    const-string/jumbo v2, "failed to decrypt session bundle"

    #@182
    .line 3090
    const/16 v3, 0x8

    #@184
    .line 3088
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, p1

    #@188
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    #@18b
    .line 3092
    return-void

    #@18c
    .line 3105
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v7    # "accountType":Ljava/lang/String;
    .restart local v13    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :cond_b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@18f
    move-result-wide v18

    #@190
    .line 3107
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
    .line 3110
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get7()Ljava/lang/String;

    #@19b
    move-result-object v2

    #@19c
    .line 3111
    const-string/jumbo v3, "accounts"

    #@19f
    .line 3108
    move-object/from16 v0, p0

    #@1a1
    invoke-direct {v0, v5, v2, v3, v15}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@1a4
    .line 3113
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$12;

    #@1a6
    .line 3118
    const/4 v9, 0x1

    #@1a7
    .line 3119
    const/4 v10, 0x0

    #@1a8
    .line 3120
    const/4 v11, 0x0

    #@1a9
    .line 3121
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
    .line 3113
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    #@1b6
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b9
    .line 3135
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1bc
    .line 3001
    return-void

    #@1bd
    .line 3134
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@1be
    .line 3135
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1c1
    .line 3134
    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 3704
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 3706
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 3707
    const/4 v5, 0x0

    #@f
    new-array v5, v5, [Landroid/accounts/Account;

    #@11
    return-object v5

    #@12
    .line 3709
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 3711
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@19
    move-result-object v0

    #@1a
    .line 3715
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@1b
    .line 3712
    invoke-direct {p0, v0, v1, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v5

    #@1f
    .line 3718
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@22
    .line 3712
    return-object v5

    #@23
    .line 3717
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v5

    #@24
    .line 3718
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@27
    .line 3717
    throw v5
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3955
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
    .line 3772
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
    .line 3993
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v8

    #@4
    .line 3994
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
    .line 3995
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
    .line 3996
    const-string/jumbo v5, ", response "

    #@26
    .line 3995
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
    .line 3997
    const-string/jumbo v5, ", features "

    #@33
    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 3997
    invoke-static/range {p3 .. p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 3998
    const-string/jumbo v5, ", caller\'s uid "

    #@42
    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 3999
    const-string/jumbo v5, ", pid "

    #@4d
    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 3999
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v5

    #@55
    .line 3995
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
    .line 4001
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
    .line 4002
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
    .line 4003
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@79
    move-result v14

    #@7a
    .line 4005
    .local v14, "userId":I
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, p4

    #@7e
    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    #@81
    move-result-object v15

    #@82
    .line 4007
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    #@84
    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@87
    move-result v2

    #@88
    if-nez v2, :cond_3

    #@8a
    .line 4008
    new-instance v11, Landroid/os/Bundle;

    #@8c
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@8f
    .line 4010
    .local v11, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@92
    const/4 v3, 0x0

    #@93
    new-array v3, v3, [Landroid/accounts/Account;

    #@95
    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@98
    .line 4012
    :try_start_0
    move-object/from16 v0, p1

    #@9a
    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    .line 4016
    :goto_0
    return-void

    #@9e
    .line 4013
    :catch_0
    move-exception v10

    #@9f
    .line 4014
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    #@a2
    const-string/jumbo v3, "Cannot respond to caller do to exception."

    #@a5
    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    goto :goto_0

    #@a9
    .line 4018
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@ac
    move-result-wide v12

    #@ad
    .line 4020
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b2
    move-result-object v4

    #@b3
    .line 4021
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_4

    #@b5
    move-object/from16 v0, p3

    #@b7
    array-length v2, v0

    #@b8
    if-nez v2, :cond_5

    #@ba
    .line 4023
    :cond_4
    iget-object v2, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@bc
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@bd
    .line 4024
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
    .line 4026
    new-instance v11, Landroid/os/Bundle;

    #@c9
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@cc
    .line 4027
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    #@cf
    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@d2
    .line 4028
    move-object/from16 v0, p0

    #@d4
    move-object/from16 v1, p1

    #@d6
    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d9
    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@dc
    .line 4029
    return-void

    #@dd
    .line 4023
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
    .line 4037
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v2

    #@e1
    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@e4
    .line 4037
    throw v2

    #@e5
    .line 4031
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
    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@f8
    .line 3992
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3974
    const/4 v4, -0x1

    #@1
    .line 3976
    .local v4, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v0

    #@5
    .line 3978
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v1

    #@9
    .line 3977
    const/16 v2, 0x2000

    #@b
    .line 3976
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v4

    #@f
    .line 3983
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
    .line 3979
    :catch_0
    move-exception v6

    #@1d
    .line 3980
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
    .line 3981
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
    .line 3961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 3962
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
    .line 3963
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
    .line 3964
    const-string/jumbo v2, " with uid="

    #@23
    .line 3963
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
    .line 3966
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
    .line 5821
    if-eqz p2, :cond_1

    #@3
    .line 5822
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@5
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/accounts/Account;

    #@b
    .line 5823
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_0

    #@d
    .line 5824
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@f
    return-object v5

    #@10
    .line 5826
    :cond_0
    array-length v5, v0

    #@11
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, [Landroid/accounts/Account;

    #@17
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    #@1a
    move-result-object v5

    #@1b
    return-object v5

    #@1c
    .line 5830
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    #@1d
    .line 5831
    .local v4, "totalLength":I
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@22
    move-result-object v5

    #@23
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "accounts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, [Landroid/accounts/Account;

    #@33
    .line 5832
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    #@34
    add-int/2addr v4, v5

    #@35
    goto :goto_0

    #@36
    .line 5834
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    #@38
    .line 5835
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    #@3a
    return-object v5

    #@3b
    .line 5837
    :cond_3
    new-array v0, v4, [Landroid/accounts/Account;

    #@3d
    .line 5838
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    #@3e
    .line 5839
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@40
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@43
    move-result-object v5

    #@44
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v3

    #@48
    .local v3, "accountsOfType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_4

    #@4e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, [Landroid/accounts/Account;

    #@54
    .line 5841
    .local v2, "accountsOfType":[Landroid/accounts/Account;
    array-length v5, v2

    #@55
    .line 5840
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@58
    .line 5842
    array-length v5, v2

    #@59
    add-int/2addr v4, v5

    #@5a
    goto :goto_1

    #@5b
    .line 5844
    .end local v2    # "accountsOfType":[Landroid/accounts/Account;
    :cond_4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    #@5e
    move-result-object v5

    #@5f
    return-object v5
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 5

    #@0
    .prologue
    .line 3742
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
    .line 3743
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    new-array v1, v3, [I

    #@f
    .line 3744
    .local v1, "userIds":[I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@11
    if-ge v0, v3, :cond_0

    #@13
    .line 3745
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
    .line 3744
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3747
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
    .line 2315
    const/4 v6, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2316
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
    .line 2317
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
    .line 2318
    const-string/jumbo v9, ", response "

    #@28
    .line 2317
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
    .line 2319
    const-string/jumbo v9, ", authTokenType "

    #@35
    .line 2317
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
    .line 2320
    const-string/jumbo v9, ", notifyOnAuthFailure "

    #@42
    .line 2317
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
    .line 2321
    const-string/jumbo v9, ", expectActivityLaunch "

    #@4f
    .line 2317
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
    .line 2322
    const-string/jumbo v9, ", caller\'s uid "

    #@5c
    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 2322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v9

    #@64
    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    .line 2323
    const-string/jumbo v9, ", pid "

    #@6b
    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    .line 2323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@72
    move-result v9

    #@73
    .line 2317
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
    .line 2325
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
    .line 2327
    :cond_1
    if-nez p2, :cond_2

    #@8b
    .line 2328
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    #@8e
    const-string/jumbo v8, "getAuthToken called with null account"

    #@91
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 2329
    const-string/jumbo v6, "account is null"

    #@97
    const/4 v8, 0x7

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    #@9d
    .line 2330
    return-void

    #@9e
    .line 2332
    :cond_2
    if-nez p3, :cond_3

    #@a0
    .line 2333
    const-string/jumbo v6, "AccountManagerService"

    #@a3
    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    #@a6
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 2334
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
    .line 2335
    return-void

    #@b3
    .line 2337
    :catch_0
    move-exception v35

    #@b4
    .line 2338
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
    .line 2339
    return-void

    #@d1
    .line 2341
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@d4
    move-result v43

    #@d5
    .line 2342
    .local v43, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d8
    move-result-wide v36

    #@d9
    .line 2346
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
    .line 2347
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    #@e3
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    #@e5
    .line 2348
    move-object/from16 v0, p2

    #@e7
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e9
    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@ec
    move-result-object v8

    #@ed
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@f0
    move-result v9

    #@f1
    .line 2347
    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f4
    move-result-object v33

    #@f5
    .line 2350
    .local v33, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f8
    .line 2354
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
    .line 2357
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@107
    move-result v27

    #@108
    .line 2359
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
    .line 2362
    :goto_1
    const-string/jumbo v6, "androidPackageName"

    #@11b
    move-object/from16 v0, p6

    #@11d
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v10

    #@121
    .line 2364
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@124
    move-result-wide v36

    #@125
    .line 2366
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
    .line 2368
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@136
    .line 2370
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
    .line 2379
    const-string/jumbo v6, "callerUid"

    #@143
    move-object/from16 v0, p6

    #@145
    move/from16 v1, v27

    #@147
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14a
    .line 2380
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
    .line 2382
    if-eqz p4, :cond_4

    #@158
    .line 2383
    const-string/jumbo v6, "notifyOnAuthFailure"

    #@15b
    const/4 v8, 0x1

    #@15c
    move-object/from16 v0, p6

    #@15e
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@161
    .line 2386
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@164
    move-result-wide v38

    #@165
    .line 2389
    .local v38, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    #@167
    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    #@16a
    move-result-object v11

    #@16b
    .line 2393
    .local v11, "callerPkgSigDigest":[B
    if-nez v28, :cond_8

    #@16d
    if-eqz v26, :cond_8

    #@16f
    .line 2394
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
    .line 2395
    .local v32, "authToken":Ljava/lang/String;
    if-eqz v32, :cond_8

    #@17b
    .line 2396
    new-instance v41, Landroid/os/Bundle;

    #@17d
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@180
    .line 2397
    .local v41, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@183
    move-object/from16 v0, v41

    #@185
    move-object/from16 v1, v32

    #@187
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18a
    .line 2398
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
    .line 2399
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
    .line 2400
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
    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1ae
    .line 2401
    return-void

    #@1af
    .line 2349
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
    .line 2350
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b3
    .line 2349
    throw v6

    #@1b4
    .line 2354
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_5
    const/16 v28, 0x0

    #@1b6
    .local v28, "customTokens":Z
    goto/16 :goto_0

    #@1b8
    .line 2359
    .end local v28    # "customTokens":Z
    .restart local v27    # "callerUid":I
    :cond_6
    const/16 v26, 0x1

    #@1ba
    .local v26, "permissionGranted":Z
    goto/16 :goto_1

    #@1bc
    .line 2367
    .end local v26    # "permissionGranted":Z
    .restart local v10    # "callerPkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    #@1bd
    .line 2368
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c0
    .line 2367
    throw v6

    #@1c1
    .line 2372
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "Uid %s is attempting to illegally masquerade as package %s!"

    #@1c4
    .line 2371
    const/4 v8, 0x2

    #@1c5
    new-array v8, v8, [Ljava/lang/Object;

    #@1c7
    .line 2373
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ca
    move-result-object v9

    #@1cb
    const/4 v12, 0x0

    #@1cc
    aput-object v9, v8, v12

    #@1ce
    .line 2374
    const/4 v9, 0x1

    #@1cf
    aput-object v10, v8, v9

    #@1d1
    .line 2371
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d4
    move-result-object v40

    #@1d5
    .line 2375
    .local v40, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@1d7
    move-object/from16 v0, v40

    #@1d9
    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v6

    #@1dd
    .line 2405
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
    .line 2411
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    #@1e8
    move-result-object v42

    #@1e9
    .line 2417
    .local v42, "token":Ljava/lang/String;
    if-eqz v42, :cond_a

    #@1eb
    .line 2418
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
    .line 2419
    const-string/jumbo v6, "AccountManagerService"

    #@1f8
    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    #@1fb
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1fe
    .line 2421
    :cond_9
    new-instance v41, Landroid/os/Bundle;

    #@200
    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    #@203
    .line 2422
    .restart local v41    # "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    #@206
    move-object/from16 v0, v41

    #@208
    move-object/from16 v1, v42

    #@20a
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@20d
    .line 2423
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
    .line 2424
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
    .line 2425
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
    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@231
    .line 2426
    return-void

    #@232
    .line 2430
    .end local v41    # "result":Landroid/os/Bundle;
    .end local v42    # "token":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$8;

    #@234
    .line 2433
    move-object/from16 v0, p2

    #@236
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@238
    move-object/from16 v17, v0

    #@23a
    .line 2436
    move-object/from16 v0, p2

    #@23c
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@23e
    move-object/from16 v20, v0

    #@240
    .line 2435
    const/16 v19, 0x0

    #@242
    .line 2437
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
    .line 2430
    invoke-direct/range {v12 .. v31}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@25e
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@261
    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@264
    .line 2314
    return-void

    #@265
    .line 2527
    .end local v11    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v6

    #@266
    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@269
    .line 2527
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
    .line 2261
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
    .line 2262
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
    .line 2264
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@19
    move-result v14

    #@1a
    .line 2265
    .local v14, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@1d
    .line 2266
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    #@20
    move-result v2

    #@21
    const/16 v3, 0x3e8

    #@23
    if-eq v2, v3, :cond_2

    #@25
    .line 2267
    new-instance v2, Ljava/lang/SecurityException;

    #@27
    const-string/jumbo v3, "can only call from system"

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 2269
    :cond_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    #@31
    move-result v15

    #@32
    .line 2270
    .local v15, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@35
    move-result-wide v16

    #@36
    .line 2272
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    #@38
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3b
    move-result-object v5

    #@3c
    .line 2273
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$7;

    #@3e
    const/4 v8, 0x0

    #@3f
    .line 2274
    const/4 v9, 0x0

    #@40
    const/4 v10, 0x0

    #@41
    .line 2275
    const/4 v11, 0x0

    #@42
    move-object/from16 v3, p0

    #@44
    move-object/from16 v4, p0

    #@46
    move-object/from16 v6, p1

    #@48
    move-object/from16 v7, p2

    #@4a
    move-object/from16 v12, p2

    #@4c
    move-object/from16 v13, p3

    #@4e
    .line 2273
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    #@51
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 2303
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@57
    .line 2260
    return-void

    #@58
    .line 2302
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@59
    .line 2303
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@5c
    .line 2302
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v0

    #@5
    .line 1035
    .local v0, "callingUid":I
    const-string/jumbo v1, "AccountManagerService"

    #@8
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1036
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
    .line 1038
    const-string/jumbo v5, " caller\'s uid "

    #@24
    .line 1036
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 1039
    const-string/jumbo v5, ", pid "

    #@2f
    .line 1036
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v5

    #@37
    .line 1036
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
    .line 1042
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 1043
    new-instance v1, Ljava/lang/SecurityException;

    #@4a
    .line 1045
    const-string/jumbo v4, "User %s tying to get authenticator types for %s"

    #@4d
    .line 1044
    new-array v5, v6, [Ljava/lang/Object;

    #@4f
    .line 1046
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
    .line 1047
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    const/4 v7, 0x1

    #@5f
    aput-object v6, v5, v7

    #@61
    .line 1044
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 1043
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 1050
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@6c
    move-result-wide v2

    #@6d
    .line 1052
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    move-result-object v1

    #@71
    .line 1055
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@74
    .line 1052
    return-object v1

    #@75
    .line 1054
    :catchall_0
    move-exception v1

    #@76
    .line 1055
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@79
    .line 1054
    throw v1
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4533
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 4534
    const-string/jumbo v2, "accounts_ce.db"

    #@9
    .line 4533
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 4535
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
    .line 4526
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 4527
    const-string/jumbo v2, "accounts_de.db"

    #@9
    .line 4526
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 4528
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
    .line 904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 905
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 906
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
    .line 907
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    .line 907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v8

    #@2c
    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 908
    const-string/jumbo v8, ", pid "

    #@33
    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3a
    move-result v8

    #@3b
    .line 906
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
    .line 910
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
    .line 911
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@54
    move-result v5

    #@55
    .line 912
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@57
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5a
    move-result v6

    #@5b
    if-nez v6, :cond_2

    #@5d
    .line 914
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    #@60
    .line 913
    new-array v7, v9, [Ljava/lang/Object;

    #@62
    .line 915
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v8

    #@66
    const/4 v9, 0x0

    #@67
    aput-object v8, v7, v9

    #@69
    .line 916
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6b
    const/4 v9, 0x1

    #@6c
    aput-object v8, v7, v9

    #@6e
    .line 913
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    .line 917
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@74
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@77
    throw v6

    #@78
    .line 919
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@7b
    move-result-wide v2

    #@7c
    .line 921
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7f
    move-result-object v0

    #@80
    .line 922
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result-object v6

    #@84
    .line 924
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 922
    return-object v6

    #@88
    .line 923
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@89
    .line 924
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8c
    .line 923
    throw v6
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4499
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@3
    move-result-object v2

    #@4
    .line 4500
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@6
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@9
    move-result-object v4

    #@a
    .line 4501
    const-string/jumbo v5, "accounts.db"

    #@d
    .line 4500
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 4502
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p1, :cond_0

    #@12
    .line 4507
    new-instance v1, Ljava/io/File;

    #@14
    const-string/jumbo v4, "accounts.db"

    #@17
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .line 4508
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
    .line 4521
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 4510
    .restart local v1    # "oldFile":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@2e
    move-result-object v3

    #@2f
    .line 4511
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 4512
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 4513
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
    .line 4516
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@58
    move-result v4

    #@59
    if-nez v4, :cond_0

    #@5b
    .line 4517
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
    .line 946
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
    .line 947
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
    .line 948
    const-string/jumbo v6, ", caller\'s uid "

    #@20
    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v6

    #@28
    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 949
    const-string/jumbo v6, ", pid "

    #@2f
    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 949
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v6

    #@37
    .line 947
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
    .line 951
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
    .line 952
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v1

    #@51
    .line 953
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@54
    move-result-wide v2

    #@55
    .line 955
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@58
    move-result-object v0

    #@59
    .line 956
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    move-result-object v4

    #@5d
    .line 958
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@60
    .line 956
    return-object v4

    #@61
    .line 957
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    #@62
    .line 958
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@65
    .line 957
    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    #@0
    .prologue
    .line 3731
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
    .line 3736
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 3732
    .end local v1    # "runningUserIds":[I
    :catch_0
    move-exception v0

    #@e
    .line 3734
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
    .line 3926
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p1

    #@4
    .line 3927
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v10

    #@8
    .line 3928
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    #@a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 3929
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    #@e
    .line 3931
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@10
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@13
    move-result-object v0

    #@14
    .line 3932
    const-string/jumbo v1, "shared_accounts"

    #@17
    const/4 v2, 0x2

    #@18
    new-array v2, v2, [Ljava/lang/String;

    #@1a
    const-string/jumbo v3, "name"

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object v3, v2, v4

    #@20
    const-string/jumbo v3, "type"

    #@23
    const/4 v4, 0x1

    #@24
    aput-object v3, v2, v4

    #@26
    .line 3933
    const/4 v3, 0x0

    #@27
    const/4 v4, 0x0

    #@28
    const/4 v5, 0x0

    #@29
    const/4 v6, 0x0

    #@2a
    const/4 v7, 0x0

    #@2b
    .line 3931
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2e
    move-result-object v11

    #@2f
    .line 3934
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    #@31
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 3935
    const-string/jumbo v0, "name"

    #@3a
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3d
    move-result v12

    #@3e
    .line 3936
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    #@41
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@44
    move-result v13

    #@45
    .line 3938
    .local v13, "typeIndex":I
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    #@47
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 3939
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 3938
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    .line 3940
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_0

    #@5b
    .line 3943
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_1
    if-eqz v11, :cond_2

    #@5d
    .line 3944
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@60
    .line 3947
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v0

    #@64
    new-array v8, v0, [Landroid/accounts/Account;

    #@66
    .line 3948
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@69
    .line 3949
    return-object v8

    #@6a
    .line 3942
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@6b
    .line 3943
    if-eqz v11, :cond_3

    #@6d
    .line 3944
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@70
    .line 3942
    :cond_3
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 747
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    monitor-enter v7

    #@3
    .line 748
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@b
    .line 749
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    #@c
    .line 750
    .local v5, "validateAccounts":Z
    if-nez v0, :cond_0

    #@e
    .line 751
    new-instance v4, Ljava/io/File;

    #@10
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    .line 752
    .local v4, "preNDbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@19
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    .line 753
    .local v2, "deDbFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@22
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@24
    invoke-direct {v0, v6, p1, v4, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    #@27
    .line 755
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@29
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@2c
    move-result-object v6

    #@2d
    .line 754
    invoke-direct {p0, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@30
    .line 756
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@35
    .line 757
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@38
    .line 758
    const/4 v5, 0x1

    #@39
    .line 761
    .end local v2    # "deDbFile":Ljava/io/File;
    .end local v4    # "preNDbFile":Ljava/io/File;
    :cond_0
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@3b
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_1

    #@41
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@43
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_1

    #@49
    .line 762
    const-string/jumbo v6, "AccountManagerService"

    #@4c
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "User "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    const-string/jumbo v9, " is unlocked - opening CE database"

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 763
    iget-object v8, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@6c
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6d
    .line 764
    :try_start_1
    new-instance v3, Ljava/io/File;

    #@6f
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@76
    .line 765
    .local v3, "preNDatabaseFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@78
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7f
    .line 766
    .local v1, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@81
    invoke-static {v6, p1, v3, v1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;

    #@84
    .line 767
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@86
    invoke-virtual {v6, v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->attachCeDatabase(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    :try_start_2
    monitor-exit v8

    #@8a
    .line 769
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    #@8d
    .line 771
    .end local v1    # "ceDatabaseFile":Ljava/io/File;
    .end local v3    # "preNDatabaseFile":Ljava/io/File;
    :cond_1
    if-eqz v5, :cond_2

    #@8f
    .line 772
    const/4 v6, 0x1

    #@90
    invoke-direct {p0, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@93
    :cond_2
    monitor-exit v7

    #@94
    .line 774
    return-object v0

    #@95
    .line 763
    :catchall_0
    move-exception v6

    #@96
    :try_start_3
    monitor-exit v8

    #@97
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@98
    .line 747
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "validateAccounts":Z
    :catchall_1
    move-exception v6

    #@99
    monitor-exit v7

    #@9a
    throw v6
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 998
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 999
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
    .line 1000
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    #@11
    const/4 v7, 0x4

    #@12
    new-array v7, v7, [Ljava/lang/Object;

    #@14
    .line 1001
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
    .line 1000
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 1002
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    #@33
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1004
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
    .line 1005
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
    .line 1006
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4f
    move-result v5

    #@50
    .line 1007
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@52
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_3

    #@58
    .line 1009
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    #@5b
    .line 1008
    const/4 v7, 0x2

    #@5c
    new-array v7, v7, [Ljava/lang/Object;

    #@5e
    .line 1010
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 1011
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1008
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 1012
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 1014
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@77
    move-result v6

    #@78
    if-nez v6, :cond_4

    #@7a
    .line 1015
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
    .line 1016
    const/4 v6, 0x0

    #@a0
    return-object v6

    #@a1
    .line 1018
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a4
    move-result-wide v2

    #@a5
    .line 1020
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@a8
    move-result-object v0

    #@a9
    .line 1021
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@ab
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@ac
    .line 1022
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@af
    move-result v6

    #@b0
    if-nez v6, :cond_5

    #@b2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b3
    .line 1023
    const/4 v6, 0x0

    #@b4
    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@b7
    .line 1023
    return-object v6

    #@b8
    .line 1025
    :cond_5
    :try_start_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bb
    move-result-object v6

    #@bc
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@bd
    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 1025
    return-object v6

    #@c1
    .line 1021
    :catchall_0
    move-exception v6

    #@c2
    :try_start_5
    monitor-exit v7

    #@c3
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@c4
    .line 1027
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    #@c5
    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c8
    .line 1027
    throw v6
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 5626
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 5627
    :cond_0
    const-string/jumbo v7, "AccountManagerService"

    #@7
    const-string/jumbo v8, "grantAppPermission: called with invalid arguments"

    #@a
    new-instance v9, Ljava/lang/Exception;

    #@c
    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    #@f
    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 5628
    return-void

    #@13
    .line 5630
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v7

    #@17
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@1a
    move-result-object v2

    #@1b
    .line 5631
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v8, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@1d
    monitor-enter v8

    #@1e
    .line 5632
    :try_start_0
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@20
    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@23
    move-result-object v3

    #@24
    .line 5633
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 5635
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@2a
    move-result-wide v0

    #@2b
    .line 5636
    .local v0, "accountId":J
    const-wide/16 v10, 0x0

    #@2d
    cmp-long v7, v0, v10

    #@2f
    if-ltz v7, :cond_2

    #@31
    .line 5637
    new-instance v6, Landroid/content/ContentValues;

    #@33
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    #@36
    .line 5638
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "accounts_id"

    #@39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@40
    .line 5639
    const-string/jumbo v7, "auth_token_type"

    #@43
    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 5640
    const-string/jumbo v7, "uid"

    #@49
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 5641
    const-string/jumbo v7, "grants"

    #@53
    const-string/jumbo v9, "accounts_id"

    #@56
    invoke-virtual {v3, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@59
    .line 5642
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 5645
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@5f
    .line 5647
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@66
    move-result v7

    #@67
    .line 5648
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    #@6a
    move-result v9

    #@6b
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@6e
    move-result-object v9

    #@6f
    .line 5647
    invoke-virtual {p0, v7, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    #@72
    .line 5650
    const/4 v7, 0x1

    #@73
    invoke-direct {p0, p1, p3, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@76
    monitor-exit v8

    #@77
    .line 5655
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@79
    .line 5654
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v5

    #@7d
    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_3

    #@83
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@86
    move-result-object v4

    #@87
    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    #@89
    .line 5656
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    #@8b
    new-instance v8, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    #@8d
    invoke-direct {v8, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    #@90
    invoke-virtual {v7, v8}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    #@93
    goto :goto_0

    #@94
    .line 5644
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@95
    .line 5645
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@98
    .line 5644
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@99
    .line 5631
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v7

    #@9a
    monitor-exit v8

    #@9b
    throw v7

    #@9c
    .line 5625
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v3

    #@5
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    #@8
    move-result v3

    #@9
    const/16 v4, 0x3e8

    #@b
    if-eq v3, v4, :cond_0

    #@d
    .line 3450
    new-instance v3, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v4, "Can be called only by system UID"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 3452
    :cond_0
    const-string/jumbo v3, "account cannot be null"

    #@19
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 3453
    const-string/jumbo v3, "packageName cannot be null"

    #@1f
    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 3454
    const-string/jumbo v3, "userHandle cannot be null"

    #@25
    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 3456
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@2b
    move-result v2

    #@2c
    .line 3458
    .local v2, "userId":I
    const-string/jumbo v3, "user must be concrete"

    #@2f
    const v4, 0x7fffffff

    #@32
    invoke-static {v2, v5, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    #@35
    .line 3461
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@37
    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@3a
    move-result v1

    #@3b
    .line 3462
    .local v1, "uid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result v3

    #@3f
    return v3

    #@40
    .line 3463
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@41
    .line 3464
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v6

    #@4
    .line 1400
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
    .line 1401
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
    .line 1402
    const-string/jumbo v3, ", response "

    #@24
    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 1403
    const-string/jumbo v3, ", features "

    #@2f
    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 1403
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1404
    const-string/jumbo v3, ", caller\'s uid "

    #@3e
    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1405
    const-string/jumbo v3, ", pid "

    #@49
    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1405
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v3

    #@51
    .line 1401
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
    .line 1407
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
    .line 1408
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
    .line 1409
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
    .line 1410
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@80
    move-result v7

    #@81
    .line 1411
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@83
    invoke-direct {p0, v6, v0, v7, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    #@86
    .line 1414
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@89
    move-result-wide v8

    #@8a
    .line 1416
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8d
    move-result-object v2

    #@8e
    .line 1417
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
    .line 1419
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1398
    return-void

    #@9e
    .line 1418
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    #@9f
    .line 1419
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a2
    .line 1418
    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 5280
    const-string/jumbo v0, "android"

    #@3
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@6
    move-result v1

    #@7
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    #@a
    .line 5279
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 1876
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
    .line 1877
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
    .line 1878
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 1879
    const-string/jumbo v8, ", pid "

    #@2f
    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 1877
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
    .line 1881
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
    .line 1882
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
    .line 1883
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5b
    move-result v3

    #@5c
    .line 1884
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@5f
    move-result-wide v4

    #@60
    .line 1886
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@63
    move-result-object v0

    #@64
    .line 1887
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@66
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@67
    .line 1888
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@69
    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@6c
    move-result-object v2

    #@6d
    .line 1889
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@70
    .line 1891
    :try_start_2
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 1892
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    #@76
    .line 1893
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    .line 1895
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@7d
    .line 1899
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@80
    .line 1874
    return-void

    #@81
    .line 1894
    :catchall_0
    move-exception v6

    #@82
    .line 1895
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@85
    .line 1894
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@86
    .line 1887
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    #@87
    :try_start_6
    monitor-exit v7

    #@88
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@89
    .line 1898
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v6

    #@8a
    .line 1899
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@8d
    .line 1898
    throw v6
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3315
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
    .line 3316
    const-string/jumbo v2, "AccountManagerService"

    #@d
    .line 3317
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
    .line 3318
    const-string/jumbo v4, ", caller\'s uid "

    #@2f
    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 3318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@36
    move-result v4

    #@37
    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 3319
    const-string/jumbo v4, ", pid "

    #@3e
    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 3319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v4

    #@46
    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 3316
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 3321
    :cond_0
    if-nez p1, :cond_1

    #@53
    .line 3322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v3, "response is null"

    #@58
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 3324
    :cond_1
    if-nez p2, :cond_2

    #@5e
    .line 3325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@60
    const-string/jumbo v3, "account is null"

    #@63
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 3327
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_3

    #@6d
    .line 3328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v3, "status token is empty"

    #@72
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 3331
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@79
    move-result v17

    #@7a
    .line 3333
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
    .line 3335
    const-string/jumbo v2, "uid %s cannot stat add account session."

    #@87
    .line 3334
    const/4 v3, 0x1

    #@88
    new-array v3, v3, [Ljava/lang/Object;

    #@8a
    .line 3336
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v4

    #@8e
    const/4 v6, 0x0

    #@8f
    aput-object v4, v3, v6

    #@91
    .line 3334
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v16

    #@95
    .line 3337
    .local v16, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v2

    #@9d
    .line 3340
    .end local v16    # "msg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a0
    move-result v18

    #@a1
    .line 3341
    .local v18, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@a4
    move-result-wide v14

    #@a5
    .line 3343
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
    .line 3344
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$16;

    #@af
    move-object/from16 v0, p2

    #@b1
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@b3
    .line 3345
    move-object/from16 v0, p2

    #@b5
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@b7
    .line 3344
    const/4 v8, 0x0

    #@b8
    .line 3345
    const/4 v9, 0x0

    #@b9
    .line 3346
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
    .line 3344
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    #@c7
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ca
    .line 3400
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cd
    .line 3314
    return-void

    #@ce
    .line 3399
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@cf
    .line 3400
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d2
    .line 3399
    throw v2
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 4085
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v5

    #@8
    const/16 v6, 0x3e8

    #@a
    if-ne v5, v6, :cond_0

    #@c
    .line 4086
    return-void

    #@d
    .line 4088
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v4

    #@11
    .line 4089
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 4091
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    #@1e
    move-result-object v6

    #@1f
    const/4 v5, 0x0

    #@20
    array-length v7, v6

    #@21
    :goto_0
    if-ge v5, v7, :cond_2

    #@23
    aget-object v0, v6, v5

    #@25
    .line 4092
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_1

    #@2f
    .line 4095
    const/4 v8, 0x0

    #@30
    invoke-direct {p0, v0, v8, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@33
    move-result v8

    #@34
    if-nez v8, :cond_1

    #@36
    .line 4096
    const-string/jumbo v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    #@39
    .line 4097
    const/4 v9, 0x1

    #@3a
    .line 4096
    invoke-virtual {p0, v0, v8, v1, v9}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 4091
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 4102
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 4083
    return-void

    #@44
    .line 4101
    :catchall_0
    move-exception v5

    #@45
    .line 4102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 4101
    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5139
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
    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 898
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    #@0
    .prologue
    .line 898
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
    .line 513
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 514
    :catch_0
    move-exception v0

    #@6
    .line 517
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 518
    const-string/jumbo v1, "AccountManagerService"

    #@d
    const-string/jumbo v2, "Account Manager Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 520
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
    .line 868
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
    .line 869
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
    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    #@27
    monitor-enter v1

    #@28
    .line 872
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
    .line 874
    if-ge p1, v3, :cond_1

    #@31
    return-void

    #@32
    .line 871
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0

    #@35
    .line 875
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    #@38
    .line 867
    return-void
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 864
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
    .line 863
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
    .line 2004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    .line 2005
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@9
    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 2006
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
    .line 2007
    const-string/jumbo v8, ", authTokenType "

    #@25
    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    .line 2008
    const-string/jumbo v8, ", caller\'s uid "

    #@30
    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    .line 2009
    const-string/jumbo v8, ", pid "

    #@3b
    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 2009
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@42
    move-result v8

    #@43
    .line 2006
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
    .line 2011
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
    .line 2012
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
    .line 2013
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@67
    move-result v5

    #@68
    .line 2014
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6a
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6d
    move-result v6

    #@6e
    if-nez v6, :cond_3

    #@70
    .line 2016
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    #@73
    .line 2015
    new-array v7, v10, [Ljava/lang/Object;

    #@75
    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v8

    #@79
    const/4 v9, 0x0

    #@7a
    aput-object v8, v7, v9

    #@7c
    .line 2018
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7e
    const/4 v9, 0x1

    #@7f
    aput-object v8, v7, v9

    #@81
    .line 2015
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    .line 2019
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@87
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v6

    #@8b
    .line 2021
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    #@8e
    move-result v6

    #@8f
    if-nez v6, :cond_4

    #@91
    .line 2022
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
    .line 2024
    return-object v9

    #@b7
    .line 2026
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@ba
    move-result-wide v2

    #@bb
    .line 2028
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@be
    move-result-object v0

    #@bf
    .line 2029
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c2
    move-result-object v6

    #@c3
    .line 2031
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c6
    .line 2029
    return-object v6

    #@c7
    .line 2030
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@c8
    .line 2031
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@cb
    .line 2030
    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5890
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 5891
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/HashMap;

    #@d
    .line 5892
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@f
    .line 5894
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@11
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@14
    move-result-object v1

    #@15
    .line 5895
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@18
    move-result-object v0

    #@19
    .line 5896
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 5898
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    return-object v2

    #@28
    .line 5890
    .end local v0    # "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
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
    .line 5936
    new-instance v9, Ljava/util/HashMap;

    #@5
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 5937
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.authtokens"

    #@b
    .line 5938
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    #@d
    .line 5939
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 5940
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
    .line 5937
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v10

    #@22
    .line 5943
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 5944
    const/4 v0, 0x0

    #@29
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v11

    #@2d
    .line 5945
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 5946
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 5948
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 5949
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3a
    .line 5948
    throw v0

    #@3b
    .line 5949
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@3e
    .line 5951
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
    .line 5868
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5869
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 5868
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
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
    .line 5916
    new-instance v10, Ljava/util/HashMap;

    #@5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 5917
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.extras"

    #@b
    .line 5918
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    #@d
    .line 5919
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    #@10
    .line 5920
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
    .line 5917
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 5923
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 5924
    const/4 v0, 0x0

    #@29
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 5925
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    #@2e
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 5926
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 5928
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    .line 5929
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    .line 5928
    throw v0

    #@3b
    .line 5929
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3e
    .line 5931
    return-object v10
.end method

.method protected readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5904
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/HashMap;

    #@a
    .line 5905
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@c
    .line 5907
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@e
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    #@11
    move-result-object v0

    #@12
    .line 5908
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@15
    move-result-object v1

    #@16
    .line 5909
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 5911
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    return-object v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 1
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    #@0
    .prologue
    .line 1619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1615
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    #@7
    .line 1614
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
    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v11

    #@4
    .line 1626
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
    .line 1627
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
    .line 1628
    const-string/jumbo v7, ", response "

    #@26
    .line 1627
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
    .line 1629
    const-string/jumbo v7, ", caller\'s uid "

    #@33
    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    .line 1630
    const-string/jumbo v7, ", pid "

    #@3e
    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v7

    #@46
    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 1631
    const-string/jumbo v7, ", for user id "

    #@4d
    .line 1627
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
    .line 1633
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
    .line 1634
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
    .line 1636
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
    .line 1637
    new-instance v4, Ljava/lang/SecurityException;

    #@80
    .line 1639
    const-string/jumbo v6, "User %s tying remove account for %s"

    #@83
    .line 1638
    const/4 v7, 0x2

    #@84
    new-array v7, v7, [Ljava/lang/Object;

    #@86
    .line 1640
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
    .line 1641
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v12

    #@95
    const/4 v13, 0x1

    #@96
    aput-object v12, v7, v13

    #@98
    .line 1638
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    .line 1637
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v4

    #@a0
    .line 1648
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@a3
    move-result-object v25

    #@a4
    .line 1649
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
    .line 1650
    move-object/from16 v0, p0

    #@b6
    invoke-direct {v0, v11}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_5

    #@bc
    .line 1657
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
    .line 1660
    :try_start_0
    const-string/jumbo v4, "User cannot modify accounts"

    #@c9
    .line 1659
    const/16 v6, 0x64

    #@cb
    move-object/from16 v0, p1

    #@cd
    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d0
    .line 1663
    :goto_0
    return-void

    #@d1
    .line 1652
    :cond_5
    const-string/jumbo v4, "uid %s cannot remove accounts of type: %s"

    #@d4
    .line 1651
    const/4 v6, 0x2

    #@d5
    new-array v6, v6, [Ljava/lang/Object;

    #@d7
    .line 1653
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@da
    move-result-object v7

    #@db
    const/4 v12, 0x0

    #@dc
    aput-object v7, v6, v12

    #@de
    .line 1654
    move-object/from16 v0, p2

    #@e0
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e2
    const/4 v12, 0x1

    #@e3
    aput-object v7, v6, v12

    #@e5
    .line 1651
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v19

    #@e9
    .line 1655
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@eb
    move-object/from16 v0, v19

    #@ed
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v4

    #@f1
    .line 1665
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
    .line 1668
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@102
    .line 1667
    const/16 v6, 0x65

    #@104
    move-object/from16 v0, p1

    #@106
    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@109
    .line 1671
    :goto_1
    return-void

    #@10a
    .line 1673
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@10d
    move-result-wide v20

    #@10e
    .line 1674
    .local v20, "identityToken":J
    move-object/from16 v0, p0

    #@110
    move/from16 v1, p4

    #@112
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@115
    move-result-object v10

    #@116
    .line 1675
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
    .line 1676
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@12c
    move-result-object v6

    #@12d
    monitor-enter v6

    #@12e
    .line 1678
    :try_start_2
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@131
    move-result-object v4

    #@132
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@135
    move-result-object v4

    #@136
    .line 1677
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
    .line 1679
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
    .line 1680
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

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
    .line 1681
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
    .line 1676
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
    .line 1685
    iget-object v4, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@176
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@179
    move-result-object v5

    #@17a
    .line 1686
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, p2

    #@17e
    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@181
    move-result-wide v8

    #@182
    .line 1689
    .local v8, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    #@185
    move-result-object v6

    #@186
    .line 1690
    const-string/jumbo v7, "accounts"

    #@189
    move-object/from16 v4, p0

    #@18b
    .line 1687
    invoke-direct/range {v4 .. v11}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@18e
    .line 1695
    :try_start_3
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    #@190
    move-object/from16 v13, p0

    #@192
    move-object v14, v10

    #@193
    move-object/from16 v15, p1

    #@195
    move-object/from16 v16, p2

    #@197
    move/from16 v17, p3

    #@199
    invoke-direct/range {v12 .. v17}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    #@19c
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19f
    .line 1697
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a2
    .line 1624
    return-void

    #@1a3
    .line 1696
    :catchall_1
    move-exception v4

    #@1a4
    .line 1697
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@1a7
    .line 1696
    throw v4

    #@1a8
    .line 1669
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v10    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v20    # "identityToken":J
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v24

    #@1a9
    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@1ab
    .line 1661
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    #@1ac
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
    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v7

    #@6
    .line 1704
    .local v7, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    #@9
    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1705
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
    .line 1706
    const-string/jumbo v3, ", caller\'s uid "

    #@25
    .line 1705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1707
    const-string/jumbo v3, ", pid "

    #@30
    .line 1705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1707
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@37
    move-result v3

    #@38
    .line 1705
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
    .line 1709
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@4a
    move-result v11

    #@4b
    .line 1710
    .local v11, "userId":I
    if-nez p1, :cond_1

    #@4d
    .line 1715
    const-string/jumbo v0, "AccountManagerService"

    #@50
    const-string/jumbo v2, "account is null"

    #@53
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1716
    return v12

    #@57
    .line 1717
    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@59
    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@5c
    move-result v0

    #@5d
    if-nez v0, :cond_2

    #@5f
    .line 1719
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    #@62
    .line 1718
    new-array v2, v13, [Ljava/lang/Object;

    #@64
    .line 1720
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    aput-object v3, v2, v12

    #@6a
    .line 1721
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@6c
    const/4 v12, 0x1

    #@6d
    aput-object v3, v2, v12

    #@6f
    .line 1718
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v10

    #@73
    .line 1722
    .local v10, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    #@75
    invoke-direct {v0, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    .line 1724
    .end local v10    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7c
    move-result-object v6

    #@7d
    .line 1725
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@7f
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@82
    move-result-object v1

    #@83
    .line 1726
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@86
    move-result-wide v4

    #@87
    .line 1729
    .local v4, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    .line 1730
    const-string/jumbo v3, "accounts"

    #@8e
    move-object v0, p0

    #@8f
    .line 1727
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@92
    .line 1734
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@95
    move-result-wide v8

    #@96
    .line 1736
    .local v8, "identityToken":J
    :try_start_0
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    move-result v0

    #@9a
    .line 1738
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 1736
    return v0

    #@9e
    .line 1737
    :catchall_0
    move-exception v0

    #@9f
    .line 1738
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a2
    .line 1737
    throw v0
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 1793
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
    .line 1792
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3906
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
    .line 1483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 1484
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
    .line 1485
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
    .line 1486
    const-string/jumbo v13, ", caller\'s uid "

    #@33
    .line 1485
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    .line 1487
    const-string/jumbo v13, ", pid "

    #@3e
    .line 1485
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@45
    move-result v13

    #@46
    .line 1485
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
    .line 1489
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
    .line 1490
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5f
    move-result v10

    #@60
    .line 1491
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
    .line 1493
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    #@6d
    .line 1492
    const/4 v12, 0x2

    #@6e
    new-array v12, v12, [Ljava/lang/Object;

    #@70
    .line 1494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v13

    #@74
    const/4 v14, 0x0

    #@75
    aput-object v13, v12, v14

    #@77
    .line 1495
    move-object/from16 v0, p2

    #@79
    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7b
    const/4 v14, 0x1

    #@7c
    aput-object v13, v12, v14

    #@7e
    .line 1492
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 1496
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    #@84
    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@87
    throw v11

    #@88
    .line 1498
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8b
    move-result-wide v6

    #@8c
    .line 1500
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@8f
    move-result-object v2

    #@90
    .line 1501
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, p3

    #@94
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@97
    move-result-object v9

    #@98
    .line 1502
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    #@9a
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@9d
    .line 1503
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v11, "authAccount"

    #@a0
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a2
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    .line 1504
    const-string/jumbo v11, "accountType"

    #@a8
    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@aa
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    .line 1505
    const-string/jumbo v11, "accountAccessId"

    #@b0
    .line 1506
    invoke-virtual {v9}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    .line 1505
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b7
    .line 1508
    :try_start_1
    move-object/from16 v0, p1

    #@b9
    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bc
    .line 1513
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@bf
    .line 1482
    return-void

    #@c0
    .line 1509
    :catch_0
    move-exception v4

    #@c1
    .line 1510
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v11, "AccountManagerService"

    #@c4
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cb
    goto :goto_0

    #@cc
    .line 1512
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v11

    #@cd
    .line 1513
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@d0
    .line 1512
    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3883
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    #@3
    move-result p3

    #@4
    .line 3884
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7
    move-result-object v6

    #@8
    .line 3885
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@a
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@d
    move-result-object v1

    #@e
    .line 3886
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    #@11
    move-result-wide v4

    #@12
    .line 3887
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    #@14
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@17
    .line 3888
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    #@1a
    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 3890
    const-string/jumbo v0, "shared_accounts"

    #@20
    .line 3892
    const-string/jumbo v2, "name=? AND type=?"

    #@23
    .line 3893
    const/4 v3, 0x2

    #@24
    new-array v3, v3, [Ljava/lang/String;

    #@26
    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@28
    const/4 v11, 0x0

    #@29
    aput-object v10, v3, v11

    #@2b
    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2d
    const/4 v11, 0x1

    #@2e
    aput-object v10, v3, v11

    #@30
    .line 3889
    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@33
    move-result v8

    #@34
    .line 3894
    .local v8, "r":I
    if-lez v8, :cond_0

    #@36
    .line 3895
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@39
    move-result v7

    #@3a
    .line 3896
    .local v7, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "shared_accounts"

    #@41
    move-object v0, p0

    #@42
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    #@45
    .line 3899
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    #@48
    .line 3901
    .end local v7    # "callingUid":I
    :cond_0
    if-lez v8, :cond_1

    #@4a
    const/4 v0, 0x1

    #@4b
    :goto_0
    return v0

    #@4c
    :cond_1
    const/4 v0, 0x0

    #@4d
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
    .line 2037
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2038
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 2039
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
    .line 2040
    const-string/jumbo v8, ", authTokenType "

    #@24
    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 2041
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 2042
    const-string/jumbo v8, ", pid "

    #@3a
    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 2042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 2039
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
    .line 2044
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
    .line 2045
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
    .line 2046
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 2047
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 2049
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    #@72
    .line 2048
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 2050
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 2051
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 2048
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 2052
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 2054
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 2056
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 2057
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@95
    .line 2059
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@98
    .line 2036
    return-void

    #@99
    .line 2058
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@9a
    .line 2059
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9d
    .line 2058
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
    .line 2065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2066
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 2067
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
    .line 2068
    const-string/jumbo v8, ", caller\'s uid "

    #@24
    .line 2067
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 2069
    const-string/jumbo v8, ", pid "

    #@2f
    .line 2067
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 2069
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@36
    move-result v8

    #@37
    .line 2067
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
    .line 2071
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
    .line 2072
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@50
    move-result v5

    #@51
    .line 2073
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@53
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    if-nez v6, :cond_2

    #@59
    .line 2075
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    #@5c
    .line 2074
    new-array v7, v9, [Ljava/lang/Object;

    #@5e
    .line 2076
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    .line 2077
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@67
    const/4 v9, 0x1

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 2074
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 2078
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@70
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 2080
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@77
    move-result-wide v2

    #@78
    .line 2082
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@7b
    move-result-object v0

    #@7c
    .line 2083
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 2085
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@82
    .line 2064
    return-void

    #@83
    .line 2084
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    #@84
    .line 2085
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@87
    .line 2084
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
    .line 2164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    .line 2165
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    #@8
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 2166
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
    .line 2167
    const-string/jumbo v8, ", key "

    #@24
    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    .line 2168
    const-string/jumbo v8, ", caller\'s uid "

    #@2f
    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 2169
    const-string/jumbo v8, ", pid "

    #@3a
    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 2169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@41
    move-result v8

    #@42
    .line 2166
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
    .line 2171
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
    .line 2172
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
    .line 2173
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@66
    move-result v5

    #@67
    .line 2174
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@69
    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    #@6c
    move-result v6

    #@6d
    if-nez v6, :cond_3

    #@6f
    .line 2176
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    #@72
    .line 2175
    new-array v7, v9, [Ljava/lang/Object;

    #@74
    .line 2177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x0

    #@79
    aput-object v8, v7, v9

    #@7b
    .line 2178
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@7d
    const/4 v9, 0x1

    #@7e
    aput-object v8, v7, v9

    #@80
    .line 2175
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    .line 2179
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    #@86
    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@89
    throw v6

    #@8a
    .line 2181
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8d
    move-result-wide v2

    #@8e
    .line 2183
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@91
    move-result-object v0

    #@92
    .line 2184
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@94
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@95
    .line 2185
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@98
    move-result v6

    #@99
    if-nez v6, :cond_4

    #@9b
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9c
    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@9f
    .line 2186
    return-void

    #@a0
    .line 2188
    :cond_4
    :try_start_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a4
    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@a7
    .line 2163
    return-void

    #@a8
    .line 2184
    :catchall_0
    move-exception v6

    #@a9
    :try_start_5
    monitor-exit v7

    #@aa
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ab
    .line 2190
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    #@ac
    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@af
    .line 2190
    throw v6
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3579
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
    .line 3580
    new-instance v4, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v5, "Only system can check for accounts across users"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 3582
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v2

    #@1a
    .line 3584
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    #@1d
    move-result-object v0

    #@1e
    .line 3585
    .local v0, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v4, v0

    #@1f
    add-int/lit8 v1, v4, -0x1

    #@21
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@23
    .line 3586
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
    .line 3587
    const/4 v4, 0x1

    #@2e
    .line 3592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 3587
    return v4

    #@32
    .line 3585
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_0

    #@35
    .line 3592
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 3590
    return v6

    #@39
    .line 3591
    .end local v0    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@3a
    .line 3592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 3591
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
    .line 2800
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p6

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 2801
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
    .line 2802
    const-string/jumbo v4, "AccountManagerService"

    #@13
    .line 2803
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
    .line 2804
    const-string/jumbo v6, ", response "

    #@28
    .line 2803
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
    .line 2805
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 2803
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
    .line 2806
    const-string/jumbo v6, ", requiredFeatures "

    #@42
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    .line 2806
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 2807
    const-string/jumbo v6, ", expectActivityLaunch "

    #@51
    .line 2803
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
    .line 2808
    const-string/jumbo v6, ", caller\'s uid "

    #@5e
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 2808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@65
    move-result v6

    #@66
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 2809
    const-string/jumbo v6, ", pid "

    #@6d
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 2809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@74
    move-result v6

    #@75
    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 2802
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 2811
    :cond_0
    if-nez p1, :cond_1

    #@82
    .line 2812
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@84
    const-string/jumbo v5, "response is null"

    #@87
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v4

    #@8b
    .line 2814
    :cond_1
    if-nez p2, :cond_2

    #@8d
    .line 2815
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8f
    const-string/jumbo v5, "accountType is null"

    #@92
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v4

    #@96
    .line 2818
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@99
    move-result v25

    #@9a
    .line 2820
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
    .line 2822
    const-string/jumbo v4, "uid %s cannot stat add account session."

    #@a7
    .line 2821
    const/4 v5, 0x1

    #@a8
    new-array v5, v5, [Ljava/lang/Object;

    #@aa
    .line 2823
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v6

    #@ae
    const/4 v8, 0x0

    #@af
    aput-object v6, v5, v8

    #@b1
    .line 2821
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b4
    move-result-object v22

    #@b5
    .line 2824
    .local v22, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@b7
    move-object/from16 v0, v22

    #@b9
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v4

    #@bd
    .line 2827
    .end local v22    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    #@c0
    move-result v26

    #@c1
    .line 2828
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
    .line 2831
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    #@d0
    .line 2830
    const/16 v5, 0x64

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d7
    .line 2834
    :goto_0
    const/16 v4, 0x64

    #@d9
    move-object/from16 v0, p0

    #@db
    move/from16 v1, v26

    #@dd
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@e0
    .line 2835
    return-void

    #@e1
    .line 2837
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
    .line 2840
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    #@f2
    .line 2839
    const/16 v5, 0x65

    #@f4
    move-object/from16 v0, p1

    #@f6
    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f9
    .line 2843
    :goto_1
    const/16 v4, 0x65

    #@fb
    move-object/from16 v0, p0

    #@fd
    move/from16 v1, v26

    #@ff
    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    #@102
    .line 2845
    return-void

    #@103
    .line 2847
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@106
    move-result v23

    #@107
    .line 2848
    .local v23, "pid":I
    if-nez p6, :cond_6

    #@109
    new-instance v17, Landroid/os/Bundle;

    #@10b
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@10e
    .line 2849
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
    .line 2850
    const-string/jumbo v4, "callerPid"

    #@11b
    move-object/from16 v0, v17

    #@11d
    move/from16 v1, v23

    #@11f
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@122
    .line 2853
    const-string/jumbo v4, "androidPackageName"

    #@125
    move-object/from16 v0, p6

    #@127
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@12a
    move-result-object v19

    #@12b
    .line 2854
    .local v19, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    #@12c
    new-array v4, v4, [Ljava/lang/String;

    #@12e
    .line 2855
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    #@131
    const/4 v6, 0x0

    #@132
    aput-object v5, v4, v6

    #@134
    .line 2854
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
    .line 2857
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@141
    move-result-wide v20

    #@142
    .line 2859
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
    .line 2860
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    #@14d
    move-result-object v4

    #@14e
    .line 2861
    const-string/jumbo v5, "accounts"

    #@151
    .line 2860
    move-object/from16 v0, p0

    #@153
    move/from16 v1, v25

    #@155
    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    #@158
    .line 2862
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$11;

    #@15a
    .line 2867
    const/4 v11, 0x0

    #@15b
    .line 2868
    const/4 v12, 0x0

    #@15c
    .line 2869
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
    .line 2862
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    #@170
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@173
    .line 2886
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@176
    .line 2799
    return-void

    #@177
    .line 2848
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
    .line 2885
    .restart local v14    # "isPasswordForwardingAllowed":Z
    .restart local v19    # "callerPkg":Ljava/lang/String;
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@17b
    .line 2886
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@17e
    .line 2885
    throw v4

    #@17f
    .line 2841
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
    .line 2832
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
    .line 3245
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p5

    #@3
    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3246
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
    .line 3247
    const-string/jumbo v4, "AccountManagerService"

    #@13
    .line 3248
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
    .line 3249
    const-string/jumbo v6, ", authTokenType "

    #@35
    .line 3248
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
    .line 3249
    const-string/jumbo v6, ", expectActivityLaunch "

    #@42
    .line 3248
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
    .line 3250
    const-string/jumbo v6, ", caller\'s uid "

    #@4f
    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 3250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@56
    move-result v6

    #@57
    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 3251
    const-string/jumbo v6, ", pid "

    #@5e
    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 3251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@65
    move-result v6

    #@66
    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .line 3247
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 3253
    :cond_0
    if-nez p1, :cond_1

    #@73
    .line 3254
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@75
    const-string/jumbo v5, "response is null"

    #@78
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 3256
    :cond_1
    if-nez p2, :cond_2

    #@7e
    .line 3257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v5, "account is null"

    #@83
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v4

    #@87
    .line 3260
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8a
    move-result v22

    #@8b
    .line 3262
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
    .line 3264
    const-string/jumbo v4, "uid %s cannot start update credentials session."

    #@98
    .line 3263
    const/4 v5, 0x1

    #@99
    new-array v5, v5, [Ljava/lang/Object;

    #@9b
    .line 3265
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v6

    #@9f
    const/4 v8, 0x0

    #@a0
    aput-object v6, v5, v8

    #@a2
    .line 3263
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a5
    move-result-object v19

    #@a6
    .line 3266
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@a8
    move-object/from16 v0, v19

    #@aa
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v4

    #@ae
    .line 3269
    .end local v19    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b1
    move-result v23

    #@b2
    .line 3272
    .local v23, "userId":I
    const-string/jumbo v4, "androidPackageName"

    #@b5
    move-object/from16 v0, p5

    #@b7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v18

    #@bb
    .line 3273
    .local v18, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    #@bc
    new-array v4, v4, [Ljava/lang/String;

    #@be
    .line 3274
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    #@c1
    const/4 v6, 0x0

    #@c2
    aput-object v5, v4, v6

    #@c4
    .line 3273
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
    .line 3276
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@d1
    move-result-wide v20

    #@d2
    .line 3278
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
    .line 3279
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$15;

    #@dc
    .line 3282
    move-object/from16 v0, p2

    #@de
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@e0
    .line 3284
    move-object/from16 v0, p2

    #@e2
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@e4
    .line 3285
    const/4 v12, 0x0

    #@e5
    .line 3286
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
    .line 3279
    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@f7
    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fa
    .line 3306
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@fd
    .line 3244
    return-void

    #@fe
    .line 3305
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    #@ff
    .line 3306
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@102
    .line 3305
    throw v4
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 3
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
    .line 5605
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 5607
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x3e8

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 5608
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    #@11
    throw v1

    #@12
    .line 5611
    :cond_0
    if-eqz p4, :cond_1

    #@14
    .line 5612
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@17
    .line 5604
    :goto_0
    return-void

    #@18
    .line 5614
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@1b
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
    .line 3202
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p5

    #@3
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6
    .line 3203
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
    .line 3204
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
    .line 3205
    const-string/jumbo v4, ", response "

    #@28
    .line 3204
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
    .line 3206
    const-string/jumbo v4, ", authTokenType "

    #@35
    .line 3204
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
    .line 3207
    const-string/jumbo v4, ", expectActivityLaunch "

    #@42
    .line 3204
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
    .line 3208
    const-string/jumbo v4, ", caller\'s uid "

    #@4f
    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 3208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@56
    move-result v4

    #@57
    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 3209
    const-string/jumbo v4, ", pid "

    #@5e
    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 3209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@65
    move-result v4

    #@66
    .line 3204
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
    .line 3211
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
    .line 3212
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
    .line 3213
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8a
    move-result v18

    #@8b
    .line 3214
    .local v18, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    #@8e
    move-result-wide v16

    #@8f
    .line 3216
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
    .line 3217
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$14;

    #@99
    move-object/from16 v0, p2

    #@9b
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@9d
    .line 3218
    move-object/from16 v0, p2

    #@9f
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a1
    const/4 v9, 0x1

    #@a2
    .line 3219
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
    .line 3217
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@b5
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b8
    .line 3234
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@bb
    .line 3201
    return-void

    #@bc
    .line 3233
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    #@bd
    .line 3234
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    #@c0
    .line 3233
    throw v2
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    #@3
    move-result-object v0

    #@4
    .line 539
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    #@8
    .line 535
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
    .line 5876
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/HashMap;

    #@a
    .line 5877
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 5878
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 5879
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 5881
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 5882
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 5875
    :goto_0
    return-void

    #@1d
    .line 5884
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
    .line 5850
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/HashMap;

    #@a
    .line 5851
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@c
    .line 5852
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    #@f
    move-result-object v0

    #@10
    .line 5853
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 5855
    :cond_0
    if-nez p5, :cond_1

    #@19
    .line 5856
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 5849
    :goto_0
    return-void

    #@1d
    .line 5858
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0
.end method

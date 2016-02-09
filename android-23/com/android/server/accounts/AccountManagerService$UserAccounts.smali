.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field private final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field private final authTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private debugDbInsertionPoint:I

.field private final openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field private final userDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 201
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    #@a
    .line 204
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 203
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    #@11
    .line 205
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@18
    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@1d
    .line 207
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@1f
    .line 211
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 210
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    #@26
    .line 214
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 213
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    #@2d
    .line 217
    new-instance v0, Lcom/android/server/accounts/TokenCache;

    #@2f
    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    #@34
    .line 232
    new-instance v0, Ljava/util/HashMap;

    #@36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@39
    .line 231
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    #@3b
    .line 234
    const/4 v0, -0x1

    #@3c
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    #@3e
    .line 238
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    #@40
    .line 239
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@42
    monitor-enter v1

    #@43
    .line 240
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    #@45
    invoke-direct {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    #@48
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v1

    #@4b
    .line 237
    return-void

    #@4c
    .line 239
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit v1

    #@4e
    throw v0
.end method

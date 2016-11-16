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
.field final accountCache:Ljava/util/HashMap;
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

.field final cacheLock:Ljava/lang/Object;

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

.field final openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

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
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    #@2
    return v0
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

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "preNDbFile"    # Ljava/io/File;
    .param p4, "deDbFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 277
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 276
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    #@a
    .line 279
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 278
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    #@11
    .line 280
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@18
    .line 283
    new-instance v0, Ljava/util/LinkedHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@1d
    .line 282
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    #@1f
    .line 286
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    .line 285
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    #@26
    .line 289
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 288
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    #@2d
    .line 292
    new-instance v0, Lcom/android/server/accounts/TokenCache;

    #@2f
    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    #@34
    .line 307
    new-instance v0, Ljava/util/HashMap;

    #@36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@39
    .line 306
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    #@3b
    .line 309
    const/4 v0, -0x1

    #@3c
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    #@3e
    .line 313
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    #@40
    .line 314
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    #@42
    monitor-enter v1

    #@43
    .line 315
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    monitor-exit v1

    #@4a
    .line 312
    return-void

    #@4b
    .line 314
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit v1

    #@4d
    throw v0
.end method

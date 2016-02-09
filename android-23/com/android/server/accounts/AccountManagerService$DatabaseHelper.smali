.class Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3390
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService;->-wrap6(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/16 v2, 0x8

    #@7
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@a
    .line 3389
    return-void
.end method

.method private addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3454
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-wrap0(Landroid/database/sqlite/SQLiteDatabase;)V

    #@3
    .line 3453
    return-void
.end method

.method private addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3445
    const-string/jumbo v0, "ALTER TABLE accounts ADD COLUMN last_password_entry_time_millis_epoch DEFAULT 0"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3444
    return-void
.end method

.method private addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3450
    const-string/jumbo v0, "ALTER TABLE accounts ADD COLUMN previous_name"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3449
    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3458
    const-string/jumbo v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3457
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3471
    const-string/jumbo v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3470
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3437
    const-string/jumbo v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3436
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3400
    const-string/jumbo v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, previous_name TEXT, last_password_entry_time_millis_epoch INTEGER DEFAULT 0, UNIQUE(name,type))"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 3409
    const-string/jumbo v0, "CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))"

    #@9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@c
    .line 3416
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@f
    .line 3418
    const-string/jumbo v0, "CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))"

    #@12
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@15
    .line 3425
    const-string/jumbo v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    #@18
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@1b
    .line 3429
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@1e
    .line 3431
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    #@21
    .line 3433
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-wrap0(Landroid/database/sqlite/SQLiteDatabase;)V

    #@24
    .line 3399
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 3529
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
    const-string/jumbo v0, "AccountManagerService"

    #@d
    const-string/jumbo v1, "opened database accounts.db"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 3528
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    #@0
    .prologue
    .line 3481
    const-string/jumbo v0, "AccountManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "upgrade from version "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " to version "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 3483
    const/4 v0, 0x1

    #@26
    if-ne p2, v0, :cond_0

    #@28
    .line 3486
    add-int/lit8 p2, p2, 0x1

    #@2a
    .line 3489
    :cond_0
    const/4 v0, 0x2

    #@2b
    if-ne p2, v0, :cond_1

    #@2d
    .line 3490
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@30
    .line 3491
    const-string/jumbo v0, "DROP TRIGGER accountsDelete"

    #@33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@36
    .line 3492
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    #@39
    .line 3493
    add-int/lit8 p2, p2, 0x1

    #@3b
    .line 3496
    :cond_1
    const/4 v0, 0x3

    #@3c
    if-ne p2, v0, :cond_2

    #@3e
    .line 3497
    const-string/jumbo v0, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    #@41
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@44
    .line 3499
    add-int/lit8 p2, p2, 0x1

    #@46
    .line 3502
    :cond_2
    const/4 v0, 0x4

    #@47
    if-ne p2, v0, :cond_3

    #@49
    .line 3503
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@4c
    .line 3504
    add-int/lit8 p2, p2, 0x1

    #@4e
    .line 3507
    :cond_3
    const/4 v0, 0x5

    #@4f
    if-ne p2, v0, :cond_4

    #@51
    .line 3508
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    #@54
    .line 3509
    add-int/lit8 p2, p2, 0x1

    #@56
    .line 3512
    :cond_4
    const/4 v0, 0x6

    #@57
    if-ne p2, v0, :cond_5

    #@59
    .line 3513
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    #@5c
    .line 3514
    add-int/lit8 p2, p2, 0x1

    #@5e
    .line 3517
    :cond_5
    const/4 v0, 0x7

    #@5f
    if-ne p2, v0, :cond_6

    #@61
    .line 3518
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;->addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@64
    .line 3519
    add-int/lit8 p2, p2, 0x1

    #@66
    .line 3522
    :cond_6
    if-eq p2, p3, :cond_7

    #@68
    .line 3523
    const-string/jumbo v0, "AccountManagerService"

    #@6b
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v2, "failed to upgrade version "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    const-string/jumbo v2, " to version "

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 3480
    :cond_7
    return-void
.end method

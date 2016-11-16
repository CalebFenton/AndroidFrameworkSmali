.class Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeDatabaseHelper"
.end annotation


# instance fields
.field private volatile mCeAttached:Z

.field private final mUserId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "deDatabaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4815
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@5
    .line 4816
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mUserId:I

    #@7
    .line 4814
    return-void
.end method

.method static create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "preNDatabaseFile"    # Ljava/io/File;
    .param p3, "deDatabaseFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 4960
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    #@3
    move-result v1

    #@4
    .line 4961
    .local v1, "newDbExists":Z
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    #@6
    .line 4962
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 4961
    invoke-direct {v0, p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    #@d
    .line 4964
    .local v0, "deDatabaseHelper":Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;
    if-nez v1, :cond_0

    #@f
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 4966
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;

    #@17
    .line 4967
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 4966
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    #@1e
    .line 4969
    .local v2, "preNDatabaseHelper":Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@21
    .line 4970
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->close()V

    #@24
    .line 4972
    invoke-direct {v0, p2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->migratePreNDbToDe(Ljava/io/File;)V

    #@27
    .line 4974
    .end local v2    # "preNDatabaseHelper":Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;
    :cond_0
    return-object v0
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4854
    const-string/jumbo v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 4853
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4863
    const-string/jumbo v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 4862
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4846
    const-string/jumbo v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 4845
    return-void
.end method

.method private migratePreNDbToDe(Ljava/io/File;)V
    .locals 4
    .param p1, "preNDbFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 4913
    const-string/jumbo v1, "AccountManagerService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Migrate pre-N database to DE preNDbFile="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 4914
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@1d
    move-result-object v0

    #@1e
    .line 4915
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "ATTACH DATABASE \'"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "\' AS preNDb"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@40
    .line 4916
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    #@43
    .line 4918
    const-string/jumbo v1, "INSERT INTO accounts(_id,name,type, previous_name, last_password_entry_time_millis_epoch) SELECT _id,name,type, previous_name, last_password_entry_time_millis_epoch FROM preNDb.accounts"

    #@46
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@49
    .line 4926
    const-string/jumbo v1, "INSERT INTO shared_accounts(_id,name,type) SELECT _id,name,type FROM preNDb.shared_accounts"

    #@4c
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@4f
    .line 4931
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "INSERT INTO "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 4932
    const-string/jumbo v2, "("

    #@66
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    .line 4932
    const-string/jumbo v2, "_id"

    #@6d
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 4932
    const-string/jumbo v2, ","

    #@74
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 4932
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get12()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    .line 4932
    const-string/jumbo v2, ","

    #@83
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 4933
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 4933
    const-string/jumbo v2, ","

    #@92
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 4933
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get13()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    .line 4933
    const-string/jumbo v2, ","

    #@a1
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    .line 4934
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get16()Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    .line 4934
    const-string/jumbo v2, ","

    #@b0
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    .line 4934
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    .line 4934
    const-string/jumbo v2, ") "

    #@bf
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    .line 4935
    const-string/jumbo v2, "SELECT "

    #@c6
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    .line 4935
    const-string/jumbo v2, "_id"

    #@cd
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    .line 4935
    const-string/jumbo v2, ","

    #@d4
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    .line 4935
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get12()Ljava/lang/String;

    #@db
    move-result-object v2

    #@dc
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    .line 4935
    const-string/jumbo v2, ","

    #@e3
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    .line 4936
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    .line 4936
    const-string/jumbo v2, ","

    #@f2
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    .line 4936
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get13()Ljava/lang/String;

    #@f9
    move-result-object v2

    #@fa
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    .line 4936
    const-string/jumbo v2, ","

    #@101
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v1

    #@105
    .line 4937
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get16()Ljava/lang/String;

    #@108
    move-result-object v2

    #@109
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    .line 4937
    const-string/jumbo v2, ","

    #@110
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v1

    #@114
    .line 4937
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    .line 4938
    const-string/jumbo v2, " FROM preNDb."

    #@11f
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v1

    #@123
    .line 4938
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    #@126
    move-result-object v2

    #@127
    .line 4931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v1

    #@12b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v1

    #@12f
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@132
    .line 4940
    const-string/jumbo v1, "INSERT INTO grants(accounts_id,auth_token_type,uid) SELECT accounts_id,auth_token_type,uid FROM preNDb.grants"

    #@135
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@138
    .line 4946
    const-string/jumbo v1, "INSERT INTO meta(key,value) SELECT key,value FROM preNDb.meta"

    #@13b
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@13e
    .line 4949
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    #@141
    .line 4950
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    #@144
    .line 4952
    const-string/jumbo v1, "DETACH DATABASE preNDb"

    #@147
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@14a
    .line 4912
    return-void
.end method


# virtual methods
.method public attachCeDatabase(Ljava/io/File;)V
    .locals 3
    .param p1, "ceDbFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 4881
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@3
    move-result-object v0

    #@4
    .line 4882
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "ATTACH DATABASE \'"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "\' AS ceDb"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@26
    .line 4883
    const/4 v1, 0x1

    #@27
    iput-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mCeAttached:Z

    #@29
    .line 4880
    return-void
.end method

.method public getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    #@0
    .prologue
    .line 4892
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mCeAttached:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4893
    const-string/jumbo v0, "AccountManagerService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "getReadableDatabaseUserIsUnlocked called while user "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mUserId:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 4894
    const-string/jumbo v2, " is still locked. CE database is not yet available."

    #@1c
    .line 4893
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 4894
    new-instance v2, Ljava/lang/Throwable;

    #@26
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@29
    .line 4893
    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 4896
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    #@0
    .prologue
    .line 4900
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mCeAttached:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4901
    const-string/jumbo v0, "AccountManagerService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "getWritableDatabaseUserIsUnlocked called while user "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mUserId:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 4902
    const-string/jumbo v2, " is still locked. CE database is not yet available."

    #@1c
    .line 4901
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 4902
    new-instance v2, Ljava/lang/Throwable;

    #@26
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@29
    .line 4901
    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 4904
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public isCeDatabaseAttached()Z
    .locals 1

    #@0
    .prologue
    .line 4887
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mCeAttached:Z

    #@2
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4826
    const-string/jumbo v0, "AccountManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Creating DE database for user "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->mUserId:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 4827
    const-string/jumbo v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY, name TEXT NOT NULL, type TEXT NOT NULL, previous_name TEXT, last_password_entry_time_millis_epoch INTEGER DEFAULT 0, UNIQUE(name,type))"

    #@1f
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@22
    .line 4835
    const-string/jumbo v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    #@25
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@28
    .line 4839
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@2b
    .line 4840
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@2e
    .line 4841
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    #@31
    .line 4842
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-wrap0(Landroid/database/sqlite/SQLiteDatabase;)V

    #@34
    .line 4825
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4909
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
    const-string/jumbo v1, "opened database accounts_de.db"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 4908
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
    .line 4873
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
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 4875
    if-eq p2, p3, :cond_0

    #@27
    .line 4876
    const-string/jumbo v0, "AccountManagerService"

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "failed to upgrade version "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, " to version "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 4872
    :cond_0
    return-void
.end method

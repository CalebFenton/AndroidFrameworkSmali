.class Lcom/android/server/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private final mCallback:Lcom/android/server/LockSettingsStorage$Callback;

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/LockSettingsStorage;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsStorage;

    #@2
    .line 456
    const-string/jumbo v0, "locksettings.db"

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x2

    #@7
    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@a
    .line 457
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    #@e
    .line 458
    iput-object p3, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    #@10
    .line 455
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 462
    const-string/jumbo v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    #@3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6
    .line 461
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@3
    .line 473
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    #@5
    invoke-interface {v0, p1}, Lcom/android/server/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    #@8
    .line 471
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    #@0
    .prologue
    .line 478
    move v0, p2

    #@1
    .line 479
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    #@2
    if-ne v0, v1, :cond_0

    #@4
    .line 481
    const/4 v0, 0x2

    #@5
    .line 484
    :cond_0
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_1

    #@8
    .line 485
    const-string/jumbo v1, "LockSettingsDB"

    #@b
    const-string/jumbo v2, "Failed to upgrade database!"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 477
    :cond_1
    return-void
.end method

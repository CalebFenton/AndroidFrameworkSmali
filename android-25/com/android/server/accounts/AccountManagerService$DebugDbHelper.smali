.class Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugDbHelper"
.end annotation


# static fields
.field private static ACTION_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

.field private static ACTION_ACCOUNT_RENAME:Ljava/lang/String;

.field private static ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

.field private static ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

.field private static ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

.field private static ACTION_CLEAR_PASSWORD:Ljava/lang/String;

.field private static ACTION_SET_PASSWORD:Ljava/lang/String;

.field private static ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

.field private static ACTION_TYPE:Ljava/lang/String;

.field private static CALLER_UID:Ljava/lang/String;

.field private static KEY:Ljava/lang/String;

.field private static TABLE_DEBUG:Ljava/lang/String;

.field private static TABLE_NAME:Ljava/lang/String;

.field private static TIMESTAMP:Ljava/lang/String;

.field private static dateFromat:Ljava/text/SimpleDateFormat;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get10()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SET_PASSWORD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get11()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get13()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get14()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get15()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get16()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get17()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get18()Ljava/text/SimpleDateFormat;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->dateFromat:Ljava/text/SimpleDateFormat;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 4542
    const-string/jumbo v0, "debug_table"

    #@3
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    #@5
    .line 4545
    const-string/jumbo v0, "action_type"

    #@8
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    #@a
    .line 4546
    const-string/jumbo v0, "time"

    #@d
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    #@f
    .line 4547
    const-string/jumbo v0, "caller_uid"

    #@12
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    #@14
    .line 4548
    const-string/jumbo v0, "table_name"

    #@17
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    #@19
    .line 4549
    const-string/jumbo v0, "primary_key"

    #@1c
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    #@1e
    .line 4554
    const-string/jumbo v0, "action_set_password"

    #@21
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SET_PASSWORD:Ljava/lang/String;

    #@23
    .line 4555
    const-string/jumbo v0, "action_clear_password"

    #@26
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    #@28
    .line 4556
    const-string/jumbo v0, "action_account_add"

    #@2b
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_ADD:Ljava/lang/String;

    #@2d
    .line 4557
    const-string/jumbo v0, "action_account_remove"

    #@30
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    #@32
    .line 4558
    const-string/jumbo v0, "action_account_remove_de"

    #@35
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    #@37
    .line 4559
    const-string/jumbo v0, "action_authenticator_remove"

    #@3a
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    #@3c
    .line 4560
    const-string/jumbo v0, "action_account_rename"

    #@3f
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    #@41
    .line 4567
    const-string/jumbo v0, "action_called_account_add"

    #@44
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    #@46
    .line 4568
    const-string/jumbo v0, "action_called_account_remove"

    #@49
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    #@4b
    .line 4569
    const-string/jumbo v0, "action_sync_de_ce_accounts"

    #@4e
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    #@50
    .line 4573
    const-string/jumbo v0, "action_called_start_account_add"

    #@53
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    #@55
    .line 4575
    const-string/jumbo v0, "action_called_account_session_finish"

    #@58
    .line 4574
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    #@5a
    .line 4577
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@5c
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@5f
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->dateFromat:Ljava/text/SimpleDateFormat;

    #@64
    .line 4538
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    .line 4580
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CREATE TABLE "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " ( "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 4581
    const-string/jumbo v1, "_id"

    #@1c
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 4581
    const-string/jumbo v1, " INTEGER,"

    #@23
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 4582
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->ACTION_TYPE:Ljava/lang/String;

    #@29
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 4582
    const-string/jumbo v1, " TEXT NOT NULL, "

    #@30
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 4583
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    #@36
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 4583
    const-string/jumbo v1, " DATETIME,"

    #@3d
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 4584
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->CALLER_UID:Ljava/lang/String;

    #@43
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 4584
    const-string/jumbo v1, " INTEGER NOT NULL,"

    #@4a
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 4585
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_NAME:Ljava/lang/String;

    #@50
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 4585
    const-string/jumbo v1, " TEXT NOT NULL,"

    #@57
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 4586
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->KEY:Ljava/lang/String;

    #@5d
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 4586
    const-string/jumbo v1, " INTEGER PRIMARY KEY)"

    #@64
    .line 4580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6f
    .line 4587
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v1, "CREATE INDEX timestamp_index ON "

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TABLE_DEBUG:Ljava/lang/String;

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    const-string/jumbo v1, " ("

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    sget-object v1, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->TIMESTAMP:Ljava/lang/String;

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    const-string/jumbo v1, ")"

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@9c
    .line 4579
    return-void
.end method

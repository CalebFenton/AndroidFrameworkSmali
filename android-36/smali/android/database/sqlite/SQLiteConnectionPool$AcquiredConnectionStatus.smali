.class final enum Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
.super Ljava/lang/Enum;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AcquiredConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;


# direct methods
.method private static synthetic blacklist $values()[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .registers 3

    .line 133
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    sget-object v2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    filled-new-array {v0, v1, v2}, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 135
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 138
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "RECONFIGURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 141
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "DISCARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 133
    invoke-static {}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$values()[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 133
    const-class v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .registers 1

    .line 133
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v0}, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method

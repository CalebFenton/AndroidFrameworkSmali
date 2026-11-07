.class public final enum Ljava/sql/RowIdLifetime;
.super Ljava/lang/Enum;
.source "RowIdLifetime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/sql/RowIdLifetime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/sql/RowIdLifetime;

.field public static final enum whitelist test-api ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist test-api ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist test-api ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist test-api ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

.field public static final enum whitelist test-api ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;


# direct methods
.method private static synthetic blacklist $values()[Ljava/sql/RowIdLifetime;
    .registers 5

    .line 36
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    sget-object v2, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    sget-object v3, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    sget-object v4, Ljava/sql/RowIdLifetime;->ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/sql/RowIdLifetime;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    .line 48
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_OTHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    .line 54
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    .line 60
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_TRANSACTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    .line 66
    new-instance v0, Ljava/sql/RowIdLifetime;

    const-string v1, "ROWID_VALID_FOREVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

    .line 36
    invoke-static {}, Ljava/sql/RowIdLifetime;->$values()[Ljava/sql/RowIdLifetime;

    move-result-object v0

    sput-object v0, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/RowIdLifetime;
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

    .line 36
    const-class v0, Ljava/sql/RowIdLifetime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/sql/RowIdLifetime;
    .registers 1

    .line 36
    sget-object v0, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

    invoke-virtual {v0}, [Ljava/sql/RowIdLifetime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/sql/RowIdLifetime;

    return-object v0
.end method

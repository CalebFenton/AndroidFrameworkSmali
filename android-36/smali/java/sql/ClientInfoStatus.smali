.class public final enum Ljava/sql/ClientInfoStatus;
.super Ljava/lang/Enum;
.source "ClientInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/sql/ClientInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

.field public static final enum whitelist test-api REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;


# direct methods
.method private static synthetic blacklist $values()[Ljava/sql/ClientInfoStatus;
    .registers 4

    .line 36
    sget-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    sget-object v1, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    sget-object v2, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    sget-object v3, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    filled-new-array {v0, v1, v2, v3}, [Ljava/sql/ClientInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN:Ljava/sql/ClientInfoStatus;

    .line 49
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string v1, "REASON_UNKNOWN_PROPERTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_UNKNOWN_PROPERTY:Ljava/sql/ClientInfoStatus;

    .line 55
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string v1, "REASON_VALUE_INVALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_INVALID:Ljava/sql/ClientInfoStatus;

    .line 61
    new-instance v0, Ljava/sql/ClientInfoStatus;

    const-string v1, "REASON_VALUE_TRUNCATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/sql/ClientInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/sql/ClientInfoStatus;->REASON_VALUE_TRUNCATED:Ljava/sql/ClientInfoStatus;

    .line 36
    invoke-static {}, Ljava/sql/ClientInfoStatus;->$values()[Ljava/sql/ClientInfoStatus;

    move-result-object v0

    sput-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/ClientInfoStatus;
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
    const-class v0, Ljava/sql/ClientInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/sql/ClientInfoStatus;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/sql/ClientInfoStatus;
    .registers 1

    .line 36
    sget-object v0, Ljava/sql/ClientInfoStatus;->$VALUES:[Ljava/sql/ClientInfoStatus;

    invoke-virtual {v0}, [Ljava/sql/ClientInfoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/sql/ClientInfoStatus;

    return-object v0
.end method

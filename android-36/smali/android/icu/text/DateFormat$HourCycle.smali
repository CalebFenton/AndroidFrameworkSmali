.class public final enum Landroid/icu/text/DateFormat$HourCycle;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HourCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateFormat$HourCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DateFormat$HourCycle;

.field public static final enum whitelist test-api HOUR_CYCLE_11:Landroid/icu/text/DateFormat$HourCycle;

.field public static final enum whitelist test-api HOUR_CYCLE_12:Landroid/icu/text/DateFormat$HourCycle;

.field public static final enum whitelist test-api HOUR_CYCLE_23:Landroid/icu/text/DateFormat$HourCycle;

.field public static final enum whitelist test-api HOUR_CYCLE_24:Landroid/icu/text/DateFormat$HourCycle;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DateFormat$HourCycle;
    .registers 4

    .line 499
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_11:Landroid/icu/text/DateFormat$HourCycle;

    sget-object v1, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_12:Landroid/icu/text/DateFormat$HourCycle;

    sget-object v2, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_23:Landroid/icu/text/DateFormat$HourCycle;

    sget-object v3, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_24:Landroid/icu/text/DateFormat$HourCycle;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 503
    new-instance v0, Landroid/icu/text/DateFormat$HourCycle;

    const-string v1, "HOUR_CYCLE_11"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_11:Landroid/icu/text/DateFormat$HourCycle;

    .line 508
    new-instance v0, Landroid/icu/text/DateFormat$HourCycle;

    const-string v1, "HOUR_CYCLE_12"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_12:Landroid/icu/text/DateFormat$HourCycle;

    .line 513
    new-instance v0, Landroid/icu/text/DateFormat$HourCycle;

    const-string v1, "HOUR_CYCLE_23"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_23:Landroid/icu/text/DateFormat$HourCycle;

    .line 518
    new-instance v0, Landroid/icu/text/DateFormat$HourCycle;

    const-string v1, "HOUR_CYCLE_24"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_24:Landroid/icu/text/DateFormat$HourCycle;

    .line 499
    invoke-static {}, Landroid/icu/text/DateFormat$HourCycle;->$values()[Landroid/icu/text/DateFormat$HourCycle;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat$HourCycle;->$VALUES:[Landroid/icu/text/DateFormat$HourCycle;

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

    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormat$HourCycle;
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

    .line 499
    const-class v0, Landroid/icu/text/DateFormat$HourCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat$HourCycle;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DateFormat$HourCycle;
    .registers 1

    .line 499
    sget-object v0, Landroid/icu/text/DateFormat$HourCycle;->$VALUES:[Landroid/icu/text/DateFormat$HourCycle;

    invoke-virtual {v0}, [Landroid/icu/text/DateFormat$HourCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateFormat$HourCycle;

    return-object v0
.end method

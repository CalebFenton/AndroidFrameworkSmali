.class public final enum Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeCollapse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberRangeFormatter$RangeCollapse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum whitelist test-api ALL:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum whitelist test-api AUTO:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum whitelist test-api NONE:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field public static final enum whitelist test-api UNIT:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
    .registers 4

    .line 41
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v1, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->NONE:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v2, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->UNIT:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v3, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->ALL:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 57
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->NONE:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 65
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v1, "UNIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->UNIT:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 73
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    const-string v1, "ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->ALL:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 41
    invoke-static {}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->$values()[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
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

    .line 41
    const-class v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;
    .registers 1

    .line 41
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-virtual {v0}, [Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    return-object v0
.end method

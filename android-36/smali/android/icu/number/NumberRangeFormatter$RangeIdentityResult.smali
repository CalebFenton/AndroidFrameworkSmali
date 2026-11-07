.class public final enum Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeIdentityResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum whitelist test-api EQUAL_AFTER_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum whitelist test-api EQUAL_BEFORE_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

.field public static final enum whitelist test-api NOT_EQUAL:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .registers 3

    .line 121
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_BEFORE_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    sget-object v1, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_AFTER_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    sget-object v2, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    filled-new-array {v0, v1, v2}, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 127
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v1, "EQUAL_BEFORE_ROUNDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_BEFORE_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 134
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v1, "EQUAL_AFTER_ROUNDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_AFTER_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 141
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    const-string v1, "NOT_EQUAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 121
    invoke-static {}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->$values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

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

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
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

    .line 121
    const-class v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .registers 1

    .line 121
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-virtual {v0}, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    return-object v0
.end method

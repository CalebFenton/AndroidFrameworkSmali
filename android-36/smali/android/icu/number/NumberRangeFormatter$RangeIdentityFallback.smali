.class public final enum Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
.super Ljava/lang/Enum;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeIdentityFallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum whitelist test-api APPROXIMATELY:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum whitelist test-api APPROXIMATELY_OR_SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum whitelist test-api RANGE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public static final enum whitelist test-api SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .registers 4

    .line 82
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    sget-object v1, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY_OR_SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    sget-object v2, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    sget-object v3, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->RANGE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 88
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v1, "SINGLE_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 96
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v1, "APPROXIMATELY_OR_SINGLE_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY_OR_SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 104
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v1, "APPROXIMATELY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 112
    new-instance v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    const-string v1, "RANGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->RANGE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 82
    invoke-static {}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->$values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
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

    .line 82
    const-class v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .registers 1

    .line 82
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->$VALUES:[Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-virtual {v0}, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    return-object v0
.end method

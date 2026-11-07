.class public final enum Landroid/icu/text/SearchIterator$ElementComparisonType;
.super Ljava/lang/Enum;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/SearchIterator$ElementComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum whitelist test-api ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum whitelist test-api PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum whitelist test-api STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/SearchIterator$ElementComparisonType;
    .registers 3

    .line 712
    sget-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v2, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 716
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string v1, "STANDARD_ELEMENT_COMPARISON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 729
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string v1, "PATTERN_BASE_WEIGHT_IS_WILDCARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 743
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string v1, "ANY_BASE_WEIGHT_IS_WILDCARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 712
    invoke-static {}, Landroid/icu/text/SearchIterator$ElementComparisonType;->$values()[Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

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

    .line 712
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/SearchIterator$ElementComparisonType;
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

    .line 712
    const-class v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/SearchIterator$ElementComparisonType;
    .registers 1

    .line 712
    sget-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-virtual {v0}, [Landroid/icu/text/SearchIterator$ElementComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

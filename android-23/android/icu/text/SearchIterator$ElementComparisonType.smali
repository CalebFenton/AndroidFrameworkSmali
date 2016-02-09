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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/SearchIterator$ElementComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 738
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@5
    const-string/jumbo v1, "STANDARD_ELEMENT_COMPARISON"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    #@b
    .line 743
    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@d
    .line 744
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@f
    const-string/jumbo v1, "PATTERN_BASE_WEIGHT_IS_WILDCARD"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    #@15
    .line 758
    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@17
    .line 760
    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@19
    const-string/jumbo v1, "ANY_BASE_WEIGHT_IS_WILDCARD"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 774
    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@21
    .line 737
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@24
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 737
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 737
    const-class v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    #@0
    .prologue
    .line 737
    sget-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2
    return-object v0
.end method

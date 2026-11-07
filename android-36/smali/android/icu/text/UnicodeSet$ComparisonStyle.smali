.class public final enum Landroid/icu/text/UnicodeSet$ComparisonStyle;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum whitelist test-api LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum whitelist test-api LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum whitelist test-api SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .registers 3

    .line 4625
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    sget-object v2, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/UnicodeSet$ComparisonStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4628
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    const-string v1, "SHORTER_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    .line 4631
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    const-string v1, "LEXICOGRAPHIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    .line 4634
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    const-string v1, "LONGER_FIRST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    .line 4625
    invoke-static {}, Landroid/icu/text/UnicodeSet$ComparisonStyle;->$values()[Landroid/icu/text/UnicodeSet$ComparisonStyle;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

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

    .line 4625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSet$ComparisonStyle;
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

    .line 4625
    const-class v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .registers 1

    .line 4625
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSet$ComparisonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSet$ComparisonStyle;

    return-object v0
.end method

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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

.field public static final enum SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;


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
    .line 4424
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@5
    const-string/jumbo v1, "SHORTER_FIRST"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    #@b
    .line 4427
    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@d
    .line 4428
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@f
    const-string/jumbo v1, "LEXICOGRAPHIC"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    #@15
    .line 4431
    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@17
    .line 4432
    new-instance v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@19
    const-string/jumbo v1, "LONGER_FIRST"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/UnicodeSet$ComparisonStyle;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 4435
    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@21
    .line 4423
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@24
    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LONGER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 4423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4423
    const-class v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .locals 1

    #@0
    .prologue
    .line 4423
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->$VALUES:[Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@2
    return-object v0
.end method

.class public Landroid/icu/number/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# static fields
.field private static final blacklist COMPACT_LONG:Landroid/icu/number/CompactNotation;

.field private static final blacklist COMPACT_SHORT:Landroid/icu/number/CompactNotation;

.field private static final blacklist ENGINEERING:Landroid/icu/number/ScientificNotation;

.field private static final blacklist SCIENTIFIC:Landroid/icu/number/ScientificNotation;

.field private static final blacklist SIMPLE:Landroid/icu/number/SimpleNotation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 17
    new-instance v0, Landroid/icu/number/ScientificNotation;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Landroid/icu/number/Notation;->SCIENTIFIC:Landroid/icu/number/ScientificNotation;

    .line 21
    new-instance v0, Landroid/icu/number/ScientificNotation;

    const/4 v1, 0x3

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Landroid/icu/number/Notation;->ENGINEERING:Landroid/icu/number/ScientificNotation;

    .line 25
    new-instance v0, Landroid/icu/number/CompactNotation;

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Landroid/icu/number/CompactNotation;-><init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Landroid/icu/number/Notation;->COMPACT_SHORT:Landroid/icu/number/CompactNotation;

    .line 26
    new-instance v0, Landroid/icu/number/CompactNotation;

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Landroid/icu/number/CompactNotation;-><init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Landroid/icu/number/Notation;->COMPACT_LONG:Landroid/icu/number/CompactNotation;

    .line 27
    new-instance v0, Landroid/icu/number/SimpleNotation;

    invoke-direct {v0}, Landroid/icu/number/SimpleNotation;-><init>()V

    sput-object v0, Landroid/icu/number/Notation;->SIMPLE:Landroid/icu/number/SimpleNotation;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static whitelist test-api compactLong()Landroid/icu/number/CompactNotation;
    .registers 1

    .line 155
    sget-object v0, Landroid/icu/number/Notation;->COMPACT_LONG:Landroid/icu/number/CompactNotation;

    return-object v0
.end method

.method public static whitelist test-api compactShort()Landroid/icu/number/CompactNotation;
    .registers 1

    .line 129
    sget-object v0, Landroid/icu/number/Notation;->COMPACT_SHORT:Landroid/icu/number/CompactNotation;

    return-object v0
.end method

.method public static whitelist test-api engineering()Landroid/icu/number/ScientificNotation;
    .registers 1

    .line 84
    sget-object v0, Landroid/icu/number/Notation;->ENGINEERING:Landroid/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static whitelist test-api scientific()Landroid/icu/number/ScientificNotation;
    .registers 1

    .line 58
    sget-object v0, Landroid/icu/number/Notation;->SCIENTIFIC:Landroid/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static whitelist test-api simple()Landroid/icu/number/SimpleNotation;
    .registers 1

    .line 184
    sget-object v0, Landroid/icu/number/Notation;->SIMPLE:Landroid/icu/number/SimpleNotation;

    return-object v0
.end method

.class public Lcom/android/icu/text/ExtendedDecimalFormatSymbols;
.super Ljava/lang/Object;
.source "ExtendedDecimalFormatSymbols.java"


# instance fields
.field private final blacklist numberingSystem:Landroid/icu/text/NumberingSystem;

.field private final blacklist uLocale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V
    .registers 3
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;
    .param p2, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->uLocale:Landroid/icu/util/ULocale;

    .line 38
    iput-object p2, p0, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->numberingSystem:Landroid/icu/text/NumberingSystem;

    .line 39
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Lcom/android/icu/text/ExtendedDecimalFormatSymbols;
    .registers 3
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;

    .line 48
    new-instance v0, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getLocalizedPatternSeparator()Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->uLocale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->numberingSystem:Landroid/icu/text/NumberingSystem;

    invoke-static {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocalizedPatternSeparator(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

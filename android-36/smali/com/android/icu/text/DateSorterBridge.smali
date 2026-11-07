.class public Lcom/android/icu/text/DateSorterBridge;
.super Ljava/lang/Object;
.source "DateSorterBridge.java"


# instance fields
.field private final blacklist today:Ljava/lang/String;

.field private final blacklist yesterday:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_3
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 53
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "fields/day/relative"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 55
    .end local v0    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "yesterdayStr":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_1d} :catch_3b

    .line 60
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "todayStr":Ljava/lang/String;
    nop

    .line 62
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    .line 64
    .local v1, "breakIterator":Landroid/icu/text/BreakIterator;
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/CaseMap$Title;->noBreakAdjustment()Landroid/icu/text/CaseMap$Title;

    move-result-object v3

    .line 65
    .local v3, "caseMap":Landroid/icu/text/CaseMap$Title;
    invoke-virtual {v3, p1, v1, v0}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/icu/text/DateSorterBridge;->yesterday:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, p1, v1, v2}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/icu/text/DateSorterBridge;->today:Ljava/lang/String;

    .line 67
    return-void

    .line 57
    .end local v0    # "yesterdayStr":Ljava/lang/String;
    .end local v1    # "breakIterator":Landroid/icu/text/BreakIterator;
    .end local v2    # "todayStr":Ljava/lang/String;
    .end local v3    # "caseMap":Landroid/icu/text/CaseMap$Title;
    :catch_3b
    move-exception v0

    .line 59
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist test-api createInstance(Ljava/util/Locale;)Lcom/android/icu/text/DateSorterBridge;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/icu/text/DateSorterBridge;

    invoke-direct {v0, p0}, Lcom/android/icu/text/DateSorterBridge;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public blacklist test-api getToday()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/icu/text/DateSorterBridge;->today:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getYesterday()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/icu/text/DateSorterBridge;->yesterday:Ljava/lang/String;

    return-object v0
.end method

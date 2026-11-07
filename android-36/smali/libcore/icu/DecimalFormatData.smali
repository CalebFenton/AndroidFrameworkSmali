.class public Llibcore/icu/DecimalFormatData;
.super Ljava/lang/Object;
.source "DecimalFormatData.java"


# static fields
.field private static final blacklist CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Llibcore/icu/DecimalFormatData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist NaN:Ljava/lang/String;

.field private final blacklist currencyPattern:Ljava/lang/String;

.field private final blacklist decimalSeparator:C

.field private final blacklist exponentSeparator:Ljava/lang/String;

.field private final blacklist groupingSeparator:C

.field private final blacklist infinity:Ljava/lang/String;

.field private final blacklist minusSign:Ljava/lang/String;

.field private final blacklist monetaryDecimalSeparator:Ljava/lang/String;

.field private final blacklist monetaryGroupSeparator:Ljava/lang/String;

.field private final blacklist numberPattern:Ljava/lang/String;

.field private final blacklist patternSeparator:C

.field private final blacklist perMill:Ljava/lang/String;

.field private final blacklist percent:Ljava/lang/String;

.field private final blacklist percentPattern:Ljava/lang/String;

.field private final blacklist zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Llibcore/icu/DecimalFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 61
    .local v0, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    iput-char v1, p0, Llibcore/icu/DecimalFormatData;->decimalSeparator:C

    .line 62
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    iput-char v1, p0, Llibcore/icu/DecimalFormatData;->groupingSeparator:C

    .line 63
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->percent:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->perMill:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->monetaryDecimalSeparator:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->monetaryGroupSeparator:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->minusSign:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->exponentSeparator:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->infinity:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/DecimalFormatData;->NaN:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    iput-char v1, p0, Llibcore/icu/DecimalFormatData;->zeroDigit:C

    .line 74
    invoke-static {p1}, Llibcore/icu/DecimalFormatData;->loadPatternSeparator(Ljava/util/Locale;)C

    move-result v1

    iput-char v1, p0, Llibcore/icu/DecimalFormatData;->patternSeparator:C

    .line 76
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    .line 78
    .local v1, "df":Landroid/icu/text/DecimalFormat;
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/DecimalFormatData;->numberPattern:Ljava/lang/String;

    .line 80
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/icu/text/DecimalFormat;

    .line 81
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/DecimalFormatData;->currencyPattern:Ljava/lang/String;

    .line 83
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/icu/text/DecimalFormat;

    .line 84
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/icu/DecimalFormatData;->percentPattern:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static blacklist getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 95
    const-string v0, "locale can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "languageTag":Ljava/lang/String;
    sget-object v1, Llibcore/icu/DecimalFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/DecimalFormatData;

    .line 102
    .local v1, "data":Llibcore/icu/DecimalFormatData;
    if-eqz v1, :cond_18

    .line 103
    return-object v1

    .line 106
    :cond_18
    new-instance v2, Llibcore/icu/DecimalFormatData;

    invoke-direct {v2, p0}, Llibcore/icu/DecimalFormatData;-><init>(Ljava/util/Locale;)V

    .line 107
    .end local v1    # "data":Llibcore/icu/DecimalFormatData;
    .local v2, "data":Llibcore/icu/DecimalFormatData;
    sget-object v1, Llibcore/icu/DecimalFormatData;->CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/icu/DecimalFormatData;

    .line 108
    .local v1, "prev":Llibcore/icu/DecimalFormatData;
    if-eqz v1, :cond_28

    .line 109
    return-object v1

    .line 111
    :cond_28
    return-object v2
.end method

.method public static blacklist initializeCacheInZygote()V
    .registers 1

    .line 121
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    .line 122
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    .line 124
    return-void
.end method

.method private static blacklist loadPatternSeparator(Ljava/util/Locale;)C
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 188
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 189
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    .line 195
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getRadix()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_18

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 196
    :cond_18
    sget-object v1, Landroid/icu/text/NumberingSystem;->LATIN:Landroid/icu/text/NumberingSystem;

    .line 198
    :cond_1a
    invoke-static {v0, v1}, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Lcom/android/icu/text/ExtendedDecimalFormatSymbols;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/android/icu/text/ExtendedDecimalFormatSymbols;->getLocalizedPatternSeparator()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "patternSeparator":Ljava/lang/String;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 202
    :cond_2a
    const-string v2, ";"

    .line 206
    :cond_2c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    return v3
.end method


# virtual methods
.method public blacklist getCurrencyPattern()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDecimalSeparator()C
    .registers 2

    .line 131
    iget-char v0, p0, Llibcore/icu/DecimalFormatData;->decimalSeparator:C

    return v0
.end method

.method public blacklist getExponentSeparator()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupingSeparator()C
    .registers 2

    .line 135
    iget-char v0, p0, Llibcore/icu/DecimalFormatData;->groupingSeparator:C

    return v0
.end method

.method public blacklist getInfinity()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinusSign()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->minusSign:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMonetaryDecimalSeparator()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->monetaryDecimalSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMonetaryGroupSeparator()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->monetaryGroupSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNaN()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNumberPattern()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->numberPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPatternSeparator()C
    .registers 2

    .line 139
    iget-char v0, p0, Llibcore/icu/DecimalFormatData;->patternSeparator:C

    return v0
.end method

.method public blacklist getPerMill()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->perMill:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPercent()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPercentPattern()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Llibcore/icu/DecimalFormatData;->percentPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getZeroDigit()C
    .registers 2

    .line 127
    iget-char v0, p0, Llibcore/icu/DecimalFormatData;->zeroDigit:C

    return v0
.end method

.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field private static final CACHED_PATTERNS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IDX_LANGUAGE:I = 0x0

.field private static final IDX_REGION:I = 0x2

.field private static final IDX_SCRIPT:I = 0x1

.field private static final IDX_VARIANT:I = 0x3

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_ZERO_ERROR:I

.field private static availableLocalesCache:[Ljava/util/Locale;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 33
    new-instance v0, Llibcore/util/BasicLruCache;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@7
    .line 32
    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@9
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static U_FAILURE(I)Z
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 371
    if-lez p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method public static native addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x5f

    #@a
    const/16 v2, 0x2d

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getAvailableBreakIteratorLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCalendarLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 253
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocalesNative()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native getAvailableCalendarLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCollatorLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 257
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocalesNative()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native getAvailableCollatorLocalesNative()[Ljava/lang/String;
.end method

.method public static native getAvailableCurrencyCodes()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 261
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocalesNative()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native getAvailableDateFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 265
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 269
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 242
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 243
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    #@e
    .line 245
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Ljava/util/Locale;

    #@16
    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableNumberFormatLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 273
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocalesNative()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native getAvailableNumberFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 278
    .local v1, "languageTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, "\t"

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 279
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@1e
    monitor-enter v4

    #@1f
    .line 280
    :try_start_0
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@21
    invoke-virtual {v3, v0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/String;

    #@27
    .line 281
    .local v2, "pattern":Ljava/lang/String;
    if-nez v2, :cond_0

    #@29
    .line 282
    invoke-static {p0, v1}, Llibcore/icu/ICU;->getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 283
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@2f
    invoke-virtual {v3, v0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_0
    monitor-exit v4

    #@33
    .line 285
    return-object v2

    #@34
    .line 279
    .end local v2    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3
.end method

.method private static native getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCldrVersion()Ljava/lang/String;
.end method

.method public static native getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencyDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static native getCurrencyFractionDigits(Ljava/lang/String;)I
.end method

.method public static native getCurrencyNumericCode(Ljava/lang/String;)I
.end method

.method private static native getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 14
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x4c

    #@2
    const/16 v12, 0x79

    #@4
    const/16 v11, 0x64

    #@6
    const/16 v10, 0x4d

    #@8
    const/16 v9, 0x27

    #@a
    .line 292
    const/4 v8, 0x3

    #@b
    new-array v2, v8, [C

    #@d
    .line 293
    .local v2, "result":[C
    const/4 v3, 0x0

    #@e
    .line 294
    .local v3, "resultIndex":I
    const/4 v5, 0x0

    #@f
    .line 295
    .local v5, "sawDay":Z
    const/4 v6, 0x0

    #@10
    .line 296
    .local v6, "sawMonth":Z
    const/4 v7, 0x0

    #@11
    .line 298
    .local v7, "sawYear":Z
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v8

    #@16
    if-ge v1, v8, :cond_e

    #@18
    .line 299
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 300
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    #@1e
    if-ne v0, v13, :cond_5

    #@20
    .line 301
    :cond_0
    if-ne v0, v11, :cond_1

    #@22
    if-eqz v5, :cond_7

    #@24
    .line 304
    :cond_1
    if-eq v0, v13, :cond_2

    #@26
    if-ne v0, v10, :cond_3

    #@28
    :cond_2
    if-eqz v6, :cond_8

    #@2a
    .line 307
    :cond_3
    if-ne v0, v12, :cond_4

    #@2c
    if-eqz v7, :cond_9

    #@2e
    .line 298
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 300
    :cond_5
    if-eq v0, v10, :cond_0

    #@33
    if-eq v0, v12, :cond_0

    #@35
    .line 311
    const/16 v8, 0x47

    #@37
    if-eq v0, v8, :cond_4

    #@39
    .line 313
    const/16 v8, 0x61

    #@3b
    if-lt v0, v8, :cond_a

    #@3d
    const/16 v8, 0x7a

    #@3f
    if-gt v0, v8, :cond_a

    #@41
    .line 314
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@43
    new-instance v9, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v10, "Bad pattern character \'"

    #@4b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    const-string/jumbo v10, "\' in "

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v8

    #@66
    .line 302
    :cond_7
    add-int/lit8 v4, v3, 0x1

    #@68
    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    aput-char v11, v2, v3

    #@6a
    .line 303
    const/4 v5, 0x1

    #@6b
    move v3, v4

    #@6c
    .line 301
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@6d
    .line 305
    :cond_8
    add-int/lit8 v4, v3, 0x1

    #@6f
    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v10, v2, v3

    #@71
    .line 306
    const/4 v6, 0x1

    #@72
    move v3, v4

    #@73
    .line 304
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@74
    .line 308
    :cond_9
    add-int/lit8 v4, v3, 0x1

    #@76
    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v12, v2, v3

    #@78
    .line 309
    const/4 v7, 0x1

    #@79
    move v3, v4

    #@7a
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@7b
    .line 313
    :cond_a
    const/16 v8, 0x41

    #@7d
    if-lt v0, v8, :cond_b

    #@7f
    const/16 v8, 0x5a

    #@81
    if-le v0, v8, :cond_6

    #@83
    .line 315
    :cond_b
    if-ne v0, v9, :cond_4

    #@85
    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@88
    move-result v8

    #@89
    add-int/lit8 v8, v8, -0x1

    #@8b
    if-ge v1, v8, :cond_c

    #@8d
    add-int/lit8 v8, v1, 0x1

    #@8f
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@92
    move-result v8

    #@93
    if-ne v8, v9, :cond_c

    #@95
    .line 317
    add-int/lit8 v1, v1, 0x1

    #@97
    .line 316
    goto :goto_1

    #@98
    .line 319
    :cond_c
    add-int/lit8 v8, v1, 0x1

    #@9a
    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@9d
    move-result v1

    #@9e
    .line 320
    const/4 v8, -0x1

    #@9f
    if-ne v1, v8, :cond_d

    #@a1
    .line 321
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a3
    new-instance v9, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v10, "Bad quoting in "

    #@ab
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v8

    #@bb
    .line 323
    :cond_d
    add-int/lit8 v1, v1, 0x1

    #@bd
    goto/16 :goto_1

    #@bf
    .line 329
    .end local v0    # "ch":C
    :cond_e
    return-object v2
.end method

.method public static native getDefaultLocale()Ljava/lang/String;
.end method

.method public static getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 402
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 408
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Country(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Language(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    #@a
    .line 58
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/lang/String;

    #@12
    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 46
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    #@a
    .line 48
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/lang/String;

    #@12
    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native getIcuVersion()Ljava/lang/String;
.end method

.method public static native getScript(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native getTZDataVersion()Ljava/lang/String;
.end method

.method public static native getUnicodeVersion()Ljava/lang/String;
.end method

.method static native initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z
.end method

.method public static localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;
    .locals 20
    .param p0, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    const/16 v1, 0x40

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v13

    #@8
    .line 163
    .local v13, "extensionsIndex":I
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@a
    .line 164
    .local v8, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@c
    .line 165
    .local v7, "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@e
    .line 167
    .local v6, "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, -0x1

    #@f
    if-eq v13, v1, :cond_3

    #@11
    .line 168
    new-instance v8, Ljava/util/HashMap;

    #@13
    .end local v8    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 169
    .restart local v8    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    #@18
    .end local v7    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@1b
    .line 170
    .restart local v7    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    #@1d
    .end local v6    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@20
    .line 189
    .restart local v6    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v1, v13, 0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    .line 190
    .local v14, "extensionsString":Ljava/lang/String;
    const-string/jumbo v1, ";"

    #@2b
    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object v12

    #@2f
    .line 191
    .local v12, "extensions":[Ljava/lang/String;
    const/4 v1, 0x0

    #@30
    array-length v3, v12

    #@31
    move v2, v1

    #@32
    :goto_0
    if-ge v2, v3, :cond_3

    #@34
    aget-object v10, v12, v2

    #@36
    .line 193
    .local v10, "extension":Ljava/lang/String;
    const-string/jumbo v1, "attribute="

    #@39
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 194
    const-string/jumbo v1, "attribute="

    #@42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@45
    move-result v1

    #@46
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v18

    #@4a
    .line 195
    .local v18, "unicodeAttributeValues":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@4d
    move-object/from16 v0, v18

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    const/4 v1, 0x0

    #@54
    array-length v5, v4

    #@55
    :goto_1
    if-ge v1, v5, :cond_1

    #@57
    aget-object v17, v4, v1

    #@59
    .line 196
    .local v17, "unicodeAttribute":Ljava/lang/String;
    move-object/from16 v0, v17

    #@5b
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 195
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_1

    #@61
    .line 199
    .end local v17    # "unicodeAttribute":Ljava/lang/String;
    .end local v18    # "unicodeAttributeValues":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x3d

    #@63
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    #@66
    move-result v16

    #@67
    .line 201
    .local v16, "separatorIndex":I
    const/4 v1, 0x1

    #@68
    move/from16 v0, v16

    #@6a
    if-ne v0, v1, :cond_2

    #@6c
    .line 203
    const/4 v1, 0x2

    #@6d
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@70
    move-result-object v19

    #@71
    .line 204
    .local v19, "value":Ljava/lang/String;
    const/4 v1, 0x0

    #@72
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v11

    #@76
    .line 206
    .local v11, "extensionId":C
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@79
    move-result-object v1

    #@7a
    move-object/from16 v0, v19

    #@7c
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 191
    .end local v11    # "extensionId":C
    .end local v16    # "separatorIndex":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    #@81
    move v2, v1

    #@82
    goto :goto_0

    #@83
    .line 209
    .restart local v16    # "separatorIndex":I
    :cond_2
    const/4 v1, 0x0

    #@84
    move/from16 v0, v16

    #@86
    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    .line 210
    add-int/lit8 v4, v16, 0x1

    #@8c
    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    .line 209
    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    goto :goto_2

    #@94
    .line 216
    .end local v10    # "extension":Ljava/lang/String;
    .end local v12    # "extensions":[Ljava/lang/String;
    .end local v14    # "extensionsString":Ljava/lang/String;
    .end local v16    # "separatorIndex":I
    :cond_3
    const/4 v1, 0x4

    #@95
    new-array v15, v1, [Ljava/lang/String;

    #@97
    const-string/jumbo v1, ""

    #@9a
    const/4 v2, 0x0

    #@9b
    aput-object v1, v15, v2

    #@9d
    const-string/jumbo v1, ""

    #@a0
    const/4 v2, 0x1

    #@a1
    aput-object v1, v15, v2

    #@a3
    const-string/jumbo v1, ""

    #@a6
    const/4 v2, 0x2

    #@a7
    aput-object v1, v15, v2

    #@a9
    const-string/jumbo v1, ""

    #@ac
    const/4 v2, 0x3

    #@ad
    aput-object v1, v15, v2

    #@af
    .line 217
    .local v15, "outputArray":[Ljava/lang/String;
    const/4 v1, -0x1

    #@b0
    if-ne v13, v1, :cond_4

    #@b2
    .line 218
    move-object/from16 v0, p0

    #@b4
    invoke-static {v0, v15}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    #@b7
    .line 224
    :goto_3
    new-instance v1, Ljava/util/Locale;

    #@b9
    const/4 v2, 0x0

    #@ba
    aget-object v2, v15, v2

    #@bc
    const/4 v3, 0x2

    #@bd
    aget-object v3, v15, v3

    #@bf
    .line 225
    const/4 v4, 0x3

    #@c0
    aget-object v4, v15, v4

    #@c2
    const/4 v5, 0x1

    #@c3
    aget-object v5, v15, v5

    #@c5
    .line 227
    const/4 v9, 0x1

    #@c6
    .line 224
    invoke-direct/range {v1 .. v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@c9
    return-object v1

    #@ca
    .line 220
    :cond_4
    const/4 v1, 0x0

    #@cb
    move-object/from16 v0, p0

    #@cd
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d0
    move-result-object v1

    #@d1
    invoke-static {v1, v15}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    #@d4
    goto :goto_3
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 5
    .param p0, "localeNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 234
    new-instance v1, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 235
    .local v1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/util/Locale;>;"
    const/4 v2, 0x0

    #@6
    array-length v3, p0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v0, p0, v2

    #@b
    .line 236
    .local v0, "localeName":Ljava/lang/String;
    invoke-static {v0}, Llibcore/icu/ICU;->localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 235
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 238
    .end local v0    # "localeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    #@18
    move-result v2

    #@19
    new-array v2, v2, [Ljava/util/Locale;

    #@1b
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, [Ljava/util/Locale;

    #@21
    return-object v2
.end method

.method private static parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "outputArray"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x3

    #@5
    .line 78
    const/16 v5, 0x5f

    #@7
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    .line 79
    .local v0, "first":I
    const/16 v5, 0x5f

    #@d
    add-int/lit8 v6, v0, 0x1

    #@f
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v1

    #@13
    .line 80
    .local v1, "second":I
    const/16 v5, 0x5f

    #@15
    add-int/lit8 v6, v1, 0x1

    #@17
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@1a
    move-result v3

    #@1b
    .line 82
    .local v3, "third":I
    if-ne v0, v10, :cond_0

    #@1d
    .line 83
    aput-object p0, p1, v9

    #@1f
    .line 77
    :goto_0
    return-void

    #@20
    .line 84
    :cond_0
    if-ne v1, v10, :cond_4

    #@22
    .line 89
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    aput-object v5, p1, v9

    #@28
    .line 90
    add-int/lit8 v5, v0, 0x1

    #@2a
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 92
    .local v2, "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@31
    move-result v5

    #@32
    const/4 v6, 0x4

    #@33
    if-ne v5, v6, :cond_1

    #@35
    .line 94
    aput-object v2, p1, v11

    #@37
    goto :goto_0

    #@38
    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    if-eq v5, v8, :cond_2

    #@3e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    if-ne v5, v7, :cond_3

    #@44
    .line 97
    :cond_2
    aput-object v2, p1, v8

    #@46
    goto :goto_0

    #@47
    .line 102
    :cond_3
    aput-object v2, p1, v7

    #@49
    goto :goto_0

    #@4a
    .line 104
    .end local v2    # "secondString":Ljava/lang/String;
    :cond_4
    if-ne v3, v10, :cond_a

    #@4c
    .line 110
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    aput-object v5, p1, v9

    #@52
    .line 111
    add-int/lit8 v5, v0, 0x1

    #@54
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 112
    .restart local v2    # "secondString":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    #@5a
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 114
    .local v4, "thirdString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@61
    move-result v5

    #@62
    const/4 v6, 0x4

    #@63
    if-ne v5, v6, :cond_7

    #@65
    .line 116
    aput-object v2, p1, v11

    #@67
    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@6a
    move-result v5

    #@6b
    if-eq v5, v8, :cond_5

    #@6d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@70
    move-result v5

    #@71
    if-ne v5, v7, :cond_6

    #@73
    .line 122
    :cond_5
    aput-object v4, p1, v8

    #@75
    goto :goto_0

    #@76
    .line 121
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@79
    move-result v5

    #@7a
    .line 120
    if-nez v5, :cond_5

    #@7c
    .line 124
    aput-object v4, p1, v7

    #@7e
    goto :goto_0

    #@7f
    .line 126
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_8

    #@85
    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@88
    move-result v5

    #@89
    if-ne v5, v8, :cond_9

    #@8b
    .line 129
    :cond_8
    aput-object v2, p1, v8

    #@8d
    .line 130
    aput-object v4, p1, v7

    #@8f
    goto :goto_0

    #@90
    .line 127
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@93
    move-result v5

    #@94
    if-eq v5, v7, :cond_8

    #@96
    .line 133
    add-int/lit8 v5, v0, 0x1

    #@98
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    aput-object v5, p1, v7

    #@9e
    goto :goto_0

    #@9f
    .line 140
    .end local v2    # "secondString":Ljava/lang/String;
    .end local v4    # "thirdString":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    aput-object v5, p1, v9

    #@a5
    .line 141
    add-int/lit8 v5, v0, 0x1

    #@a7
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    .line 142
    .restart local v2    # "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ae
    move-result v5

    #@af
    const/4 v6, 0x4

    #@b0
    if-ne v5, v6, :cond_b

    #@b2
    .line 143
    aput-object v2, p1, v11

    #@b4
    .line 144
    add-int/lit8 v5, v1, 0x1

    #@b6
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    aput-object v5, p1, v8

    #@bc
    .line 145
    add-int/lit8 v5, v3, 0x1

    #@be
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    aput-object v5, p1, v7

    #@c4
    goto/16 :goto_0

    #@c6
    .line 147
    :cond_b
    aput-object v2, p1, v8

    #@c8
    .line 148
    add-int/lit8 v5, v1, 0x1

    #@ca
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    aput-object v5, p1, v7

    #@d0
    goto/16 :goto_0
.end method

.method public static native setDefaultLocale(Ljava/lang/String;)V
.end method

.method private static native toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 350
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static native toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

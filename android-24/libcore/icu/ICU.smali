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
    .line 34
    new-instance v0, Llibcore/util/BasicLruCache;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@7
    .line 33
    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
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
    .line 384
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
    .line 443
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
    .line 262
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
    .line 266
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
    .line 270
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
    .line 274
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
    .line 278
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
    .line 282
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
    .line 255
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 256
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
    .line 258
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
    .line 286
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
    .line 290
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 291
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
    .line 292
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@1e
    monitor-enter v4

    #@1f
    .line 293
    :try_start_0
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@21
    invoke-virtual {v3, v0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/String;

    #@27
    .line 294
    .local v2, "pattern":Ljava/lang/String;
    if-nez v2, :cond_0

    #@29
    .line 295
    invoke-static {p0, v1}, Llibcore/icu/ICU;->getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 296
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    #@2f
    invoke-virtual {v3, v0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_0
    monitor-exit v4

    #@33
    .line 298
    return-object v2

    #@34
    .line 292
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
    .line 400
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
    .line 409
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
    .line 305
    const/4 v8, 0x3

    #@b
    new-array v2, v8, [C

    #@d
    .line 306
    .local v2, "result":[C
    const/4 v3, 0x0

    #@e
    .line 307
    .local v3, "resultIndex":I
    const/4 v5, 0x0

    #@f
    .line 308
    .local v5, "sawDay":Z
    const/4 v6, 0x0

    #@10
    .line 309
    .local v6, "sawMonth":Z
    const/4 v7, 0x0

    #@11
    .line 311
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
    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 313
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    #@1e
    if-ne v0, v13, :cond_5

    #@20
    .line 314
    :cond_0
    if-ne v0, v11, :cond_1

    #@22
    if-eqz v5, :cond_7

    #@24
    .line 317
    :cond_1
    if-eq v0, v13, :cond_2

    #@26
    if-ne v0, v10, :cond_3

    #@28
    :cond_2
    if-eqz v6, :cond_8

    #@2a
    .line 320
    :cond_3
    if-ne v0, v12, :cond_4

    #@2c
    if-eqz v7, :cond_9

    #@2e
    .line 311
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 313
    :cond_5
    if-eq v0, v10, :cond_0

    #@33
    if-eq v0, v12, :cond_0

    #@35
    .line 324
    const/16 v8, 0x47

    #@37
    if-eq v0, v8, :cond_4

    #@39
    .line 326
    const/16 v8, 0x61

    #@3b
    if-lt v0, v8, :cond_a

    #@3d
    const/16 v8, 0x7a

    #@3f
    if-gt v0, v8, :cond_a

    #@41
    .line 327
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
    .line 315
    :cond_7
    add-int/lit8 v4, v3, 0x1

    #@68
    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    aput-char v11, v2, v3

    #@6a
    .line 316
    const/4 v5, 0x1

    #@6b
    move v3, v4

    #@6c
    .line 314
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@6d
    .line 318
    :cond_8
    add-int/lit8 v4, v3, 0x1

    #@6f
    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v10, v2, v3

    #@71
    .line 319
    const/4 v6, 0x1

    #@72
    move v3, v4

    #@73
    .line 317
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@74
    .line 321
    :cond_9
    add-int/lit8 v4, v3, 0x1

    #@76
    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    aput-char v12, v2, v3

    #@78
    .line 322
    const/4 v7, 0x1

    #@79
    move v3, v4

    #@7a
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    goto :goto_1

    #@7b
    .line 326
    :cond_a
    const/16 v8, 0x41

    #@7d
    if-lt v0, v8, :cond_b

    #@7f
    const/16 v8, 0x5a

    #@81
    if-le v0, v8, :cond_6

    #@83
    .line 328
    :cond_b
    if-ne v0, v9, :cond_4

    #@85
    .line 329
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
    .line 330
    add-int/lit8 v1, v1, 0x1

    #@97
    .line 329
    goto :goto_1

    #@98
    .line 332
    :cond_c
    add-int/lit8 v8, v1, 0x1

    #@9a
    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@9d
    move-result v1

    #@9e
    .line 333
    const/4 v8, -0x1

    #@9f
    if-ne v1, v8, :cond_d

    #@a1
    .line 334
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
    .line 336
    :cond_d
    add-int/lit8 v1, v1, 0x1

    #@bd
    goto/16 :goto_1

    #@bf
    .line 342
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
    .line 415
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
    .line 421
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
    .line 433
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
    .line 427
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
    .line 56
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 57
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    #@a
    .line 59
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
    .line 46
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 47
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    #@a
    .line 49
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
    .locals 28
    .param p0, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    const/16 v23, 0x40

    #@2
    move-object/from16 v0, p0

    #@4
    move/from16 v1, v23

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v11

    #@a
    .line 164
    .local v11, "extensionsIndex":I
    sget-object v12, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@c
    .line 165
    .local v12, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    sget-object v21, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@e
    .line 166
    .local v21, "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v19, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@10
    .line 168
    .local v19, "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v23, -0x1

    #@12
    move/from16 v0, v23

    #@14
    if-eq v11, v0, :cond_3

    #@16
    .line 169
    new-instance v12, Ljava/util/HashMap;

    #@18
    .end local v12    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    #@1b
    .line 170
    .restart local v12    # "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashMap;

    #@1d
    .end local v21    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    #@20
    .line 171
    .restart local v21    # "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashSet;

    #@22
    .end local v19    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    #@25
    .line 190
    .restart local v19    # "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v23, v11, 0x1

    #@27
    move-object/from16 v0, p0

    #@29
    move/from16 v1, v23

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2e
    move-result-object v13

    #@2f
    .line 191
    .local v13, "extensionsString":Ljava/lang/String;
    const-string/jumbo v23, ";"

    #@32
    move-object/from16 v0, v23

    #@34
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    .line 192
    .local v10, "extensions":[Ljava/lang/String;
    const/16 v23, 0x0

    #@3a
    array-length v0, v10

    #@3b
    move/from16 v25, v0

    #@3d
    move/from16 v24, v23

    #@3f
    :goto_0
    move/from16 v0, v24

    #@41
    move/from16 v1, v25

    #@43
    if-ge v0, v1, :cond_3

    #@45
    aget-object v6, v10, v24

    #@47
    .line 194
    .local v6, "extension":Ljava/lang/String;
    const-string/jumbo v23, "attribute="

    #@4a
    move-object/from16 v0, v23

    #@4c
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4f
    move-result v23

    #@50
    if-eqz v23, :cond_0

    #@52
    .line 195
    const-string/jumbo v23, "attribute="

    #@55
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@58
    move-result v23

    #@59
    move/from16 v0, v23

    #@5b
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5e
    move-result-object v20

    #@5f
    .line 196
    .local v20, "unicodeAttributeValues":Ljava/lang/String;
    const-string/jumbo v23, "-"

    #@62
    move-object/from16 v0, v20

    #@64
    move-object/from16 v1, v23

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@69
    move-result-object v26

    #@6a
    const/16 v23, 0x0

    #@6c
    move-object/from16 v0, v26

    #@6e
    array-length v0, v0

    #@6f
    move/from16 v27, v0

    #@71
    :goto_1
    move/from16 v0, v23

    #@73
    move/from16 v1, v27

    #@75
    if-ge v0, v1, :cond_1

    #@77
    aget-object v18, v26, v23

    #@79
    .line 197
    .local v18, "unicodeAttribute":Ljava/lang/String;
    move-object/from16 v0, v19

    #@7b
    move-object/from16 v1, v18

    #@7d
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@80
    .line 196
    add-int/lit8 v23, v23, 0x1

    #@82
    goto :goto_1

    #@83
    .line 200
    .end local v18    # "unicodeAttribute":Ljava/lang/String;
    .end local v20    # "unicodeAttributeValues":Ljava/lang/String;
    :cond_0
    const/16 v23, 0x3d

    #@85
    move/from16 v0, v23

    #@87
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    #@8a
    move-result v17

    #@8b
    .line 202
    .local v17, "separatorIndex":I
    const/16 v23, 0x1

    #@8d
    move/from16 v0, v17

    #@8f
    move/from16 v1, v23

    #@91
    if-ne v0, v1, :cond_2

    #@93
    .line 204
    const/16 v23, 0x2

    #@95
    move/from16 v0, v23

    #@97
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9a
    move-result-object v22

    #@9b
    .line 205
    .local v22, "value":Ljava/lang/String;
    const/16 v23, 0x0

    #@9d
    move/from16 v0, v23

    #@9f
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    #@a2
    move-result v9

    #@a3
    .line 207
    .local v9, "extensionId":C
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@a6
    move-result-object v23

    #@a7
    move-object/from16 v0, v23

    #@a9
    move-object/from16 v1, v22

    #@ab
    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 192
    .end local v9    # "extensionId":C
    .end local v17    # "separatorIndex":I
    .end local v22    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v23, v24, 0x1

    #@b0
    move/from16 v24, v23

    #@b2
    goto :goto_0

    #@b3
    .line 210
    .restart local v17    # "separatorIndex":I
    :cond_2
    const/16 v23, 0x0

    #@b5
    move/from16 v0, v23

    #@b7
    move/from16 v1, v17

    #@b9
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bc
    move-result-object v23

    #@bd
    .line 211
    add-int/lit8 v26, v17, 0x1

    #@bf
    move/from16 v0, v26

    #@c1
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c4
    move-result-object v26

    #@c5
    .line 210
    move-object/from16 v0, v21

    #@c7
    move-object/from16 v1, v23

    #@c9
    move-object/from16 v2, v26

    #@cb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    goto :goto_2

    #@cf
    .line 217
    .end local v6    # "extension":Ljava/lang/String;
    .end local v10    # "extensions":[Ljava/lang/String;
    .end local v13    # "extensionsString":Ljava/lang/String;
    .end local v17    # "separatorIndex":I
    :cond_3
    const/16 v23, 0x4

    #@d1
    move/from16 v0, v23

    #@d3
    new-array v0, v0, [Ljava/lang/String;

    #@d5
    move-object/from16 v16, v0

    #@d7
    const-string/jumbo v23, ""

    #@da
    const/16 v24, 0x0

    #@dc
    aput-object v23, v16, v24

    #@de
    const-string/jumbo v23, ""

    #@e1
    const/16 v24, 0x1

    #@e3
    aput-object v23, v16, v24

    #@e5
    const-string/jumbo v23, ""

    #@e8
    const/16 v24, 0x2

    #@ea
    aput-object v23, v16, v24

    #@ec
    const-string/jumbo v23, ""

    #@ef
    const/16 v24, 0x3

    #@f1
    aput-object v23, v16, v24

    #@f3
    .line 218
    .local v16, "outputArray":[Ljava/lang/String;
    const/16 v23, -0x1

    #@f5
    move/from16 v0, v23

    #@f7
    if-ne v11, v0, :cond_4

    #@f9
    .line 219
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v16

    #@fd
    invoke-static {v0, v1}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    #@100
    .line 224
    :goto_3
    new-instance v5, Ljava/util/Locale$Builder;

    #@102
    invoke-direct {v5}, Ljava/util/Locale$Builder;-><init>()V

    #@105
    .line 225
    .local v5, "builder":Ljava/util/Locale$Builder;
    const/16 v23, 0x0

    #@107
    aget-object v23, v16, v23

    #@109
    move-object/from16 v0, v23

    #@10b
    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@10e
    .line 226
    const/16 v23, 0x2

    #@110
    aget-object v23, v16, v23

    #@112
    move-object/from16 v0, v23

    #@114
    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@117
    .line 227
    const/16 v23, 0x3

    #@119
    aget-object v23, v16, v23

    #@11b
    move-object/from16 v0, v23

    #@11d
    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@120
    .line 228
    const/16 v23, 0x1

    #@122
    aget-object v23, v16, v23

    #@124
    move-object/from16 v0, v23

    #@126
    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@129
    .line 229
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12c
    move-result-object v4

    #@12d
    .local v4, "attribute$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@130
    move-result v23

    #@131
    if-eqz v23, :cond_5

    #@133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@136
    move-result-object v3

    #@137
    check-cast v3, Ljava/lang/String;

    #@139
    .line 230
    .local v3, "attribute":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Locale$Builder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@13c
    goto :goto_4

    #@13d
    .line 221
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v4    # "attribute$iterator":Ljava/util/Iterator;
    .end local v5    # "builder":Ljava/util/Locale$Builder;
    :cond_4
    const/16 v23, 0x0

    #@13f
    move-object/from16 v0, p0

    #@141
    move/from16 v1, v23

    #@143
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@146
    move-result-object v23

    #@147
    move-object/from16 v0, v23

    #@149
    move-object/from16 v1, v16

    #@14b
    invoke-static {v0, v1}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    #@14e
    goto :goto_3

    #@14f
    .line 232
    .restart local v4    # "attribute$iterator":Ljava/util/Iterator;
    .restart local v5    # "builder":Ljava/util/Locale$Builder;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@152
    move-result-object v23

    #@153
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@156
    move-result-object v15

    #@157
    .local v15, "keyword$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@15a
    move-result v23

    #@15b
    if-eqz v23, :cond_6

    #@15d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@160
    move-result-object v14

    #@161
    check-cast v14, Ljava/util/Map$Entry;

    #@163
    .line 233
    .local v14, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@166
    move-result-object v23

    #@167
    check-cast v23, Ljava/lang/String;

    #@169
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@16c
    move-result-object v24

    #@16d
    check-cast v24, Ljava/lang/String;

    #@16f
    move-object/from16 v0, v23

    #@171
    move-object/from16 v1, v24

    #@173
    invoke-virtual {v5, v0, v1}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@176
    goto :goto_5

    #@177
    .line 236
    .end local v14    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@17a
    move-result-object v23

    #@17b
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17e
    move-result-object v8

    #@17f
    .local v8, "extension$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@182
    move-result v23

    #@183
    if-eqz v23, :cond_7

    #@185
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@188
    move-result-object v7

    #@189
    check-cast v7, Ljava/util/Map$Entry;

    #@18b
    .line 237
    .local v7, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@18e
    move-result-object v23

    #@18f
    check-cast v23, Ljava/lang/Character;

    #@191
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Character;->charValue()C

    #@194
    move-result v24

    #@195
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@198
    move-result-object v23

    #@199
    check-cast v23, Ljava/lang/String;

    #@19b
    move/from16 v0, v24

    #@19d
    move-object/from16 v1, v23

    #@19f
    invoke-virtual {v5, v0, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    #@1a2
    goto :goto_6

    #@1a3
    .line 240
    .end local v7    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v5}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    #@1a6
    move-result-object v23

    #@1a7
    return-object v23
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 5
    .param p0, "localeNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 247
    new-instance v1, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 248
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
    .line 249
    .local v0, "localeName":Ljava/lang/String;
    invoke-static {v0}, Llibcore/icu/ICU;->localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 248
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 251
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
    .line 79
    const/16 v5, 0x5f

    #@7
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    .line 80
    .local v0, "first":I
    const/16 v5, 0x5f

    #@d
    add-int/lit8 v6, v0, 0x1

    #@f
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v1

    #@13
    .line 81
    .local v1, "second":I
    const/16 v5, 0x5f

    #@15
    add-int/lit8 v6, v1, 0x1

    #@17
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@1a
    move-result v3

    #@1b
    .line 83
    .local v3, "third":I
    if-ne v0, v10, :cond_0

    #@1d
    .line 84
    aput-object p0, p1, v9

    #@1f
    .line 78
    :goto_0
    return-void

    #@20
    .line 85
    :cond_0
    if-ne v1, v10, :cond_4

    #@22
    .line 90
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    aput-object v5, p1, v9

    #@28
    .line 91
    add-int/lit8 v5, v0, 0x1

    #@2a
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 93
    .local v2, "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@31
    move-result v5

    #@32
    const/4 v6, 0x4

    #@33
    if-ne v5, v6, :cond_1

    #@35
    .line 95
    aput-object v2, p1, v11

    #@37
    goto :goto_0

    #@38
    .line 96
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
    .line 98
    :cond_2
    aput-object v2, p1, v8

    #@46
    goto :goto_0

    #@47
    .line 103
    :cond_3
    aput-object v2, p1, v7

    #@49
    goto :goto_0

    #@4a
    .line 105
    .end local v2    # "secondString":Ljava/lang/String;
    :cond_4
    if-ne v3, v10, :cond_a

    #@4c
    .line 111
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    aput-object v5, p1, v9

    #@52
    .line 112
    add-int/lit8 v5, v0, 0x1

    #@54
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 113
    .restart local v2    # "secondString":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    #@5a
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 115
    .local v4, "thirdString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@61
    move-result v5

    #@62
    const/4 v6, 0x4

    #@63
    if-ne v5, v6, :cond_7

    #@65
    .line 117
    aput-object v2, p1, v11

    #@67
    .line 121
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
    .line 123
    :cond_5
    aput-object v4, p1, v8

    #@75
    goto :goto_0

    #@76
    .line 122
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@79
    move-result v5

    #@7a
    .line 121
    if-nez v5, :cond_5

    #@7c
    .line 125
    aput-object v4, p1, v7

    #@7e
    goto :goto_0

    #@7f
    .line 127
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_8

    #@85
    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@88
    move-result v5

    #@89
    if-ne v5, v8, :cond_9

    #@8b
    .line 130
    :cond_8
    aput-object v2, p1, v8

    #@8d
    .line 131
    aput-object v4, p1, v7

    #@8f
    goto :goto_0

    #@90
    .line 128
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@93
    move-result v5

    #@94
    if-eq v5, v7, :cond_8

    #@96
    .line 134
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
    .line 141
    .end local v2    # "secondString":Ljava/lang/String;
    .end local v4    # "thirdString":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    aput-object v5, p1, v9

    #@a5
    .line 142
    add-int/lit8 v5, v0, 0x1

    #@a7
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    .line 143
    .restart local v2    # "secondString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ae
    move-result v5

    #@af
    const/4 v6, 0x4

    #@b0
    if-ne v5, v6, :cond_b

    #@b2
    .line 144
    aput-object v2, p1, v11

    #@b4
    .line 145
    add-int/lit8 v5, v1, 0x1

    #@b6
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    aput-object v5, p1, v8

    #@bc
    .line 146
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
    .line 148
    :cond_b
    aput-object v2, p1, v8

    #@c8
    .line 149
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
    .line 363
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
    .line 369
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

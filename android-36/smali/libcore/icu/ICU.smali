.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field private static final greylist CACHED_PATTERNS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IDX_LANGUAGE:I = 0x0

.field private static final blacklist IDX_REGION:I = 0x2

.field private static final blacklist IDX_SCRIPT:I = 0x1

.field private static final blacklist IDX_VARIANT:I = 0x3

.field private static volatile blacklist availableLocalesCache:[Ljava/util/Locale;

.field private static volatile blacklist isoCountries:[Ljava/lang/String;

.field private static volatile blacklist isoCountriesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    .line 68
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static greylist addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 714
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clearAvailableLocales()V
    .registers 1

    .line 359
    const/4 v0, 0x0

    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    .line 360
    return-void
.end method

.method public static blacklist convertToTzId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cldrShortTzId"    # Ljava/lang/String;

    .line 757
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 758
    return-object v0

    .line 760
    :cond_4
    const-string v1, "tz"

    invoke-static {v1, p0}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "tzid":Ljava/lang/String;
    if-eqz v1, :cond_1a

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    .line 766
    :cond_19
    return-object v1

    .line 764
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 345
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesInternal()[Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private static blacklist getAvailableLocalesInternal()[Ljava/util/Locale;
    .registers 2

    .line 334
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v0, :cond_1a

    .line 335
    const-class v0, Llibcore/icu/ICU;

    monitor-enter v0

    .line 336
    :try_start_7
    sget-object v1, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v1, :cond_15

    .line 337
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    .line 339
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 341
    :cond_1a
    :goto_1a
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    return-object v0
.end method

.method private static native blacklist getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static greylist getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 381
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "languageTag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    monitor-enter v2

    .line 384
    :try_start_1e
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v3, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    .local v3, "pattern":Ljava/lang/String;
    if-nez v3, :cond_32

    .line 386
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getBestDateTimePattern0(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 387
    sget-object v4, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v4, v1, v3}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_32
    monitor-exit v2

    return-object v3

    .line 390
    .end local v3    # "pattern":Ljava/lang/String;
    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_34

    throw v3
.end method

.method private static blacklist getBestDateTimePattern0(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 394
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 395
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 400
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->getBestDateTimePattern0(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist getCldrVersion()Ljava/lang/String;
.end method

.method public static blacklist getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 675
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2e

    .line 680
    :cond_a
    :try_start_a
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v1
    :try_end_17
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_a .. :try_end_17} :catch_2c

    .line 683
    .local v1, "countryLocale":Landroid/icu/util/ULocale;
    nop

    .line 684
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/icu/util/Currency;->getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "isoCodes":[Ljava/lang/String;
    if-eqz v2, :cond_2b

    array-length v3, v2

    if-nez v3, :cond_27

    goto :goto_2b

    .line 688
    :cond_27
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0

    .line 686
    :cond_2b
    :goto_2b
    return-object v0

    .line 681
    .end local v1    # "countryLocale":Landroid/icu/util/ULocale;
    .end local v2    # "isoCodes":[Ljava/lang/String;
    :catch_2c
    move-exception v1

    .line 682
    .local v1, "e":Landroid/icu/util/IllformedLocaleException;
    return-object v0

    .line 676
    .end local v1    # "e":Landroid/icu/util/IllformedLocaleException;
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public static greylist getDateFormatOrder(Ljava/lang/String;)[C
    .registers 12
    .param p0, "pattern"    # Ljava/lang/String;

    .line 405
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 406
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 407
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 408
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 409
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 411
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c3

    .line 412
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 413
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_9a

    if-eq v6, v7, :cond_9a

    if-eq v6, v9, :cond_9a

    if-ne v6, v8, :cond_24

    goto/16 :goto_9a

    .line 424
    :cond_24
    const/16 v7, 0x47

    if-ne v6, v7, :cond_2a

    goto/16 :goto_bf

    .line 426
    :cond_2a
    const/16 v7, 0x61

    if-lt v6, v7, :cond_32

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3b

    :cond_32
    const/16 v7, 0x41

    if-lt v6, v7, :cond_5e

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3b

    goto :goto_5e

    .line 427
    :cond_3b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 428
    :cond_5e
    :goto_5e
    const/16 v7, 0x27

    if-ne v6, v7, :cond_bf

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_75

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_75

    .line 430
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 432
    :cond_75
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 433
    const/4 v7, -0x1

    if-eq v5, v7, :cond_81

    .line 436
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 434
    :cond_81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 414
    :cond_9a
    :goto_9a
    if-ne v6, v10, :cond_a6

    if-nez v2, :cond_a6

    .line 415
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 416
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_bf

    .line 417
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_a6
    if-eq v6, v7, :cond_aa

    if-ne v6, v9, :cond_b4

    :cond_aa
    if-nez v3, :cond_b4

    .line 418
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 419
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_bf

    .line 420
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_b4
    if-ne v6, v8, :cond_bf

    if-nez v4, :cond_bf

    .line 421
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 422
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 411
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_bf
    :goto_bf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 442
    .end local v5    # "i":I
    :cond_c3
    return-object v0
.end method

.method public static native blacklist getDefaultLocale()Ljava/lang/String;
.end method

.method public static blacklist getExtendedCalendar(Ljava/util/Locale;Ljava/lang/String;)Lcom/android/icu/util/ExtendedCalendar;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "calendarType"    # Ljava/lang/String;

    .line 745
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 746
    const-string v1, "calendar"

    invoke-virtual {v0, v1, p1}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 747
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Lcom/android/icu/util/ExtendedCalendar;->getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/util/ExtendedCalendar;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getGMTZeroFormatString(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 770
    invoke-static {p0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->getGMTZeroFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist getISO3Country(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native blacklist getISO3Language(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getISOCountries()[Ljava/lang/String;
    .registers 1

    .line 105
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesInternal()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getISOCountriesInternal()[Ljava/lang/String;
    .registers 2

    .line 128
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_16

    .line 129
    const-class v0, Llibcore/icu/ICU;

    monitor-enter v0

    .line 130
    :try_start_7
    sget-object v1, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v1, :cond_11

    .line 131
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    .line 133
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 135
    :cond_16
    :goto_16
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    return-object v0
.end method

.method private static native blacklist getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static blacklist getISOLanguages()[Ljava/lang/String;
    .registers 2

    .line 91
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_16

    .line 92
    const-class v0, Llibcore/icu/ICU;

    monitor-enter v0

    .line 93
    :try_start_7
    sget-object v1, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v1, :cond_11

    .line 94
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    .line 96
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 98
    :cond_16
    :goto_16
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native blacklist getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native blacklist getIcuVersion()Ljava/lang/String;
.end method

.method public static native greylist getScript(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method static blacklist getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "is24Hour"    # Z
    .param p2, "withSecond"    # Z

    .line 368
    if-eqz p2, :cond_a

    .line 369
    if-eqz p1, :cond_7

    const-string v0, "Hms"

    goto :goto_9

    :cond_7
    const-string v0, "hms"

    .local v0, "skeleton":Ljava/lang/String;
    :goto_9
    goto :goto_11

    .line 371
    .end local v0    # "skeleton":Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_f

    const-string v0, "Hm"

    goto :goto_11

    :cond_f
    const-string v0, "hm"

    .line 373
    .restart local v0    # "skeleton":Ljava/lang/String;
    :goto_11
    invoke-static {v0, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static native blacklist getUnicodeVersion()Ljava/lang/String;
.end method

.method public static blacklist hasBinaryProperty(II)Z
    .registers 3
    .param p0, "ch"    # I
    .param p1, "property"    # I

    .line 784
    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist initializeCacheInZygote()V
    .registers 6

    .line 79
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_10
    if-ge v2, v0, :cond_23

    aget-object v5, v1, v2

    .line 80
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {v5, v3, v3}, Llibcore/icu/ICU;->getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;

    .line 81
    invoke-static {v5, v3, v4}, Llibcore/icu/ICU;->getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;

    .line 82
    invoke-static {v5, v4, v3}, Llibcore/icu/ICU;->getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;

    .line 83
    invoke-static {v5, v4, v4}, Llibcore/icu/ICU;->getTimePattern(Ljava/util/Locale;ZZ)Ljava/lang/String;

    .line 79
    .end local v5    # "locale":Ljava/util/Locale;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 85
    :cond_23
    return-void
.end method

.method public static blacklist isIsoCountry(Ljava/lang/String;)Z
    .registers 8
    .param p0, "country"    # Ljava/lang/String;

    .line 112
    sget-object v0, Llibcore/icu/ICU;->isoCountriesSet:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 113
    const-class v0, Llibcore/icu/ICU;

    monitor-enter v0

    .line 114
    :try_start_8
    sget-object v2, Llibcore/icu/ICU;->isoCountriesSet:Ljava/util/Set;

    if-nez v2, :cond_25

    .line 115
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesInternal()[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "isoCountries":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 117
    .local v3, "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v1

    :goto_18
    if-ge v5, v4, :cond_23

    aget-object v6, v2, v5

    .line 118
    .local v6, "isoCountry":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v6    # "isoCountry":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 120
    :cond_23
    sput-object v3, Llibcore/icu/ICU;->isoCountriesSet:Ljava/util/Set;

    .line 122
    .end local v2    # "isoCountries":[Ljava/lang/String;
    .end local v3    # "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v1

    .line 124
    :cond_2a
    :goto_2a
    if-eqz p0, :cond_35

    sget-object v0, Llibcore/icu/ICU;->isoCountriesSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public static blacklist localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;
    .registers 18
    .param p0, "localeId"    # Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 242
    .local v1, "extensionsIndex":I
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 243
    .local v2, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 244
    .local v3, "unicodeKeywordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 246
    .local v4, "unicodeAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_85

    .line 247
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v2, v9

    .line 248
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v9

    .line 249
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v4, v9

    .line 268
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "extensionsString":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, "extensions":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v11, :cond_85

    aget-object v13, v10, v12

    .line 272
    .local v13, "extension":Ljava/lang/String;
    const-string v14, "attribute="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 273
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 274
    .local v14, "unicodeAttributeValues":Ljava/lang/String;
    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v8, v15

    const/4 v6, 0x0

    :goto_4e
    if-ge v6, v8, :cond_58

    aget-object v5, v15, v6

    .line 275
    .local v5, "unicodeAttribute":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v5    # "unicodeAttribute":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 277
    .end local v14    # "unicodeAttributeValues":Ljava/lang/String;
    :cond_58
    goto :goto_81

    .line 278
    :cond_59
    const/16 v5, 0x3d

    invoke-virtual {v13, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 280
    .local v5, "separatorIndex":I
    if-ne v5, v7, :cond_73

    .line 282
    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 285
    .local v14, "extensionId":C
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-interface {v2, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v8    # "value":Ljava/lang/String;
    .end local v14    # "extensionId":C
    goto :goto_81

    .line 288
    :cond_73
    const/4 v6, 0x0

    invoke-virtual {v13, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v5, 0x1

    .line 289
    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v5    # "separatorIndex":I
    .end local v13    # "extension":Ljava/lang/String;
    :goto_81
    add-int/lit8 v12, v12, 0x1

    const/4 v8, -0x1

    goto :goto_32

    .line 295
    .end local v9    # "extensionsString":Ljava/lang/String;
    .end local v10    # "extensions":[Ljava/lang/String;
    :cond_85
    const-string v5, ""

    filled-new-array {v5, v5, v5, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "outputArray":[Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_93

    .line 297
    invoke-static {v0, v5}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_9b

    .line 299
    :cond_93
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    :goto_9b
    new-instance v8, Ljava/util/Locale$Builder;

    invoke-direct {v8}, Ljava/util/Locale$Builder;-><init>()V

    .line 303
    .local v8, "builder":Ljava/util/Locale$Builder;
    aget-object v6, v5, v6

    invoke-virtual {v8, v6}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 304
    const/16 v16, 0x2

    aget-object v6, v5, v16

    invoke-virtual {v8, v6}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 305
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-virtual {v8, v6}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 306
    aget-object v6, v5, v7

    invoke-virtual {v8, v6}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 307
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 308
    .local v7, "attribute":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/Locale$Builder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 309
    .end local v7    # "attribute":Ljava/lang/String;
    goto :goto_bb

    .line 310
    :cond_cb
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 311
    .local v7, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 312
    .end local v7    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_d3

    .line 314
    :cond_ef
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_117

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 315
    .local v7, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    .line 316
    .end local v7    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    goto :goto_f7

    .line 318
    :cond_117
    invoke-virtual {v8}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v6

    return-object v6
.end method

.method public static blacklist localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .registers 6
    .param p0, "localeNames"    # [Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 326
    .local v0, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/util/Locale;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 327
    .local v3, "localeName":Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v3    # "localeName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 329
    :cond_15
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Locale;

    return-object v1
.end method

.method private static blacklist parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "outputArray"    # [Ljava/lang/String;

    .line 157
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 158
    .local v1, "first":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 159
    .local v2, "second":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 161
    .local v0, "third":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1a

    .line 162
    aput-object p0, p1, v3

    goto/16 :goto_ce

    .line 163
    :cond_1a
    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v2, v4, :cond_49

    .line 168
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    .line 169
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "secondString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_35

    .line 173
    aput-object v3, p1, v8

    goto :goto_47

    .line 174
    :cond_35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v6, :cond_45

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_42

    goto :goto_45

    .line 181
    :cond_42
    aput-object v3, p1, v7

    goto :goto_47

    .line 176
    :cond_45
    :goto_45
    aput-object v3, p1, v6

    .line 183
    .end local v3    # "secondString":Ljava/lang/String;
    :goto_47
    goto/16 :goto_ce

    :cond_49
    if-ne v0, v4, :cond_9f

    .line 189
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    .line 190
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "secondString":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "thirdString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v5, :cond_7e

    .line 195
    aput-object v3, p1, v8

    .line 199
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_7b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_7b

    .line 200
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_78

    goto :goto_7b

    .line 203
    :cond_78
    aput-object v4, p1, v7

    goto :goto_9e

    .line 201
    :cond_7b
    :goto_7b
    aput-object v4, p1, v6

    goto :goto_9e

    .line 205
    :cond_7e
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9a

    .line 206
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_9a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_91

    goto :goto_9a

    .line 212
    :cond_91
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto :goto_9e

    .line 208
    :cond_9a
    :goto_9a
    aput-object v3, p1, v6

    .line 209
    aput-object v4, p1, v7

    .line 214
    .end local v3    # "secondString":Ljava/lang/String;
    .end local v4    # "thirdString":Ljava/lang/String;
    :goto_9e
    goto :goto_ce

    .line 219
    :cond_9f
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    .line 220
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3    # "secondString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_c4

    .line 222
    aput-object v3, p1, v8

    .line 223
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v6

    .line 224
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v7

    goto :goto_ce

    .line 226
    :cond_c4
    aput-object v3, p1, v6

    .line 227
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v7

    .line 230
    .end local v3    # "secondString":Ljava/lang/String;
    :goto_ce
    return-void
.end method

.method private static blacklist removeBFromDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 565
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    .line 566
    .local v1, "prev":C
    const/4 v2, 0x0

    .line 567
    .local v2, "isInQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 568
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 569
    .local v4, "curr":C
    if-eqz v2, :cond_22

    .line 570
    const/16 v5, 0x27

    if-ne v4, v5, :cond_1e

    .line 573
    const/4 v2, 0x0

    .line 575
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    goto :goto_3f

    .line 578
    :cond_22
    sparse-switch v4, :sswitch_data_5a

    .line 598
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 582
    :sswitch_29
    goto :goto_3e

    .line 594
    :sswitch_2a
    const/4 v2, 0x1

    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    goto :goto_3e

    .line 586
    :sswitch_2f
    if-eqz v3, :cond_3a

    const/16 v5, 0x42

    if-eq v1, v5, :cond_39

    const/16 v5, 0x62

    if-ne v1, v5, :cond_3a

    :cond_39
    goto :goto_3e

    .line 590
    :cond_3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    nop

    .line 601
    :goto_3e
    move v1, v4

    .line 567
    .end local v4    # "curr":C
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 606
    .end local v3    # "i":I
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 607
    .local v3, "lastIndex":I
    if-ltz v3, :cond_55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_55

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 610
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_data_5a
    .sparse-switch
        0x20 -> :sswitch_2f
        0x27 -> :sswitch_2a
        0x42 -> :sswitch_29
        0x62 -> :sswitch_29
    .end sparse-switch
.end method

.method private static blacklist replaceSymbolInDatePattern(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 9
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "existingSymbol"    # C
    .param p2, "newSymbol"    # C

    .line 616
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 618
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 621
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 622
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 623
    .local v2, "isInQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 624
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 626
    .local v4, "curr":C
    if-eqz v2, :cond_2a

    .line 627
    if-ne v4, v0, :cond_28

    .line 630
    const/4 v2, 0x0

    .line 632
    :cond_28
    move v5, v4

    .local v5, "modified":C
    goto :goto_34

    .line 633
    .end local v5    # "modified":C
    :cond_2a
    if-ne v4, v0, :cond_2f

    .line 634
    const/4 v2, 0x1

    .line 635
    move v5, v4

    .restart local v5    # "modified":C
    goto :goto_34

    .line 636
    .end local v5    # "modified":C
    :cond_2f
    if-ne v4, p1, :cond_33

    .line 637
    move v5, p2

    .restart local v5    # "modified":C
    goto :goto_34

    .line 639
    .end local v5    # "modified":C
    :cond_33
    move v5, v4

    .line 641
    .restart local v5    # "modified":C
    :goto_34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    .end local v4    # "curr":C
    .end local v5    # "modified":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 643
    .end local v3    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setDefaultLocale(Ljava/lang/String;)V
    .registers 1
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 732
    invoke-static {p0}, Lcom/android/icu/util/LocaleNative;->setDefault(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public static blacklist streamAvailableLocales()Ljava/util/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesInternal()[Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist transformHashSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;

    .line 493
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 494
    return-object p0

    .line 497
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 499
    .local v2, "isInQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 500
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 501
    .local v4, "curr":C
    const/16 v5, 0x27

    if-eqz v2, :cond_2a

    .line 502
    if-ne v4, v5, :cond_26

    .line 505
    const/4 v2, 0x0

    .line 507
    :cond_26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 508
    :cond_2a
    if-ne v4, v0, :cond_32

    .line 509
    const-string v5, "\'#\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 511
    :cond_32
    if-ne v4, v5, :cond_35

    .line 512
    const/4 v2, 0x1

    .line 514
    :cond_35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    .end local v4    # "curr":C
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 517
    .end local v3    # "i":I
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist transformIcuDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "isJavaTime"    # Z

    .line 477
    if-nez p0, :cond_4

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 481
    :cond_4
    invoke-static {p0}, Llibcore/icu/ICU;->transformSymbolB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 483
    if-eqz p1, :cond_e

    .line 486
    invoke-static {p0}, Llibcore/icu/ICU;->transformHashSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 489
    :cond_e
    return-object p0
.end method

.method public static blacklist transformIcuDateTimePattern_forJavaText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->transformIcuDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist transformIcuDateTimePattern_forJavaTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x1

    invoke-static {p0, v0}, Llibcore/icu/ICU;->transformIcuDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist transformSymbolB(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "pattern"    # Ljava/lang/String;

    .line 526
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 528
    .local v1, "contains_B":Z
    :goto_e
    const/16 v5, 0x62

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    .line 530
    .local v2, "contains_b":Z
    :goto_18
    if-nez v1, :cond_1d

    if-nez v2, :cond_1d

    .line 531
    return-object p0

    .line 539
    :cond_1d
    const/16 v3, 0x48

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_2a

    .line 540
    invoke-static {p0}, Llibcore/icu/ICU;->removeBFromDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 545
    :cond_2a
    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_40

    .line 546
    const/16 v3, 0x61

    if-eqz v2, :cond_3a

    .line 547
    invoke-static {p0, v5, v3}, Llibcore/icu/ICU;->replaceSymbolInDatePattern(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    .line 549
    :cond_3a
    if-eqz v1, :cond_40

    .line 550
    invoke-static {p0, v0, v3}, Llibcore/icu/ICU;->replaceSymbolInDatePattern(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    .line 554
    :cond_40
    return-object p0
.end method

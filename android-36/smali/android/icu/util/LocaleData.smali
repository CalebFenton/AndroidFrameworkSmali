.class public final Landroid/icu/util/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleData$MeasurementSystem;,
        Landroid/icu/util/LocaleData$PaperSize;
    }
.end annotation


# static fields
.field public static final whitelist test-api ALT_QUOTATION_END:I = 0x3

.field public static final whitelist test-api ALT_QUOTATION_START:I = 0x2

.field public static final greylist-max-o DELIMITER_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o DELIMITER_TYPES:[Ljava/lang/String;

.field public static final greylist-max-o ES_AUXILIARY:I = 0x1

.field public static final greylist-max-o ES_COUNT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ES_CURRENCY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ES_INDEX:I = 0x2

.field public static final greylist-max-o ES_PUNCTUATION:I = 0x4

.field public static final greylist-max-o ES_STANDARD:I = 0x0

.field private static final greylist-max-o LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"

.field private static final greylist-max-o MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"

.field private static final greylist-max-o PAPER_SIZE:Ljava/lang/String; = "PaperSize"

.field private static final greylist-max-o PATTERN:Ljava/lang/String; = "pattern"

.field public static final whitelist test-api QUOTATION_END:I = 0x1

.field public static final whitelist test-api QUOTATION_START:I = 0x0

.field private static final greylist-max-o SEPARATOR:Ljava/lang/String; = "separator"

.field private static greylist-max-o gCLDRVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private greylist-max-o bundle:Landroid/icu/impl/ICUResourceBundle;

.field private greylist-max-o langBundle:Landroid/icu/impl/ICUResourceBundle;

.field private blacklist langBundleException:Ljava/util/MissingResourceException;

.field private greylist-max-o noSubstitute:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 271
    const-string v0, "alternateQuotationStart"

    const-string v1, "alternateQuotationEnd"

    const-string v2, "quotationStart"

    const-string v3, "quotationEnd"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getCLDRVersion()Landroid/icu/util/VersionInfo;
    .registers 3

    .line 451
    sget-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    if-nez v0, :cond_1e

    .line 453
    const-string v0, "supplementalData"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 454
    .local v0, "supplementalDataBundle":Landroid/icu/util/UResourceBundle;
    const-string v1, "cldrVersion"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 455
    .local v1, "cldrVersionBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    .line 457
    .end local v0    # "supplementalDataBundle":Landroid/icu/util/UResourceBundle;
    .end local v1    # "cldrVersionBundle":Landroid/icu/util/UResourceBundle;
    :cond_1e
    sget-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static greylist-max-o getExemplarSet(Landroid/icu/util/ULocale;I)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "options"    # I

    .line 143
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "options"    # I
    .param p2, "extype"    # I

    .line 165
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Landroid/icu/util/LocaleData;
    .registers 1

    .line 244
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 225
    new-instance v0, Landroid/icu/util/LocaleData;

    invoke-direct {v0}, Landroid/icu/util/LocaleData;-><init>()V

    .line 226
    .local v0, "ld":Landroid/icu/util/LocaleData;
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    .line 228
    :try_start_f
    const-string v1, "android/icu/impl/data/icudata/lang"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_19} :catch_1a

    .line 232
    goto :goto_1d

    .line 229
    :catch_1a
    move-exception v1

    .line 231
    .local v1, "mre":Ljava/util/MissingResourceException;
    iput-object v1, v0, Landroid/icu/util/LocaleData;->langBundleException:Ljava/util/MissingResourceException;

    .line 233
    .end local v1    # "mre":Ljava/util/MissingResourceException;
    :goto_1d
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    .line 234
    return-object v0
.end method

.method public static final whitelist test-api getMeasurementSystem(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$MeasurementSystem;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 356
    const-string v0, "MeasurementSystem"

    invoke-static {p0, v0}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 358
    .local v0, "sysBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 365
    const/4 v1, 0x0

    return-object v1

    .line 361
    :pswitch_f
    sget-object v1, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v1

    .line 360
    :pswitch_12
    sget-object v1, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v1

    .line 359
    :pswitch_15
    sget-object v1, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v1

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static final whitelist test-api getPaperSize(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$PaperSize;
    .registers 7
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 404
    const-string v0, "PaperSize"

    invoke-static {p0, v0}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 405
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    .line 406
    .local v1, "size":[I
    new-instance v2, Landroid/icu/util/LocaleData$PaperSize;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/icu/util/LocaleData$PaperSize;-><init>(IILandroid/icu/util/LocaleData-IA;)V

    return-object v2
.end method

.method private static greylist-max-o measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 9
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "measurementType"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "measTypeBundle":Landroid/icu/util/UResourceBundle;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "region":Ljava/lang/String;
    :try_start_6
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "supplementalData"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 309
    .local v2, "rb":Landroid/icu/util/UResourceBundle;
    const-string v3, "measurementData"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3
    :try_end_16
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_16} :catch_2f

    .line 310
    .local v3, "measurementData":Landroid/icu/util/UResourceBundle;
    const/4 v4, 0x0

    .line 312
    .local v4, "measDataBundle":Landroid/icu/util/UResourceBundle;
    :try_start_17
    invoke-virtual {v3, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    move-object v4, v5

    .line 313
    invoke-virtual {v4, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5
    :try_end_20
    .catch Ljava/util/MissingResourceException; {:try_start_17 .. :try_end_20} :catch_22

    .line 318
    .end local v0    # "measTypeBundle":Landroid/icu/util/UResourceBundle;
    .local v5, "measTypeBundle":Landroid/icu/util/UResourceBundle;
    move-object v0, v5

    goto :goto_2e

    .line 314
    .end local v5    # "measTypeBundle":Landroid/icu/util/UResourceBundle;
    .restart local v0    # "measTypeBundle":Landroid/icu/util/UResourceBundle;
    :catch_22
    move-exception v5

    .line 316
    .local v5, "mre":Ljava/util/MissingResourceException;
    :try_start_23
    const-string v6, "001"

    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 317
    .end local v4    # "measDataBundle":Landroid/icu/util/UResourceBundle;
    .local v6, "measDataBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4
    :try_end_2d
    .catch Ljava/util/MissingResourceException; {:try_start_23 .. :try_end_2d} :catch_2f

    move-object v0, v4

    .line 321
    .end local v2    # "rb":Landroid/icu/util/UResourceBundle;
    .end local v3    # "measurementData":Landroid/icu/util/UResourceBundle;
    .end local v5    # "mre":Ljava/util/MissingResourceException;
    .end local v6    # "measDataBundle":Landroid/icu/util/UResourceBundle;
    :goto_2e
    goto :goto_30

    .line 319
    :catch_2f
    move-exception v2

    .line 322
    :goto_30
    return-object v0
.end method


# virtual methods
.method public whitelist test-api getDelimiter(I)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # I

    .line 287
    iget-object v0, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "delimiters"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 289
    .local v0, "delimitersBundle":Landroid/icu/impl/ICUResourceBundle;
    sget-object v1, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 291
    .local v1, "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    iget-boolean v2, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 292
    const/4 v2, 0x0

    return-object v2

    .line 294
    :cond_26
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getExemplarSet(II)Landroid/icu/text/UnicodeSet;
    .registers 10
    .param p1, "options"    # I
    .param p2, "extype"    # I

    .line 189
    const-string v0, "ExemplarCharactersCurrency"

    const-string v1, "ExemplarCharactersPunctuation"

    const-string v2, "ExemplarCharacters"

    const-string v3, "AuxExemplarCharacters"

    const-string v4, "ExemplarCharactersIndex"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "exemplarSetTypes":[Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1a

    .line 199
    iget-boolean v1, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    sget-object v2, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_19
    return-object v2

    .line 203
    :cond_1a
    :try_start_1a
    aget-object v1, v0, p2

    .line 204
    .local v1, "aKey":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v3, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 206
    .local v3, "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    iget-boolean v4, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v4, :cond_37

    iget-object v4, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 207
    return-object v2

    .line 209
    :cond_37
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "unicodeSetPattern":Ljava/lang/String;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    or-int/lit8 v6, p1, 0x1

    invoke-direct {v5, v4, v6}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_42} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_42} :catch_43

    return-object v5

    .line 213
    .end local v1    # "aKey":Ljava/lang/String;
    .end local v3    # "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "unicodeSetPattern":Ljava/lang/String;
    :catch_43
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    iget-boolean v3, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v3, :cond_49

    goto :goto_4b

    :cond_49
    sget-object v2, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_4b
    return-object v2

    .line 211
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_4c
    move-exception v1

    .line 212
    .local v1, "aiooe":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist-max-o getLocaleDisplayPattern()Ljava/lang/String;
    .registers 3

    .line 415
    iget-object v0, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_15

    .line 418
    iget-object v0, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "localeDisplayPattern"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 419
    .local v0, "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "pattern"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "localeDisplayPattern":Ljava/lang/String;
    return-object v1

    .line 416
    .end local v0    # "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "localeDisplayPattern":Ljava/lang/String;
    :cond_15
    iget-object v0, p0, Landroid/icu/util/LocaleData;->langBundleException:Ljava/util/MissingResourceException;

    throw v0
.end method

.method public greylist-max-o getLocaleSeparator()Ljava/lang/String;
    .registers 8

    .line 429
    iget-object v0, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_31

    .line 432
    const-string v0, "{0}"

    .line 433
    .local v0, "sub0":Ljava/lang/String;
    const-string v1, "{1}"

    .line 434
    .local v1, "sub1":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, "localeDisplayPattern"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 435
    .local v2, "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v3, "separator"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "localeSeparator":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 437
    .local v4, "index0":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 438
    .local v5, "index1":I
    if-ltz v4, :cond_30

    if-ltz v5, :cond_30

    if-gt v4, v5, :cond_30

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 441
    :cond_30
    return-object v3

    .line 430
    .end local v0    # "sub0":Ljava/lang/String;
    .end local v1    # "sub1":Ljava/lang/String;
    .end local v2    # "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "localeSeparator":Ljava/lang/String;
    .end local v4    # "index0":I
    .end local v5    # "index1":I
    :cond_31
    iget-object v0, p0, Landroid/icu/util/LocaleData;->langBundleException:Ljava/util/MissingResourceException;

    throw v0
.end method

.method public whitelist test-api getNoSubstitute()Z
    .registers 2

    .line 268
    iget-boolean v0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return v0
.end method

.method public whitelist test-api setNoSubstitute(Z)V
    .registers 2
    .param p1, "setting"    # Z

    .line 256
    iput-boolean p1, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    .line 257
    return-void
.end method

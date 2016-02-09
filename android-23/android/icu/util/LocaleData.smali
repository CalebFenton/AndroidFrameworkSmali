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
.field public static final ALT_QUOTATION_END:I = 0x3

.field public static final ALT_QUOTATION_START:I = 0x2

.field public static final DELIMITER_COUNT:I = 0x4

.field private static final DELIMITER_TYPES:[Ljava/lang/String;

.field public static final ES_AUXILIARY:I = 0x1

.field public static final ES_COUNT:I = 0x5

.field public static final ES_CURRENCY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_INDEX:I = 0x2

.field public static final ES_PUNCTUATION:I = 0x4

.field public static final ES_STANDARD:I = 0x0

.field private static final LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"

.field private static final MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"

.field private static final PAPER_SIZE:Ljava/lang/String; = "PaperSize"

.field private static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final QUOTATION_END:I = 0x1

.field public static final QUOTATION_START:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = "separator"

.field private static gCLDRVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private bundle:Landroid/icu/impl/ICUResourceBundle;

.field private langBundle:Landroid/icu/impl/ICUResourceBundle;

.field private noSubstitute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 260
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 261
    const-string/jumbo v1, "quotationStart"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 262
    const-string/jumbo v1, "quotationEnd"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 263
    const-string/jumbo v1, "alternateQuotationStart"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 264
    const-string/jumbo v1, "alternateQuotationEnd"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 260
    sput-object v0, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    #@1d
    .line 449
    const/4 v0, 0x0

    #@1e
    sput-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    #@20
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCLDRVersion()Landroid/icu/util/VersionInfo;
    .locals 5

    #@0
    .prologue
    .line 457
    sget-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 459
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@7
    const-string/jumbo v3, "supplementalData"

    #@a
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@c
    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v1

    #@10
    .line 460
    .local v1, "supplementalDataBundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v2, "cldrVersion"

    #@13
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@16
    move-result-object v0

    #@17
    .line 461
    .local v0, "cldrVersionBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@1e
    move-result-object v2

    #@1f
    sput-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    #@21
    .line 463
    :cond_0
    sget-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    #@23
    return-object v2
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;I)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 133
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, p1, v1}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "options"    # I
    .param p2, "extype"    # I

    #@0
    .prologue
    .line 155
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance()Landroid/icu/util/LocaleData;
    .locals 1

    #@0
    .prologue
    .line 231
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 216
    new-instance v0, Landroid/icu/util/LocaleData;

    #@2
    invoke-direct {v0}, Landroid/icu/util/LocaleData;-><init>()V

    #@5
    .line 217
    .local v0, "ld":Landroid/icu/util/LocaleData;
    const-string/jumbo v1, "android/icu/impl/data/icudt55b"

    #@8
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@e
    iput-object v1, v0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@10
    .line 218
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/lang"

    #@13
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@19
    iput-object v1, v0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    #@1b
    .line 219
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, v0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@1e
    .line 220
    return-object v0
.end method

.method public static final getMeasurementSystem(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$MeasurementSystem;
    .locals 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 359
    const-string/jumbo v2, "MeasurementSystem"

    #@3
    invoke-static {p0, v2}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 361
    .local v0, "sysBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@a
    move-result v1

    #@b
    .line 362
    .local v1, "system":I
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@d
    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 363
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@15
    return-object v2

    #@16
    .line 365
    :cond_0
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@18
    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 366
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@20
    return-object v2

    #@21
    .line 368
    :cond_1
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@23
    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 369
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    #@2b
    return-object v2

    #@2c
    .line 373
    :cond_2
    const/4 v2, 0x0

    #@2d
    return-object v2
.end method

.method public static final getPaperSize(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$PaperSize;
    .locals 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 415
    const-string/jumbo v2, "PaperSize"

    #@3
    invoke-static {p0, v2}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 416
    .local v0, "obj":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@a
    move-result-object v1

    #@b
    .line 417
    .local v1, "size":[I
    new-instance v2, Landroid/icu/util/LocaleData$PaperSize;

    #@d
    const/4 v3, 0x0

    #@e
    aget v3, v1, v3

    #@10
    const/4 v4, 0x1

    #@11
    aget v4, v1, v4

    #@13
    const/4 v5, 0x0

    #@14
    invoke-direct {v2, v3, v4, v5}, Landroid/icu/util/LocaleData$PaperSize;-><init>(IILandroid/icu/util/LocaleData$PaperSize;)V

    #@17
    return-object v2
.end method

.method private static measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 10
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "measurementType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    const/4 v2, 0x0

    #@1
    .line 293
    .local v2, "measTypeBundle":Landroid/icu/util/UResourceBundle;
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    .line 294
    .local v0, "fullLoc":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 297
    .local v6, "region":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "android/icu/impl/data/icudt55b"

    #@c
    .line 298
    const-string/jumbo v8, "supplementalData"

    #@f
    .line 299
    sget-object v9, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    .line 296
    invoke-static {v7, v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v5

    #@15
    .line 300
    .local v5, "rb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v7, "measurementData"

    #@18
    invoke-virtual {v5, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    move-result-object v3

    #@1c
    .line 301
    .local v3, "measurementData":Landroid/icu/util/UResourceBundle;
    const/4 v1, 0x0

    #@1d
    .line 303
    .local v1, "measDataBundle":Landroid/icu/util/UResourceBundle;
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@20
    move-result-object v1

    #@21
    .line 304
    .local v1, "measDataBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@24
    move-result-object v2

    #@25
    .line 313
    .end local v1    # "measDataBundle":Landroid/icu/util/UResourceBundle;
    .end local v2    # "measTypeBundle":Landroid/icu/util/UResourceBundle;
    .end local v3    # "measurementData":Landroid/icu/util/UResourceBundle;
    .end local v5    # "rb":Landroid/icu/util/UResourceBundle;
    :goto_0
    return-object v2

    #@26
    .line 305
    .restart local v2    # "measTypeBundle":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "measurementData":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "rb":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v4

    #@27
    .line 307
    .local v4, "mre":Ljava/util/MissingResourceException;
    :try_start_2
    const-string/jumbo v7, "001"

    #@2a
    invoke-virtual {v3, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@2d
    move-result-object v1

    #@2e
    .line 308
    .restart local v1    # "measDataBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@31
    move-result-object v2

    #@32
    .local v2, "measTypeBundle":Landroid/icu/util/UResourceBundle;
    goto :goto_0

    #@33
    .line 310
    .end local v1    # "measDataBundle":Landroid/icu/util/UResourceBundle;
    .end local v3    # "measurementData":Landroid/icu/util/UResourceBundle;
    .end local v4    # "mre":Ljava/util/MissingResourceException;
    .end local v5    # "rb":Landroid/icu/util/UResourceBundle;
    .local v2, "measTypeBundle":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v4

    #@34
    .restart local v4    # "mre":Ljava/util/MissingResourceException;
    goto :goto_0
.end method


# virtual methods
.method public getDelimiter(I)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I

    #@0
    .prologue
    .line 277
    iget-object v2, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    const-string/jumbo v3, "delimiters"

    #@5
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 279
    .local v0, "delimitersBundle":Landroid/icu/impl/ICUResourceBundle;
    sget-object v2, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    #@d
    aget-object v2, v2, p1

    #@f
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v1

    #@13
    .line 281
    .local v1, "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    iget-boolean v2, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x2

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 282
    const/4 v2, 0x0

    #@1f
    return-object v2

    #@20
    .line 284
    :cond_0
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    return-object v2
.end method

.method public getExemplarSet(II)Landroid/icu/text/UnicodeSet;
    .locals 12
    .param p1, "options"    # I
    .param p2, "extype"    # I

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 179
    const/4 v7, 0x5

    #@5
    new-array v3, v7, [Ljava/lang/String;

    #@7
    .line 180
    const-string/jumbo v7, "ExemplarCharacters"

    #@a
    const/4 v8, 0x0

    #@b
    aput-object v7, v3, v8

    #@d
    .line 181
    const-string/jumbo v7, "AuxExemplarCharacters"

    #@10
    aput-object v7, v3, v9

    #@12
    .line 182
    const-string/jumbo v7, "ExemplarCharactersIndex"

    #@15
    aput-object v7, v3, v10

    #@17
    .line 183
    const-string/jumbo v7, "ExemplarCharactersCurrency"

    #@1a
    aput-object v7, v3, v11

    #@1c
    .line 184
    const-string/jumbo v7, "ExemplarCharactersPunctuation"

    #@1f
    const/4 v8, 0x4

    #@20
    aput-object v7, v3, v8

    #@22
    .line 187
    .local v3, "exemplarSetTypes":[Ljava/lang/String;
    if-ne p2, v11, :cond_1

    #@24
    .line 189
    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@26
    if-eqz v7, :cond_0

    #@28
    :goto_0
    return-object v6

    #@29
    :cond_0
    sget-object v6, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@2b
    goto :goto_0

    #@2c
    .line 193
    :cond_1
    :try_start_0
    aget-object v0, v3, p2

    #@2e
    .line 194
    .local v0, "aKey":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@30
    invoke-virtual {v7, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@36
    .line 196
    .local v4, "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@38
    if-eqz v7, :cond_2

    #@3a
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    #@3d
    move-result v7

    #@3e
    if-ne v7, v10, :cond_2

    #@40
    .line 197
    return-object v6

    #@41
    .line 199
    :cond_2
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 200
    .local v5, "unicodeSetPattern":Ljava/lang/String;
    new-instance v7, Landroid/icu/text/UnicodeSet;

    #@47
    or-int/lit8 v8, p1, 0x1

    #@49
    invoke-direct {v7, v5, v8}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    return-object v7

    #@4d
    .line 203
    .end local v0    # "aKey":Ljava/lang/String;
    .end local v4    # "stringBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "unicodeSetPattern":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@4e
    .line 204
    .local v2, "ex":Ljava/lang/Exception;
    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@50
    if-eqz v7, :cond_3

    #@52
    :goto_1
    return-object v6

    #@53
    :cond_3
    sget-object v6, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@55
    goto :goto_1

    #@56
    .line 201
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@57
    .line 202
    .local v1, "aiooe":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@59
    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@5c
    throw v6
.end method

.method public getLocaleDisplayPattern()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 426
    iget-object v2, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    const-string/jumbo v3, "localeDisplayPattern"

    #@5
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@b
    .line 427
    .local v0, "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v2, "pattern"

    #@e
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 428
    .local v1, "localeDisplayPattern":Ljava/lang/String;
    return-object v1
.end method

.method public getLocaleSeparator()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 437
    const-string/jumbo v4, "{0}"

    #@3
    .line 438
    .local v4, "sub0":Ljava/lang/String;
    const-string/jumbo v5, "{1}"

    #@6
    .line 439
    .local v5, "sub1":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    #@8
    const-string/jumbo v7, "localeDisplayPattern"

    #@b
    invoke-virtual {v6, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@11
    .line 440
    .local v2, "locDispBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "separator"

    #@14
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 441
    .local v3, "localeSeparator":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 442
    .local v0, "index0":I
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 443
    .local v1, "index1":I
    if-ltz v0, :cond_0

    #@22
    if-ltz v1, :cond_0

    #@24
    if-gt v0, v1, :cond_0

    #@26
    .line 444
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@29
    move-result v6

    #@2a
    add-int/2addr v6, v0

    #@2b
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    return-object v6

    #@30
    .line 446
    :cond_0
    return-object v3
.end method

.method public getNoSubstitute()Z
    .locals 1

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@2
    return v0
.end method

.method public setNoSubstitute(Z)V
    .locals 0
    .param p1, "setting"    # Z

    #@0
    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    #@2
    .line 243
    return-void
.end method

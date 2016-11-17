.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;,
        Ljava/text/NumberFormat$NumberFormatGetter;
    }
.end annotation


# static fields
.field private static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field private static final INTEGERSTYLE:I = 0x3

.field public static final INTEGER_FIELD:I = 0x0

.field private static final NUMBERSTYLE:I = 0x0

.field private static final PERCENTSTYLE:I = 0x2

.field private static final cachedLocaleData:Ljava/util/Hashtable;

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 838
    new-instance v0, Ljava/util/Hashtable;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@6
    sput-object v0, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    #@8
    .line 183
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x28

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v0, 0x1

    #@5
    .line 203
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@8
    .line 853
    iput-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@a
    .line 871
    iput-byte v3, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    #@c
    .line 889
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    #@e
    .line 907
    iput-byte v2, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    #@10
    .line 925
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    #@12
    .line 933
    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@14
    .line 946
    iput v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@16
    .line 957
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@18
    .line 968
    iput v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@1a
    .line 979
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@1c
    .line 1004
    iput v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    #@1e
    .line 203
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 486
    const-class v1, Ljava/text/spi/NumberFormatProvider;

    #@2
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@5
    move-result-object v0

    #@6
    .line 487
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 447
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 454
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 385
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 394
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .locals 13
    .param p0, "desiredLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 734
    const-class v7, Ljava/text/spi/NumberFormatProvider;

    #@5
    invoke-static {v7}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@8
    move-result-object v4

    #@9
    .line 735
    .local v4, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v4}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_0

    #@f
    .line 737
    invoke-static {}, Ljava/text/NumberFormat$NumberFormatGetter;->-get0()Ljava/text/NumberFormat$NumberFormatGetter;

    #@12
    move-result-object v7

    #@13
    .line 736
    new-array v8, v11, [Ljava/lang/Object;

    #@15
    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v9

    #@19
    aput-object v9, v8, v10

    #@1b
    .line 736
    invoke-virtual {v4, v7, p0, v8}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Ljava/text/NumberFormat;

    #@21
    .line 740
    .local v5, "providersInstance":Ljava/text/NumberFormat;
    if-eqz v5, :cond_0

    #@23
    .line 741
    return-object v5

    #@24
    .line 746
    .end local v5    # "providersInstance":Ljava/text/NumberFormat;
    :cond_0
    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v7, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, [Ljava/lang/String;

    #@2c
    .line 747
    .local v3, "numberPatterns":[Ljava/lang/String;
    if-nez v3, :cond_1

    #@2e
    .line 748
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@31
    move-result-object v0

    #@32
    .line 749
    .local v0, "data":Llibcore/icu/LocaleData;
    const/4 v7, 0x4

    #@33
    new-array v3, v7, [Ljava/lang/String;

    #@35
    .line 750
    iget-object v7, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@37
    aput-object v7, v3, v10

    #@39
    .line 751
    iget-object v7, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    #@3b
    aput-object v7, v3, v11

    #@3d
    .line 752
    iget-object v7, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    #@3f
    const/4 v8, 0x2

    #@40
    aput-object v7, v3, v8

    #@42
    .line 753
    iget-object v7, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    #@44
    aput-object v7, v3, v12

    #@46
    .line 755
    sget-object v7, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    #@48
    invoke-virtual {v7, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 758
    .end local v0    # "data":Llibcore/icu/LocaleData;
    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@4e
    move-result-object v6

    #@4f
    .line 759
    .local v6, "symbols":Ljava/text/DecimalFormatSymbols;
    if-ne p1, v12, :cond_3

    #@51
    const/4 v1, 0x0

    #@52
    .line 760
    .local v1, "entry":I
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    #@54
    aget-object v7, v3, v1

    #@56
    invoke-direct {v2, v7, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    #@59
    .line 762
    .local v2, "format":Ljava/text/DecimalFormat;
    if-ne p1, v12, :cond_4

    #@5b
    .line 763
    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@5e
    .line 764
    invoke-virtual {v2, v10}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@61
    .line 765
    invoke-virtual {v2, v11}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    #@64
    .line 770
    :cond_2
    :goto_1
    return-object v2

    #@65
    .line 759
    .end local v1    # "entry":I
    .end local v2    # "format":Ljava/text/DecimalFormat;
    :cond_3
    move v1, p1

    #@66
    .restart local v1    # "entry":I
    goto :goto_0

    #@67
    .line 766
    .restart local v2    # "format":Ljava/text/DecimalFormat;
    :cond_4
    if-ne p1, v11, :cond_2

    #@69
    .line 767
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->adjustForCurrencyDefaultFractionDigits()V

    #@6c
    goto :goto_1
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 424
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 440
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 401
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 408
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 461
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 468
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 796
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 797
    iget v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 799
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    #@a
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@c
    .line 800
    iget-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    #@e
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@10
    .line 801
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    #@12
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@14
    .line 802
    iget-byte v0, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    #@16
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@18
    .line 804
    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@1a
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@1c
    if-gt v0, v1, :cond_1

    #@1e
    .line 805
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@20
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@22
    if-le v0, v1, :cond_2

    #@24
    .line 807
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    #@26
    const-string/jumbo v1, "Digit count range invalid"

    #@29
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 806
    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@2f
    if-ltz v0, :cond_1

    #@31
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@33
    if-ltz v0, :cond_1

    #@35
    .line 809
    iput v2, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    #@37
    .line 794
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x7f

    #@2
    .line 824
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    #@9
    .line 826
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_1

    #@d
    move v0, v1

    #@e
    :goto_1
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    #@10
    .line 828
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@12
    if-le v0, v1, :cond_2

    #@14
    move v0, v1

    #@15
    :goto_2
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    #@17
    .line 830
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@19
    if-le v0, v1, :cond_3

    #@1b
    :goto_3
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    #@1d
    .line 832
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@20
    .line 822
    return-void

    #@21
    .line 825
    :cond_0
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@23
    int-to-byte v0, v0

    #@24
    goto :goto_0

    #@25
    .line 827
    :cond_1
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@27
    int-to-byte v0, v0

    #@28
    goto :goto_1

    #@29
    .line 829
    :cond_2
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@2b
    int-to-byte v0, v0

    #@2c
    goto :goto_2

    #@2d
    .line 831
    :cond_3
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@2f
    int-to-byte v1, v0

    #@30
    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 524
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/NumberFormat;

    #@6
    .line 525
    .local v0, "other":Ljava/text/NumberFormat;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 502
    if-nez p1, :cond_0

    #@4
    .line 503
    return v2

    #@5
    .line 505
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 506
    return v1

    #@8
    .line 508
    :cond_1
    invoke-virtual {p0}, Ljava/text/NumberFormat;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 509
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 511
    check-cast v0, Ljava/text/NumberFormat;

    #@16
    .line 512
    .local v0, "other":Ljava/text/NumberFormat;
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@18
    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@1a
    if-ne v3, v4, :cond_4

    #@1c
    .line 513
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@1e
    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@20
    if-ne v3, v4, :cond_4

    #@22
    .line 514
    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@24
    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@26
    if-ne v3, v4, :cond_4

    #@28
    .line 515
    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@2a
    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@2c
    if-ne v3, v4, :cond_4

    #@2e
    .line 516
    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@30
    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@32
    if-ne v3, v4, :cond_4

    #@34
    .line 517
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@36
    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@38
    if-ne v3, v4, :cond_3

    #@3a
    .line 512
    :goto_0
    return v1

    #@3b
    :cond_3
    move v1, v2

    #@3c
    .line 517
    goto :goto_0

    #@3d
    :cond_4
    move v1, v2

    #@3e
    .line 512
    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 288
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@7
    .line 287
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 299
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@7
    .line 298
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 239
    instance-of v0, p1, Ljava/lang/Long;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p1, Ljava/lang/Integer;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 240
    instance-of v0, p1, Ljava/lang/Short;

    #@a
    .line 239
    if-nez v0, :cond_0

    #@c
    .line 240
    instance-of v0, p1, Ljava/lang/Byte;

    #@e
    .line 239
    if-nez v0, :cond_0

    #@10
    .line 241
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    .line 239
    if-nez v0, :cond_0

    #@14
    .line 241
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@16
    .line 239
    if-nez v0, :cond_0

    #@18
    .line 242
    instance-of v0, p1, Ljava/math/BigInteger;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    move-object v0, p1

    #@1d
    .line 243
    check-cast v0, Ljava/math/BigInteger;

    #@1f
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@22
    move-result v0

    #@23
    const/16 v1, 0x40

    #@25
    if-ge v0, v1, :cond_1

    #@27
    .line 244
    :cond_0
    check-cast p1, Ljava/lang/Number;

    #@29
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@2c
    move-result-wide v0

    #@2d
    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    .line 245
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 246
    check-cast p1, Ljava/lang/Number;

    #@38
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@3b
    move-result-wide v0

    #@3c
    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 248
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v1, "Cannot format given Object as a Number"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 607
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@2
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 553
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 634
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 580
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@2
    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 706
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 494
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    mul-int/lit8 v0, v0, 0x25

    #@4
    iget-byte v1, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    #@0
    .prologue
    .line 536
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@2
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 348
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 349
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@9
    move-result-object v1

    #@a
    .line 350
    .local v1, "result":Ljava/lang/Number;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    #@c
    if-nez v2, :cond_0

    #@e
    .line 351
    new-instance v2, Ljava/text/ParseException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unparseable number: \""

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\""

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 352
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@2d
    .line 351
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@30
    throw v2

    #@31
    .line 354
    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    .line 689
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setGroupingUsed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 544
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@2
    .line 543
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 622
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@7
    .line 623
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 624
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@f
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@11
    .line 621
    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 568
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@7
    .line 569
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 570
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@f
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@11
    .line 567
    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 649
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@7
    .line 650
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@9
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 651
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@f
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@11
    .line 648
    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 595
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@7
    .line 596
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@9
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 597
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@f
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@11
    .line 594
    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 374
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    .line 373
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 1
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 724
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

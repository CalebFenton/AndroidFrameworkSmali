.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;
    }
.end annotation


# static fields
.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x3

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private exponential:C

.field private exponentialSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private minusSign:C

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private serialVersionOnStream:I

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 750
    const/16 v0, 0x13

    #@3
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@5
    .line 751
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7
    const-string/jumbo v2, "currencySymbol"

    #@a
    const-class v3, Ljava/lang/String;

    #@c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 752
    new-instance v1, Ljava/io/ObjectStreamField;

    #@14
    const-string/jumbo v2, "decimalSeparator"

    #@17
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@19
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1c
    const/4 v2, 0x1

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 753
    new-instance v1, Ljava/io/ObjectStreamField;

    #@21
    const-string/jumbo v2, "digit"

    #@24
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@26
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@29
    const/4 v2, 0x2

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 754
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2e
    const-string/jumbo v2, "exponential"

    #@31
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@33
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@36
    aput-object v1, v0, v4

    #@38
    .line 755
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3a
    const-string/jumbo v2, "exponentialSeparator"

    #@3d
    const-class v3, Ljava/lang/String;

    #@3f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 756
    new-instance v1, Ljava/io/ObjectStreamField;

    #@47
    const-string/jumbo v2, "groupingSeparator"

    #@4a
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@4c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 757
    new-instance v1, Ljava/io/ObjectStreamField;

    #@54
    const-string/jumbo v2, "infinity"

    #@57
    const-class v3, Ljava/lang/String;

    #@59
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 758
    new-instance v1, Ljava/io/ObjectStreamField;

    #@61
    const-string/jumbo v2, "intlCurrencySymbol"

    #@64
    const-class v3, Ljava/lang/String;

    #@66
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 759
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6e
    const-string/jumbo v2, "minusSign"

    #@71
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@73
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 760
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7c
    const-string/jumbo v2, "monetarySeparator"

    #@7f
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@81
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 761
    new-instance v1, Ljava/io/ObjectStreamField;

    #@8a
    const-string/jumbo v2, "NaN"

    #@8d
    const-class v3, Ljava/lang/String;

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 762
    new-instance v1, Ljava/io/ObjectStreamField;

    #@98
    const-string/jumbo v2, "patternSeparator"

    #@9b
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@9d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a0
    const/16 v2, 0xb

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 763
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a6
    const-string/jumbo v2, "percent"

    #@a9
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@ab
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ae
    const/16 v2, 0xc

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 764
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b4
    const-string/jumbo v2, "perMill"

    #@b7
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@b9
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bc
    const/16 v2, 0xd

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 765
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c2
    const-string/jumbo v2, "serialVersionOnStream"

    #@c5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c7
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ca
    const/16 v2, 0xe

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 766
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d0
    const-string/jumbo v2, "zeroDigit"

    #@d3
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@d5
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d8
    const/16 v2, 0xf

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 767
    new-instance v1, Ljava/io/ObjectStreamField;

    #@de
    const-string/jumbo v2, "locale"

    #@e1
    const-class v3, Ljava/util/Locale;

    #@e3
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e6
    const/16 v2, 0x10

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 768
    new-instance v1, Ljava/io/ObjectStreamField;

    #@ec
    const-string/jumbo v2, "minusSignStr"

    #@ef
    const-class v3, Ljava/lang/String;

    #@f1
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f4
    const/16 v2, 0x11

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 769
    new-instance v1, Ljava/io/ObjectStreamField;

    #@fa
    const-string/jumbo v2, "percentStr"

    #@fd
    const-class v3, Ljava/lang/String;

    #@ff
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@102
    const/16 v2, 0x12

    #@104
    aput-object v1, v0, v2

    #@106
    .line 750
    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@108
    .line 1045
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@10a
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@10d
    sput-object v0, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    #@10f
    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1039
    const/4 v0, 0x3

    #@4
    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@6
    .line 1047
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@9
    .line 81
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@b
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    #@12
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1039
    const/4 v0, 0x3

    #@4
    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@6
    .line 1047
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@9
    .line 96
    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    #@c
    .line 95
    return-void
.end method

.method protected static fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .locals 3
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 720
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@9
    .line 721
    .local v1, "result":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    #@c
    move-result v2

    #@d
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    #@10
    .line 722
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    #@17
    .line 723
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    #@1e
    .line 724
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@21
    move-result v2

    #@22
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@25
    .line 725
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@28
    move-result v2

    #@29
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    #@2c
    .line 726
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@2f
    move-result v2

    #@30
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    #@33
    .line 727
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    #@3a
    .line 728
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@3d
    move-result v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@41
    .line 729
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@44
    move-result v2

    #@45
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    #@48
    .line 730
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    #@4f
    .line 731
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    #@56
    .line 732
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@5d
    .line 735
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    #@60
    move-result-object v2

    #@61
    if-eqz v2, :cond_0

    #@63
    .line 736
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 744
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    #@79
    .line 745
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    #@80
    .line 746
    return-object v1

    #@81
    .line 738
    :cond_0
    :try_start_1
    const-string/jumbo v2, "XXX"

    #@84
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@8b
    goto :goto_0

    #@8c
    .line 740
    :catch_0
    move-exception v0

    #@8d
    .line 741
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "XXX"

    #@90
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    #@97
    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 115
    const-class v1, Ljava/text/spi/DecimalFormatSymbolsProvider;

    #@2
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@5
    move-result-object v0

    #@6
    .line 116
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public static final getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 130
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 150
    const-class v2, Ljava/text/spi/DecimalFormatSymbolsProvider;

    #@2
    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@5
    move-result-object v0

    #@6
    .line 151
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 153
    invoke-static {}, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->-get0()Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    #@f
    move-result-object v2

    #@10
    .line 152
    const/4 v3, 0x0

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    invoke-virtual {v0, v2, p0, v3}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/text/DecimalFormatSymbols;

    #@19
    .line 154
    .local v1, "providersInstance":Ljava/text/DecimalFormatSymbols;
    if-eqz v1, :cond_0

    #@1b
    .line 155
    return-object v1

    #@1c
    .line 159
    .end local v1    # "providersInstance":Ljava/text/DecimalFormatSymbols;
    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    #@1e
    invoke-direct {v2, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@21
    return-object v2
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v12, 0x7

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 577
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@7
    .line 580
    const/4 v3, 0x0

    #@8
    .line 581
    .local v3, "needCacheUpdate":Z
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/Object;

    #@10
    .line 582
    .local v0, "data":[Ljava/lang/Object;
    if-nez v0, :cond_0

    #@12
    .line 583
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    #@15
    move-result-object p1

    #@16
    .line 584
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@19
    move-result-object v2

    #@1a
    .line 585
    .local v2, "localeData":Llibcore/icu/LocaleData;
    new-array v0, v11, [Ljava/lang/Object;

    #@1c
    .line 586
    const/16 v6, 0xb

    #@1e
    new-array v5, v6, [Ljava/lang/String;

    #@20
    .line 587
    .local v5, "values":[Ljava/lang/String;
    iget-char v6, v2, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@22
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    aput-object v6, v5, v8

    #@28
    .line 588
    iget-char v6, v2, Llibcore/icu/LocaleData;->groupingSeparator:C

    #@2a
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    aput-object v6, v5, v9

    #@30
    .line 589
    iget-char v6, v2, Llibcore/icu/LocaleData;->patternSeparator:C

    #@32
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    aput-object v6, v5, v10

    #@38
    .line 590
    iget-object v6, v2, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    #@3a
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    aput-object v6, v5, v11

    #@40
    .line 591
    iget-char v6, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    #@42
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    const/4 v7, 0x4

    #@47
    aput-object v6, v5, v7

    #@49
    .line 592
    const-string/jumbo v6, "#"

    #@4c
    const/4 v7, 0x5

    #@4d
    aput-object v6, v5, v7

    #@4f
    .line 593
    iget-object v6, v2, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@51
    const/4 v7, 0x6

    #@52
    aput-object v6, v5, v7

    #@54
    .line 594
    iget-object v6, v2, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@56
    aput-object v6, v5, v12

    #@58
    .line 595
    iget-char v6, v2, Llibcore/icu/LocaleData;->perMill:C

    #@5a
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    const/16 v7, 0x8

    #@60
    aput-object v6, v5, v7

    #@62
    .line 596
    iget-object v6, v2, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    #@64
    const/16 v7, 0x9

    #@66
    aput-object v6, v5, v7

    #@68
    .line 597
    iget-object v6, v2, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    #@6a
    const/16 v7, 0xa

    #@6c
    aput-object v6, v5, v7

    #@6e
    .line 598
    aput-object v5, v0, v8

    #@70
    .line 599
    const/4 v3, 0x1

    #@71
    .line 602
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    aget-object v4, v0, v8

    #@73
    check-cast v4, [Ljava/lang/String;

    #@75
    .line 604
    .local v4, "numberElements":[Ljava/lang/String;
    aget-object v6, v4, v8

    #@77
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@7a
    move-result v6

    #@7b
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@7d
    .line 605
    aget-object v6, v4, v9

    #@7f
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@82
    move-result v6

    #@83
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@85
    .line 606
    aget-object v6, v4, v10

    #@87
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v6

    #@8b
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@8d
    .line 607
    aget-object v6, v4, v11

    #@8f
    const/16 v7, 0x25

    #@91
    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    #@94
    move-result v6

    #@95
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@97
    .line 608
    const/4 v6, 0x4

    #@98
    aget-object v6, v4, v6

    #@9a
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@9d
    move-result v6

    #@9e
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@a0
    .line 609
    const/4 v6, 0x5

    #@a1
    aget-object v6, v4, v6

    #@a3
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@a6
    move-result v6

    #@a7
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@a9
    .line 610
    const/4 v6, 0x6

    #@aa
    aget-object v6, v4, v6

    #@ac
    const/16 v7, 0x2d

    #@ae
    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    #@b1
    move-result v6

    #@b2
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@b4
    .line 611
    aget-object v6, v4, v12

    #@b6
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v6

    #@ba
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    #@bc
    .line 612
    aget-object v6, v4, v12

    #@be
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@c0
    .line 613
    const/16 v6, 0x8

    #@c2
    aget-object v6, v4, v6

    #@c4
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@c7
    move-result v6

    #@c8
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@ca
    .line 614
    const/16 v6, 0x9

    #@cc
    aget-object v6, v4, v6

    #@ce
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@d0
    .line 615
    const/16 v6, 0xa

    #@d2
    aget-object v6, v4, v6

    #@d4
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@d6
    .line 621
    const-string/jumbo v6, ""

    #@d9
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v6

    #@e1
    if-nez v6, :cond_1

    #@e3
    .line 623
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    #@e6
    move-result-object v6

    #@e7
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@e9
    .line 628
    :cond_1
    :goto_0
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@eb
    if-eqz v6, :cond_4

    #@ed
    .line 629
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@ef
    invoke-virtual {v6}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@f5
    .line 630
    aget-object v6, v0, v9

    #@f7
    if-eqz v6, :cond_3

    #@f9
    aget-object v6, v0, v9

    #@fb
    iget-object v7, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@fd
    if-ne v6, v7, :cond_3

    #@ff
    .line 631
    aget-object v6, v0, v10

    #@101
    check-cast v6, Ljava/lang/String;

    #@103
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@105
    .line 650
    :goto_1
    iget-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@107
    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@109
    .line 652
    if-eqz v3, :cond_2

    #@10b
    .line 653
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    #@10d
    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 576
    :cond_2
    return-void

    #@111
    .line 633
    :cond_3
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@113
    invoke-virtual {v6, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@116
    move-result-object v6

    #@117
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@119
    .line 634
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@11b
    aput-object v6, v0, v9

    #@11d
    .line 635
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@11f
    aput-object v6, v0, v10

    #@121
    .line 636
    const/4 v3, 0x1

    #@122
    goto :goto_1

    #@123
    .line 640
    :cond_4
    const-string/jumbo v6, "XXX"

    #@126
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@128
    .line 642
    :try_start_1
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@12a
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@12d
    move-result-object v6

    #@12e
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@130
    .line 645
    :goto_2
    const-string/jumbo v6, "\u00a4"

    #@133
    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@135
    goto :goto_1

    #@136
    .line 643
    :catch_0
    move-exception v1

    #@137
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    #@138
    .line 624
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@139
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private static maybeStripMarkers(Ljava/lang/String;C)C
    .locals 5
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 665
    .local v1, "length":I
    if-ne v1, v4, :cond_0

    #@8
    .line 666
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 669
    :cond_0
    const/4 v2, 0x2

    #@e
    if-ne v1, v2, :cond_3

    #@10
    .line 670
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 671
    .local v0, "first":C
    const/16 v2, 0x200e

    #@16
    if-eq v0, v2, :cond_1

    #@18
    const/16 v2, 0x200f

    #@1a
    if-ne v0, v2, :cond_2

    #@1c
    .line 672
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 671
    :cond_2
    const/16 v2, 0x61c

    #@23
    if-ne v0, v2, :cond_1

    #@25
    goto :goto_0

    #@26
    .line 676
    .end local v0    # "first":C
    :cond_3
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2e

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 818
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@7
    move-result-object v1

    #@8
    .line 819
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "serialVersionOnStream"

    #@b
    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@e
    move-result v4

    #@f
    .line 820
    .local v4, "serialVersionOnStream":I
    const-string/jumbo v5, "currencySymbol"

    #@12
    const-string/jumbo v6, ""

    #@15
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/lang/String;

    #@1b
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@1d
    .line 821
    const-string/jumbo v5, "decimalSeparator"

    #@20
    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@23
    move-result v5

    #@24
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    #@27
    .line 822
    const-string/jumbo v5, "digit"

    #@2a
    const/16 v6, 0x23

    #@2c
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@2f
    move-result v5

    #@30
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    #@33
    .line 823
    const-string/jumbo v5, "groupingSeparator"

    #@36
    const/16 v6, 0x2c

    #@38
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@3b
    move-result v5

    #@3c
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@3f
    .line 824
    const-string/jumbo v5, "infinity"

    #@42
    const-string/jumbo v6, ""

    #@45
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    check-cast v5, Ljava/lang/String;

    #@4b
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@4d
    .line 825
    const-string/jumbo v5, "intlCurrencySymbol"

    #@50
    const-string/jumbo v6, ""

    #@53
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    check-cast v5, Ljava/lang/String;

    #@59
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@5b
    .line 826
    const-string/jumbo v5, "NaN"

    #@5e
    const-string/jumbo v6, ""

    #@61
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Ljava/lang/String;

    #@67
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@69
    .line 827
    const-string/jumbo v5, "patternSeparator"

    #@6c
    const/16 v6, 0x3b

    #@6e
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@71
    move-result v5

    #@72
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    #@75
    .line 833
    const-string/jumbo v5, "minusSignStr"

    #@78
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Ljava/lang/String;

    #@7e
    .line 834
    .local v2, "minusSignStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@80
    .line 835
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    #@83
    move-result v5

    #@84
    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@86
    .line 839
    :goto_0
    const-string/jumbo v5, "percentStr"

    #@89
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    move-result-object v3

    #@8d
    check-cast v3, Ljava/lang/String;

    #@8f
    .line 840
    .local v3, "percentStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@91
    .line 841
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v5

    #@95
    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@97
    .line 846
    :goto_1
    const-string/jumbo v5, "perMill"

    #@9a
    const/16 v6, 0x2030

    #@9c
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@9f
    move-result v5

    #@a0
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    #@a3
    .line 847
    const-string/jumbo v5, "zeroDigit"

    #@a6
    const/16 v6, 0x30

    #@a8
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@ab
    move-result v5

    #@ac
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    #@af
    .line 848
    const-string/jumbo v5, "locale"

    #@b2
    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v5

    #@b6
    check-cast v5, Ljava/util/Locale;

    #@b8
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@ba
    .line 849
    if-nez v4, :cond_2

    #@bc
    .line 850
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@bf
    move-result v5

    #@c0
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@c3
    .line 855
    :goto_2
    if-nez v4, :cond_3

    #@c5
    .line 857
    const-string/jumbo v5, "E"

    #@c8
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@ca
    .line 867
    :goto_3
    :try_start_0
    iget-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@cc
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@cf
    move-result-object v5

    #@d0
    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d2
    .line 817
    :goto_4
    return-void

    #@d3
    .line 837
    .end local v3    # "percentStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "minusSign"

    #@d6
    const/16 v6, 0x2d

    #@d8
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@db
    move-result v5

    #@dc
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    #@df
    goto :goto_0

    #@e0
    .line 843
    .restart local v3    # "percentStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "percent"

    #@e3
    const/16 v6, 0x25

    #@e5
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@e8
    move-result v5

    #@e9
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    #@ec
    goto :goto_1

    #@ed
    .line 852
    :cond_2
    const-string/jumbo v5, "monetarySeparator"

    #@f0
    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@f3
    move-result v5

    #@f4
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@f7
    goto :goto_2

    #@f8
    .line 858
    :cond_3
    const/4 v5, 0x3

    #@f9
    if-ge v4, v5, :cond_4

    #@fb
    .line 860
    const-string/jumbo v5, "exponential"

    #@fe
    const/16 v6, 0x45

    #@100
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    #@103
    move-result v5

    #@104
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@107
    move-result-object v5

    #@108
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@10b
    goto :goto_3

    #@10c
    .line 863
    :cond_4
    const-string/jumbo v5, "exponentialSeparator"

    #@10f
    const-string/jumbo v6, "E"

    #@112
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    move-result-object v5

    #@116
    check-cast v5, Ljava/lang/String;

    #@118
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@11b
    goto :goto_3

    #@11c
    .line 868
    :catch_0
    move-exception v0

    #@11d
    .line 869
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@11f
    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 773
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 774
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "currencySymbol"

    #@7
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 775
    const-string/jumbo v1, "decimalSeparator"

    #@f
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@12
    move-result v2

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@16
    .line 776
    const-string/jumbo v1, "digit"

    #@19
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@20
    .line 777
    const-string/jumbo v1, "exponential"

    #@23
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v2

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@2d
    .line 778
    const-string/jumbo v1, "exponentialSeparator"

    #@30
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@35
    .line 779
    const-string/jumbo v1, "groupingSeparator"

    #@38
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@3b
    move-result v2

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@3f
    .line 780
    const-string/jumbo v1, "infinity"

    #@42
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@47
    .line 781
    const-string/jumbo v1, "intlCurrencySymbol"

    #@4a
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@4f
    .line 782
    const-string/jumbo v1, "monetarySeparator"

    #@52
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@55
    move-result v2

    #@56
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@59
    .line 783
    const-string/jumbo v1, "NaN"

    #@5c
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@5e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@61
    .line 784
    const-string/jumbo v1, "patternSeparator"

    #@64
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@67
    move-result v2

    #@68
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@6b
    .line 785
    const-string/jumbo v1, "perMill"

    #@6e
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    #@71
    move-result v2

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@75
    .line 786
    const-string/jumbo v1, "serialVersionOnStream"

    #@78
    const/4 v2, 0x3

    #@79
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@7c
    .line 787
    const-string/jumbo v1, "zeroDigit"

    #@7f
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@82
    move-result v2

    #@83
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@86
    .line 788
    const-string/jumbo v1, "locale"

    #@89
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@8e
    .line 792
    const-string/jumbo v1, "minusSign"

    #@91
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@93
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@96
    .line 793
    const-string/jumbo v1, "percent"

    #@99
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@9b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    #@9e
    .line 795
    const-string/jumbo v1, "minusSignStr"

    #@a1
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@a8
    .line 796
    const-string/jumbo v1, "percentStr"

    #@ab
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@b2
    .line 797
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@b5
    .line 772
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 517
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 519
    :catch_0
    move-exception v0

    #@8
    .line 520
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    #@a
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@d
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 528
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 529
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 530
    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_2

    #@12
    return v1

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 531
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@16
    .line 532
    .local v0, "other":Ljava/text/DecimalFormatSymbols;
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@18
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@1a
    if-ne v2, v3, :cond_3

    #@1c
    .line 533
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@1e
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@20
    if-ne v2, v3, :cond_3

    #@22
    .line 534
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@24
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@26
    if-ne v2, v3, :cond_3

    #@28
    .line 535
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@2a
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@2c
    if-ne v2, v3, :cond_3

    #@2e
    .line 536
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@30
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@32
    if-ne v2, v3, :cond_3

    #@34
    .line 537
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@36
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@38
    if-ne v2, v3, :cond_3

    #@3a
    .line 538
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@3c
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@3e
    if-ne v2, v3, :cond_3

    #@40
    .line 539
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@42
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@44
    if-ne v2, v3, :cond_3

    #@46
    .line 540
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@48
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    .line 532
    if-eqz v2, :cond_3

    #@50
    .line 541
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@52
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v2

    #@58
    .line 532
    if-eqz v2, :cond_3

    #@5a
    .line 542
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@5c
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v2

    #@62
    .line 532
    if-eqz v2, :cond_3

    #@64
    .line 543
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@66
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v2

    #@6c
    .line 532
    if-eqz v2, :cond_3

    #@6e
    .line 544
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@70
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@72
    if-ne v2, v3, :cond_3

    #@74
    .line 545
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@76
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@78
    if-ne v2, v3, :cond_3

    #@7a
    .line 546
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@7c
    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v2

    #@82
    .line 532
    if-eqz v2, :cond_3

    #@84
    .line 547
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@86
    iget-object v2, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@88
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v1

    #@8c
    .line 532
    :cond_3
    return v1
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@2
    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 196
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    return v0
.end method

.method public getDigit()C
    .locals 1

    #@0
    .prologue
    .line 250
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@2
    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getExponentialSymbol()C
    .locals 1

    #@0
    .prologue
    .line 466
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    #@2
    return v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 181
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    return v0
.end method

.method protected getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 3

    #@0
    .prologue
    .line 684
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 685
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@6
    return-object v1

    #@7
    .line 688
    :cond_0
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    #@9
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@b
    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@e
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@10
    .line 689
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@12
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@14
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    #@17
    .line 690
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@19
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@1b
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    #@1e
    .line 691
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@20
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@22
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    #@25
    .line 692
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@27
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@29
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@2c
    .line 693
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@2e
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@30
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    #@33
    .line 694
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@37
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPercent(C)V

    #@3a
    .line 695
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@3c
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@3e
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    #@41
    .line 696
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@43
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@45
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSign(C)V

    #@48
    .line 697
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@4a
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@4c
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    #@4f
    .line 698
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@51
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@53
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    #@56
    .line 699
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@58
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@5a
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    #@5d
    .line 702
    :try_start_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5f
    .line 703
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@61
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@68
    move-result-object v2

    #@69
    .line 702
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 708
    :goto_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@6e
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@70
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    #@73
    .line 709
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@75
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@77
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    #@7a
    .line 711
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@7c
    return-object v1

    #@7d
    .line 704
    :catch_0
    move-exception v0

    #@7e
    .line 705
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "XXX"

    #@81
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@84
    move-result-object v1

    #@85
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@87
    goto :goto_0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    #@0
    .prologue
    .line 318
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@2
    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 444
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    #@0
    .prologue
    .line 266
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    return v0
.end method

.method public getPerMill()C
    .locals 1

    #@0
    .prologue
    .line 211
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@2
    return v0
.end method

.method public getPercent()C
    .locals 1

    #@0
    .prologue
    .line 226
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@2
    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    #@0
    .prologue
    .line 166
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 554
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    .line 555
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    #@4
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@6
    add-int v0, v1, v2

    #@8
    .line 556
    mul-int/lit8 v1, v0, 0x25

    #@a
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@c
    add-int v0, v1, v2

    #@e
    .line 557
    mul-int/lit8 v1, v0, 0x25

    #@10
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@12
    add-int v0, v1, v2

    #@14
    .line 558
    mul-int/lit8 v1, v0, 0x25

    #@16
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@18
    add-int v0, v1, v2

    #@1a
    .line 559
    mul-int/lit8 v1, v0, 0x25

    #@1c
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@1e
    add-int v0, v1, v2

    #@20
    .line 560
    mul-int/lit8 v1, v0, 0x25

    #@22
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@24
    add-int v0, v1, v2

    #@26
    .line 561
    mul-int/lit8 v1, v0, 0x25

    #@28
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2a
    add-int v0, v1, v2

    #@2c
    .line 562
    mul-int/lit8 v1, v0, 0x25

    #@2e
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@33
    move-result v2

    #@34
    add-int v0, v1, v2

    #@36
    .line 563
    mul-int/lit8 v1, v0, 0x25

    #@38
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@3d
    move-result v2

    #@3e
    add-int v0, v1, v2

    #@40
    .line 564
    mul-int/lit8 v1, v0, 0x25

    #@42
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@47
    move-result v2

    #@48
    add-int v0, v1, v2

    #@4a
    .line 565
    mul-int/lit8 v1, v0, 0x25

    #@4c
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@4e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@51
    move-result v2

    #@52
    add-int v0, v1, v2

    #@54
    .line 566
    mul-int/lit8 v1, v0, 0x25

    #@56
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@58
    invoke-virtual {v2}, Ljava/util/Currency;->hashCode()I

    #@5b
    move-result v2

    #@5c
    add-int v0, v1, v2

    #@5e
    .line 567
    mul-int/lit8 v1, v0, 0x25

    #@60
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@62
    add-int v0, v1, v2

    #@64
    .line 568
    mul-int/lit8 v1, v0, 0x25

    #@66
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@68
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@6b
    move-result v2

    #@6c
    add-int v0, v1, v2

    #@6e
    .line 569
    mul-int/lit8 v1, v0, 0x25

    #@70
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@72
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    #@75
    move-result v2

    #@76
    add-int v0, v1, v2

    #@78
    .line 570
    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    if-nez p1, :cond_0

    #@3
    .line 429
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 431
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@b
    .line 432
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@11
    .line 433
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@13
    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@19
    .line 434
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@1b
    .line 427
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    .line 361
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 358
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 1
    .param p1, "decimalSeparator"    # C

    #@0
    .prologue
    .line 203
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    .line 204
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 202
    return-void
.end method

.method public setDigit(C)V
    .locals 1
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 257
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    #@2
    .line 258
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 256
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "exp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    if-nez p1, :cond_0

    #@2
    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 504
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    #@a
    .line 499
    return-void
.end method

.method setExponentialSymbol(C)V
    .locals 1
    .param p1, "exp"    # C

    #@0
    .prologue
    .line 486
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    #@2
    .line 487
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 484
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 1
    .param p1, "groupingSeparator"    # C

    #@0
    .prologue
    .line 188
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    .line 189
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 187
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 1
    .param p1, "infinity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    .line 292
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 290
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 391
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@3
    .line 392
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@5
    .line 393
    if-eqz p1, :cond_0

    #@7
    .line 395
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@d
    .line 396
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    #@f
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    #@11
    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 400
    :cond_0
    :goto_0
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@19
    .line 389
    return-void

    #@1a
    .line 397
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public setMinusSign(C)V
    .locals 1
    .param p1, "minusSign"    # C

    #@0
    .prologue
    .line 339
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    #@2
    .line 340
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 338
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 1
    .param p1, "sep"    # C

    #@0
    .prologue
    .line 453
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    .line 454
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 451
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 1
    .param p1, "NaN"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    .line 309
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 307
    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 1
    .param p1, "patternSeparator"    # C

    #@0
    .prologue
    .line 274
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    .line 275
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 273
    return-void
.end method

.method public setPerMill(C)V
    .locals 1
    .param p1, "perMill"    # C

    #@0
    .prologue
    .line 218
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    #@2
    .line 219
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 217
    return-void
.end method

.method public setPercent(C)V
    .locals 1
    .param p1, "percent"    # C

    #@0
    .prologue
    .line 242
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    #@2
    .line 243
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 241
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 1
    .param p1, "zeroDigit"    # C

    #@0
    .prologue
    .line 173
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    #@2
    .line 174
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    #@5
    .line 172
    return-void
.end method

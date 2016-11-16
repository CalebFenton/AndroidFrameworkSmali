.class public Landroid/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormatSymbols$1;,
        Landroid/icu/text/DecimalFormatSymbols$CacheData;
    }
.end annotation


# static fields
.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field public static final CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final cachedLocaleData:Landroid/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SoftCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x8

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient currency:Landroid/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetarySeparator:C

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1250
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols$1;

    #@2
    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols$1;-><init>()V

    #@5
    .line 1249
    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/SoftCache;

    #@7
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1195
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1196
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1202
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1244
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1260
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 51
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@12
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@19
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1195
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1196
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1202
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1244
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1260
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 67
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@13
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1195
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1196
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1202
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1244
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1260
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 59
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@17
    .line 58
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@2
    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 113
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 97
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method private initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 5
    .param p1, "spcInfo"    # Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 937
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@5
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeCurrencyMatch:Ljava/lang/String;

    #@7
    aput-object v1, v0, v2

    #@9
    .line 938
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@b
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeContextMatch:Ljava/lang/String;

    #@d
    aput-object v1, v0, v3

    #@f
    .line 939
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@11
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeInsert:Ljava/lang/String;

    #@13
    aput-object v1, v0, v4

    #@15
    .line 940
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@17
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterCurrencyMatch:Ljava/lang/String;

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 941
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@1d
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterContextMatch:Ljava/lang/String;

    #@1f
    aput-object v1, v0, v3

    #@21
    .line 942
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@23
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterInsert:Ljava/lang/String;

    #@25
    aput-object v1, v0, v4

    #@27
    .line 936
    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 14
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/16 v13, 0xa

    #@2
    const/4 v12, 0x3

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v11, 0x1

    #@5
    const/4 v10, 0x0

    #@6
    .line 791
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@9
    move-result-object v8

    #@a
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@c
    .line 792
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@e
    .line 793
    sget-object v8, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/SoftCache;

    #@10
    invoke-virtual {v8, p1, v9}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    #@16
    .line 794
    .local v6, "symbolData":Landroid/icu/text/DecimalFormatSymbols$CacheData;
    iget-object v8, v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[C

    #@18
    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, [C

    #@1e
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@20
    .line 795
    iget-object v4, v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;->symbolsArray:[Ljava/lang/String;

    #@22
    .line 798
    .local v4, "numberElements":[Ljava/lang/String;
    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    #@25
    .line 797
    invoke-static {v8, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@2b
    .line 801
    .local v5, "r":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@2e
    move-result-object v7

    #@2f
    .line 802
    .local v7, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v7, v7}, Landroid/icu/text/DecimalFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@32
    .line 805
    aget-object v8, v4, v10

    #@34
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v8

    #@38
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@3a
    .line 806
    aget-object v8, v4, v11

    #@3c
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v8

    #@40
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@42
    .line 807
    const/4 v8, 0x2

    #@43
    aget-object v8, v4, v8

    #@45
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v8

    #@49
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@4b
    .line 809
    aget-object v8, v4, v12

    #@4d
    aget-object v9, v4, v12

    #@4f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@52
    move-result v9

    #@53
    add-int/lit8 v9, v9, -0x1

    #@55
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    #@58
    move-result v8

    #@59
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@5b
    .line 811
    const/4 v8, 0x4

    #@5c
    aget-object v8, v4, v8

    #@5e
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@60
    .line 812
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@62
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@65
    move-result v8

    #@66
    if-le v8, v11, :cond_1

    #@68
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6a
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@6d
    move-result v8

    #@6e
    invoke-static {v8}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    #@71
    move-result v8

    #@72
    if-eqz v8, :cond_1

    #@74
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@76
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    #@79
    move-result v8

    #@7a
    :goto_0
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@7c
    .line 813
    const/4 v8, 0x5

    #@7d
    aget-object v8, v4, v8

    #@7f
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@81
    .line 814
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@83
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@86
    move-result v8

    #@87
    if-le v8, v11, :cond_2

    #@89
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8b
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@8e
    move-result v8

    #@8f
    invoke-static {v8}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    #@92
    move-result v8

    #@93
    if-eqz v8, :cond_2

    #@95
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@97
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    #@9a
    move-result v8

    #@9b
    :goto_1
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@9d
    .line 815
    const/4 v8, 0x6

    #@9e
    aget-object v8, v4, v8

    #@a0
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@a2
    .line 816
    const/4 v8, 0x7

    #@a3
    aget-object v8, v4, v8

    #@a5
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@a8
    move-result v8

    #@a9
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@ab
    .line 817
    const/16 v8, 0x8

    #@ad
    aget-object v8, v4, v8

    #@af
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@b1
    .line 818
    const/16 v8, 0x9

    #@b3
    aget-object v8, v4, v8

    #@b5
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@b7
    .line 820
    aget-object v8, v4, v13

    #@b9
    if-eqz v8, :cond_3

    #@bb
    .line 821
    aget-object v8, v4, v13

    #@bd
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@c0
    move-result v8

    #@c1
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@c3
    .line 826
    :goto_2
    const/16 v8, 0xb

    #@c5
    aget-object v8, v4, v8

    #@c7
    if-eqz v8, :cond_4

    #@c9
    .line 827
    const/16 v8, 0xb

    #@cb
    aget-object v8, v4, v8

    #@cd
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@d0
    move-result v8

    #@d1
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@d3
    .line 832
    :goto_3
    const/16 v8, 0xc

    #@d5
    aget-object v8, v4, v8

    #@d7
    if-eqz v8, :cond_5

    #@d9
    .line 833
    const/16 v8, 0xc

    #@db
    aget-object v8, v4, v8

    #@dd
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@df
    .line 838
    :goto_4
    const/16 v8, 0x23

    #@e1
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@e3
    .line 839
    const/16 v8, 0x2a

    #@e5
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@e7
    .line 840
    const/16 v8, 0x40

    #@e9
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@eb
    .line 843
    sget-object v8, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@ed
    invoke-interface {v8, p1, v11}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@f0
    move-result-object v2

    #@f1
    .line 848
    .local v2, "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    const/4 v0, 0x0

    #@f2
    .line 849
    .local v0, "currname":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@f5
    move-result-object v8

    #@f6
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@f8
    .line 850
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@fa
    if-eqz v8, :cond_7

    #@fc
    .line 851
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@fe
    invoke-virtual {v8}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@101
    move-result-object v8

    #@102
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@104
    .line 852
    new-array v3, v11, [Z

    #@106
    .line 853
    .local v3, "isChoiceFormat":[Z
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@108
    invoke-virtual {v8, p1, v10, v3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    .line 856
    .local v0, "currname":Ljava/lang/String;
    aget-boolean v8, v3, v10

    #@10e
    if-eqz v8, :cond_6

    #@110
    .line 857
    new-instance v8, Ljava/text/ChoiceFormat;

    #@112
    invoke-direct {v8, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    #@115
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@117
    invoke-virtual {v8, v10, v11}, Ljava/text/ChoiceFormat;->format(D)Ljava/lang/String;

    #@11a
    move-result-object v8

    #@11b
    .line 856
    :goto_5
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@11d
    .line 859
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@11f
    invoke-virtual {v2, v8}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    #@122
    move-result-object v1

    #@123
    .line 860
    .local v1, "fmtInfo":Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    if-eqz v1, :cond_0

    #@125
    .line 861
    iget-object v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    #@127
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@129
    .line 862
    iget-char v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:C

    #@12b
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@12d
    .line 863
    iget-char v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:C

    #@12f
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@131
    .line 872
    .end local v0    # "currname":Ljava/lang/String;
    .end local v1    # "fmtInfo":Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .end local v3    # "isChoiceFormat":[Z
    :cond_0
    :goto_6
    new-array v8, v12, [Ljava/lang/String;

    #@133
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@135
    .line 873
    new-array v8, v12, [Ljava/lang/String;

    #@137
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@139
    .line 874
    invoke-virtual {v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@13c
    move-result-object v8

    #@13d
    invoke-direct {p0, v8}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    #@140
    .line 790
    return-void

    #@141
    .line 812
    .end local v2    # "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    :cond_1
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@143
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@146
    move-result v8

    #@147
    goto/16 :goto_0

    #@149
    .line 814
    :cond_2
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@14b
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    #@14e
    move-result v8

    #@14f
    goto/16 :goto_1

    #@151
    .line 823
    :cond_3
    iget-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@153
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@155
    goto/16 :goto_2

    #@157
    .line 829
    :cond_4
    iget-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@159
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@15b
    goto/16 :goto_3

    #@15d
    .line 835
    :cond_5
    const-string/jumbo v8, "\u00d7"

    #@160
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@162
    goto/16 :goto_4

    #@164
    .restart local v0    # "currname":Ljava/lang/String;
    .restart local v2    # "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .restart local v3    # "isChoiceFormat":[Z
    :cond_6
    move-object v8, v0

    #@165
    .line 858
    goto :goto_5

    #@166
    .line 866
    .end local v3    # "isChoiceFormat":[Z
    .local v0, "currname":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "XXX"

    #@169
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@16b
    .line 867
    const-string/jumbo v8, "\u00a4"

    #@16e
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@170
    goto :goto_6
.end method

.method private static isBidiMark(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 782
    const/16 v1, 0x200e

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x200f

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x61c

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method static loadSymbols(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 17
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 880
    invoke-static/range {p0 .. p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@3
    move-result-object v10

    #@4
    .line 881
    .local v10, "ns":Landroid/icu/text/NumberingSystem;
    const/16 v15, 0xa

    #@6
    new-array v3, v15, [C

    #@8
    .line 882
    .local v3, "digits":[C
    if-eqz v10, :cond_0

    #@a
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getRadix()I

    #@d
    move-result v15

    #@e
    const/16 v16, 0xa

    #@10
    move/from16 v0, v16

    #@12
    if-ne v15, v0, :cond_0

    #@14
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@17
    move-result v15

    #@18
    if-eqz v15, :cond_1

    #@1a
    .line 897
    :cond_0
    const/16 v15, 0x30

    #@1c
    const/16 v16, 0x0

    #@1e
    aput-char v15, v3, v16

    #@20
    .line 898
    const/16 v15, 0x31

    #@22
    const/16 v16, 0x1

    #@24
    aput-char v15, v3, v16

    #@26
    .line 899
    const/16 v15, 0x32

    #@28
    const/16 v16, 0x2

    #@2a
    aput-char v15, v3, v16

    #@2c
    .line 900
    const/16 v15, 0x33

    #@2e
    const/16 v16, 0x3

    #@30
    aput-char v15, v3, v16

    #@32
    .line 901
    const/16 v15, 0x34

    #@34
    const/16 v16, 0x4

    #@36
    aput-char v15, v3, v16

    #@38
    .line 902
    const/16 v15, 0x35

    #@3a
    const/16 v16, 0x5

    #@3c
    aput-char v15, v3, v16

    #@3e
    .line 903
    const/16 v15, 0x36

    #@40
    const/16 v16, 0x6

    #@42
    aput-char v15, v3, v16

    #@44
    .line 904
    const/16 v15, 0x37

    #@46
    const/16 v16, 0x7

    #@48
    aput-char v15, v3, v16

    #@4a
    .line 905
    const/16 v15, 0x38

    #@4c
    const/16 v16, 0x8

    #@4e
    aput-char v15, v3, v16

    #@50
    .line 906
    const/16 v15, 0x39

    #@52
    const/16 v16, 0x9

    #@54
    aput-char v15, v3, v16

    #@56
    .line 907
    const-string/jumbo v11, "latn"

    #@59
    .line 911
    .local v11, "nsName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v15, "android/icu/impl/data/icudt56b"

    #@5c
    .line 910
    move-object/from16 v0, p0

    #@5e
    invoke-static {v15, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@61
    move-result-object v12

    #@62
    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    #@64
    .line 912
    .local v12, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v15, "latn"

    #@67
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v8

    #@6b
    .line 913
    .local v8, "isLatn":Z
    new-instance v15, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v16, "NumberElements/"

    #@73
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v15

    #@77
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v15

    #@7b
    const-string/jumbo v16, "/symbols/"

    #@7e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v15

    #@82
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    .line 914
    .local v1, "baseKey":Ljava/lang/String;
    const-string/jumbo v9, "NumberElements/latn/symbols/"

    #@89
    .line 915
    .local v9, "latnKey":Ljava/lang/String;
    const/16 v15, 0xd

    #@8b
    new-array v13, v15, [Ljava/lang/String;

    #@8d
    const-string/jumbo v15, "decimal"

    #@90
    const/16 v16, 0x0

    #@92
    aput-object v15, v13, v16

    #@94
    const-string/jumbo v15, "group"

    #@97
    const/16 v16, 0x1

    #@99
    aput-object v15, v13, v16

    #@9b
    const-string/jumbo v15, "list"

    #@9e
    const/16 v16, 0x2

    #@a0
    aput-object v15, v13, v16

    #@a2
    const-string/jumbo v15, "percentSign"

    #@a5
    const/16 v16, 0x3

    #@a7
    aput-object v15, v13, v16

    #@a9
    const-string/jumbo v15, "minusSign"

    #@ac
    const/16 v16, 0x4

    #@ae
    aput-object v15, v13, v16

    #@b0
    const-string/jumbo v15, "plusSign"

    #@b3
    const/16 v16, 0x5

    #@b5
    aput-object v15, v13, v16

    #@b7
    const-string/jumbo v15, "exponential"

    #@ba
    const/16 v16, 0x6

    #@bc
    aput-object v15, v13, v16

    #@be
    const-string/jumbo v15, "perMille"

    #@c1
    const/16 v16, 0x7

    #@c3
    aput-object v15, v13, v16

    #@c5
    const-string/jumbo v15, "infinity"

    #@c8
    const/16 v16, 0x8

    #@ca
    aput-object v15, v13, v16

    #@cc
    const-string/jumbo v15, "nan"

    #@cf
    const/16 v16, 0x9

    #@d1
    aput-object v15, v13, v16

    #@d3
    const-string/jumbo v15, "currencyDecimal"

    #@d6
    const/16 v16, 0xa

    #@d8
    aput-object v15, v13, v16

    #@da
    const-string/jumbo v15, "currencyGroup"

    #@dd
    const/16 v16, 0xb

    #@df
    aput-object v15, v13, v16

    #@e1
    const-string/jumbo v15, "superscriptingExponent"

    #@e4
    const/16 v16, 0xc

    #@e6
    aput-object v15, v13, v16

    #@e8
    .line 916
    .local v13, "symbolKeys":[Ljava/lang/String;
    const/16 v15, 0xc

    #@ea
    new-array v6, v15, [Ljava/lang/String;

    #@ec
    const-string/jumbo v15, "."

    #@ef
    const/16 v16, 0x0

    #@f1
    aput-object v15, v6, v16

    #@f3
    const-string/jumbo v15, ","

    #@f6
    const/16 v16, 0x1

    #@f8
    aput-object v15, v6, v16

    #@fa
    const-string/jumbo v15, ";"

    #@fd
    const/16 v16, 0x2

    #@ff
    aput-object v15, v6, v16

    #@101
    const-string/jumbo v15, "%"

    #@104
    const/16 v16, 0x3

    #@106
    aput-object v15, v6, v16

    #@108
    const-string/jumbo v15, "-"

    #@10b
    const/16 v16, 0x4

    #@10d
    aput-object v15, v6, v16

    #@10f
    const-string/jumbo v15, "+"

    #@112
    const/16 v16, 0x5

    #@114
    aput-object v15, v6, v16

    #@116
    const-string/jumbo v15, "E"

    #@119
    const/16 v16, 0x6

    #@11b
    aput-object v15, v6, v16

    #@11d
    const-string/jumbo v15, "\u2030"

    #@120
    const/16 v16, 0x7

    #@122
    aput-object v15, v6, v16

    #@124
    const-string/jumbo v15, "\u221e"

    #@127
    const/16 v16, 0x8

    #@129
    aput-object v15, v6, v16

    #@12b
    const-string/jumbo v15, "NaN"

    #@12e
    const/16 v16, 0x9

    #@130
    aput-object v15, v6, v16

    #@132
    const/4 v15, 0x0

    #@133
    const/16 v16, 0xa

    #@135
    aput-object v15, v6, v16

    #@137
    const/4 v15, 0x0

    #@138
    const/16 v16, 0xb

    #@13a
    aput-object v15, v6, v16

    #@13c
    .line 917
    .local v6, "fallbackElements":[Ljava/lang/String;
    array-length v15, v13

    #@13d
    new-array v14, v15, [Ljava/lang/String;

    #@13f
    .line 918
    .local v14, "symbolsArray":[Ljava/lang/String;
    const/4 v7, 0x0

    #@140
    .local v7, "i":I
    :goto_1
    array-length v15, v13

    #@141
    if-ge v7, v15, :cond_3

    #@143
    .line 920
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v15

    #@14c
    aget-object v16, v13, v7

    #@14e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v15

    #@152
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v15

    #@156
    invoke-virtual {v12, v15}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@159
    move-result-object v15

    #@15a
    aput-object v15, v14, v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15c
    .line 918
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@15e
    goto :goto_1

    #@15f
    .line 883
    .end local v1    # "baseKey":Ljava/lang/String;
    .end local v6    # "fallbackElements":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isLatn":Z
    .end local v9    # "latnKey":Ljava/lang/String;
    .end local v11    # "nsName":Ljava/lang/String;
    .end local v12    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "symbolKeys":[Ljava/lang/String;
    .end local v14    # "symbolsArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@162
    move-result-object v15

    #@163
    invoke-static {v15}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    #@166
    move-result v15

    #@167
    .line 882
    if-eqz v15, :cond_0

    #@169
    .line 884
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@16c
    move-result-object v2

    #@16d
    .line 885
    .local v2, "digitString":Ljava/lang/String;
    const/4 v15, 0x0

    #@16e
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@171
    move-result v15

    #@172
    const/16 v16, 0x0

    #@174
    aput-char v15, v3, v16

    #@176
    .line 886
    const/4 v15, 0x1

    #@177
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@17a
    move-result v15

    #@17b
    const/16 v16, 0x1

    #@17d
    aput-char v15, v3, v16

    #@17f
    .line 887
    const/4 v15, 0x2

    #@180
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@183
    move-result v15

    #@184
    const/16 v16, 0x2

    #@186
    aput-char v15, v3, v16

    #@188
    .line 888
    const/4 v15, 0x3

    #@189
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@18c
    move-result v15

    #@18d
    const/16 v16, 0x3

    #@18f
    aput-char v15, v3, v16

    #@191
    .line 889
    const/4 v15, 0x4

    #@192
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@195
    move-result v15

    #@196
    const/16 v16, 0x4

    #@198
    aput-char v15, v3, v16

    #@19a
    .line 890
    const/4 v15, 0x5

    #@19b
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@19e
    move-result v15

    #@19f
    const/16 v16, 0x5

    #@1a1
    aput-char v15, v3, v16

    #@1a3
    .line 891
    const/4 v15, 0x6

    #@1a4
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@1a7
    move-result v15

    #@1a8
    const/16 v16, 0x6

    #@1aa
    aput-char v15, v3, v16

    #@1ac
    .line 892
    const/4 v15, 0x7

    #@1ad
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@1b0
    move-result v15

    #@1b1
    const/16 v16, 0x7

    #@1b3
    aput-char v15, v3, v16

    #@1b5
    .line 893
    const/16 v15, 0x8

    #@1b7
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@1ba
    move-result v15

    #@1bb
    const/16 v16, 0x8

    #@1bd
    aput-char v15, v3, v16

    #@1bf
    .line 894
    const/16 v15, 0x9

    #@1c1
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    #@1c4
    move-result v15

    #@1c5
    const/16 v16, 0x9

    #@1c7
    aput-char v15, v3, v16

    #@1c9
    .line 895
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@1cc
    move-result-object v11

    #@1cd
    .restart local v11    # "nsName":Ljava/lang/String;
    goto/16 :goto_0

    #@1cf
    .line 921
    .end local v2    # "digitString":Ljava/lang/String;
    .restart local v1    # "baseKey":Ljava/lang/String;
    .restart local v6    # "fallbackElements":[Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "isLatn":Z
    .restart local v9    # "latnKey":Ljava/lang/String;
    .restart local v12    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v13    # "symbolKeys":[Ljava/lang/String;
    .restart local v14    # "symbolsArray":[Ljava/lang/String;
    :catch_0
    move-exception v4

    #@1d0
    .line 922
    .local v4, "ex":Ljava/util/MissingResourceException;
    if-nez v8, :cond_2

    #@1d2
    .line 924
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v15

    #@1db
    aget-object v16, v13, v7

    #@1dd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v15

    #@1e1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v15

    #@1e5
    invoke-virtual {v12, v15}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@1e8
    move-result-object v15

    #@1e9
    aput-object v15, v14, v7
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@1eb
    goto/16 :goto_2

    #@1ed
    .line 925
    :catch_1
    move-exception v5

    #@1ee
    .line 926
    .local v5, "ex1":Ljava/util/MissingResourceException;
    aget-object v15, v6, v7

    #@1f0
    aput-object v15, v14, v7

    #@1f2
    goto/16 :goto_2

    #@1f4
    .line 929
    .end local v5    # "ex1":Ljava/util/MissingResourceException;
    :cond_2
    aget-object v15, v6, v7

    #@1f6
    aput-object v15, v14, v7

    #@1f8
    goto/16 :goto_2

    #@1fa
    .line 933
    .end local v4    # "ex":Ljava/util/MissingResourceException;
    :cond_3
    new-instance v15, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    #@1fc
    invoke-direct {v15, v3, v14}, Landroid/icu/text/DecimalFormatSymbols$CacheData;-><init>([C[Ljava/lang/String;)V

    #@1ff
    return-object v15
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x3

    #@4
    const/4 v4, 0x1

    #@5
    .line 959
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@8
    .line 962
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@a
    if-ge v2, v4, :cond_0

    #@c
    .line 965
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@e
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@10
    .line 966
    const/16 v2, 0x45

    #@12
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    #@14
    .line 968
    :cond_0
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@16
    const/4 v3, 0x2

    #@17
    if-ge v2, v3, :cond_1

    #@19
    .line 969
    const/16 v2, 0x2a

    #@1b
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@1d
    .line 970
    const/16 v2, 0x2b

    #@1f
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@21
    .line 971
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    #@23
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@29
    .line 978
    :cond_1
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@2b
    if-ge v2, v5, :cond_2

    #@2d
    .line 984
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@33
    .line 986
    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@35
    const/4 v3, 0x4

    #@36
    if-ge v2, v3, :cond_3

    #@38
    .line 988
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@3a
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@40
    .line 990
    :cond_3
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@42
    const/4 v3, 0x5

    #@43
    if-ge v2, v3, :cond_4

    #@45
    .line 992
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@47
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@49
    .line 994
    :cond_4
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@4b
    const/4 v3, 0x6

    #@4c
    if-ge v2, v3, :cond_7

    #@4e
    .line 996
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@50
    if-nez v2, :cond_5

    #@52
    .line 997
    new-array v2, v5, [Ljava/lang/String;

    #@54
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@56
    .line 999
    :cond_5
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@58
    if-nez v2, :cond_6

    #@5a
    .line 1000
    new-array v2, v5, [Ljava/lang/String;

    #@5c
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@5e
    .line 1002
    :cond_6
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@60
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    #@63
    .line 1004
    :cond_7
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@65
    const/4 v3, 0x7

    #@66
    if-ge v2, v3, :cond_9

    #@68
    .line 1006
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6a
    if-nez v2, :cond_8

    #@6c
    .line 1007
    new-array v0, v4, [C

    #@6e
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@70
    aput-char v2, v0, v6

    #@72
    .line 1008
    .local v0, "minusArray":[C
    new-instance v2, Ljava/lang/String;

    #@74
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@77
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@79
    .line 1010
    .end local v0    # "minusArray":[C
    :cond_8
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@7b
    if-nez v2, :cond_9

    #@7d
    .line 1011
    new-array v1, v4, [C

    #@7f
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@81
    aput-char v2, v1, v6

    #@83
    .line 1012
    .local v1, "plusArray":[C
    new-instance v2, Ljava/lang/String;

    #@85
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    #@88
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8a
    .line 1015
    .end local v1    # "plusArray":[C
    :cond_9
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@8c
    if-ge v2, v7, :cond_a

    #@8e
    .line 1016
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@90
    if-nez v2, :cond_a

    #@92
    .line 1017
    const-string/jumbo v2, "\u00d7"

    #@95
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@97
    .line 1020
    :cond_a
    iput v7, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@99
    .line 1023
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@9b
    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@9e
    move-result-object v2

    #@9f
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@a1
    .line 954
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 707
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 709
    :catch_0
    move-exception v0

    #@8
    .line 711
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@a
    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 720
    instance-of v3, p1, Landroid/icu/text/DecimalFormatSymbols;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 721
    return v2

    #@6
    .line 723
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    .line 724
    const/4 v2, 0x1

    #@9
    return v2

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 726
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    #@d
    .line 727
    .local v1, "other":Landroid/icu/text/DecimalFormatSymbols;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    #@f
    if-gt v0, v3, :cond_4

    #@11
    .line 728
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@13
    aget-object v3, v3, v0

    #@15
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@17
    aget-object v4, v4, v0

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_2

    #@1f
    .line 729
    return v2

    #@20
    .line 731
    :cond_2
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@22
    aget-object v3, v3, v0

    #@24
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@26
    aget-object v4, v4, v0

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_3

    #@2e
    .line 732
    return v2

    #@2f
    .line 727
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 736
    :cond_4
    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@34
    if-nez v3, :cond_6

    #@36
    .line 737
    const/4 v0, 0x0

    #@37
    :goto_1
    const/16 v3, 0xa

    #@39
    if-ge v0, v3, :cond_7

    #@3b
    .line 738
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@3d
    aget-char v3, v3, v0

    #@3f
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@41
    add-int/2addr v4, v0

    #@42
    if-eq v3, v4, :cond_5

    #@44
    .line 739
    return v2

    #@45
    .line 737
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 742
    :cond_6
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4a
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4c
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_7

    #@52
    .line 743
    return v2

    #@53
    .line 747
    :cond_7
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@55
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@57
    if-ne v3, v4, :cond_8

    #@59
    .line 748
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@5b
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@5d
    if-ne v3, v4, :cond_8

    #@5f
    .line 749
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@61
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@63
    if-ne v3, v4, :cond_8

    #@65
    .line 750
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@67
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@69
    if-ne v3, v4, :cond_8

    #@6b
    .line 751
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@6d
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@6f
    if-ne v3, v4, :cond_8

    #@71
    .line 752
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@73
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@75
    if-ne v3, v4, :cond_8

    #@77
    .line 753
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@79
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    .line 747
    if-eqz v3, :cond_8

    #@81
    .line 754
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@83
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@85
    if-ne v3, v4, :cond_8

    #@87
    .line 755
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@89
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v3

    #@8f
    .line 747
    if-eqz v3, :cond_8

    #@91
    .line 756
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@93
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v3

    #@99
    .line 747
    if-eqz v3, :cond_8

    #@9b
    .line 757
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@9d
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v3

    #@a3
    .line 747
    if-eqz v3, :cond_8

    #@a5
    .line 758
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@a7
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v3

    #@ad
    .line 747
    if-eqz v3, :cond_8

    #@af
    .line 759
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@b1
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@b3
    if-ne v3, v4, :cond_8

    #@b5
    .line 760
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@b7
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@b9
    if-ne v3, v4, :cond_8

    #@bb
    .line 761
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@bd
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v3

    #@c3
    .line 747
    if-eqz v3, :cond_8

    #@c5
    .line 762
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@c7
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@c9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v3

    #@cd
    .line 747
    if-eqz v3, :cond_8

    #@cf
    .line 763
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@d1
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@d3
    if-ne v3, v4, :cond_8

    #@d5
    .line 764
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@d7
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@d9
    if-ne v3, v4, :cond_8

    #@db
    .line 765
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@dd
    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@df
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v2

    #@e3
    .line 746
    :cond_8
    return v2
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@2
    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 250
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    return v0
.end method

.method public getDigit()C
    .locals 1

    #@0
    .prologue
    .line 298
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@2
    return v0
.end method

.method public getDigits()[C
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 168
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 169
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [C

    #@e
    return-object v2

    #@f
    .line 171
    :cond_0
    new-array v0, v3, [C

    #@11
    .line 172
    .local v0, "digitArray":[C
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@14
    .line 173
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@16
    add-int/2addr v2, v1

    #@17
    int-to-char v2, v2

    #@18
    aput-char v2, v0, v1

    #@1a
    .line 172
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 175
    :cond_1
    return-object v0
.end method

.method getDigitsLocal()[C
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 185
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 186
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@8
    return-object v2

    #@9
    .line 188
    :cond_0
    new-array v0, v3, [C

    #@b
    .line 189
    .local v0, "digitArray":[C
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@e
    .line 190
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@10
    add-int/2addr v2, v1

    #@11
    int-to-char v2, v2

    #@12
    aput-char v2, v0, v1

    #@14
    .line 189
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 192
    :cond_1
    return-object v0
.end method

.method public getExponentMultiplicationSign()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 234
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 1286
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1287
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 1286
    :goto_0
    return-object v0

    #@7
    .line 1287
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    #@0
    .prologue
    .line 373
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@2
    return v0
.end method

.method public getMinusString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 471
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    return v0
.end method

.method public getMonetaryGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 479
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@2
    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPadEscape()C
    .locals 1

    #@0
    .prologue
    .line 593
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@2
    return v0
.end method

.method public getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "itemType"    # I
    .param p2, "beforeCurrency"    # Z

    #@0
    .prologue
    .line 648
    if-ltz p1, :cond_0

    #@2
    .line 649
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 650
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "unknown currency spacing: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 652
    :cond_1
    if-eqz p2, :cond_2

    #@21
    .line 653
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@23
    aget-object v0, v0, p1

    #@25
    return-object v0

    #@26
    .line 655
    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@28
    aget-object v0, v0, p1

    #@2a
    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    #@0
    .prologue
    .line 315
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    return v0
.end method

.method public getPerMill()C
    .locals 1

    #@0
    .prologue
    .line 266
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@2
    return v0
.end method

.method public getPercent()C
    .locals 1

    #@0
    .prologue
    .line 282
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@2
    return v0
.end method

.method public getPlusSign()C
    .locals 1

    #@0
    .prologue
    .line 551
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@2
    return v0
.end method

.method public getPlusString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignificantDigit()C
    .locals 1

    #@0
    .prologue
    .line 218
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@2
    return v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getZeroDigit()C
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 158
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@6
    const/4 v1, 0x0

    #@7
    aget-char v0, v0, v1

    #@9
    return v0

    #@a
    .line 160
    :cond_0
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@c
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 772
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2
    const/4 v2, 0x0

    #@3
    aget-char v0, v1, v2

    #@5
    .line 773
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    #@7
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@9
    add-int v0, v1, v2

    #@b
    .line 774
    mul-int/lit8 v1, v0, 0x25

    #@d
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@f
    add-int v0, v1, v2

    #@11
    .line 775
    return v0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 1
    .param p1, "currency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 458
    if-nez p1, :cond_0

    #@2
    .line 459
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 461
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@a
    .line 462
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@10
    .line 463
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@18
    .line 457
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    .line 413
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0
    .param p1, "decimalSeparator"    # C

    #@0
    .prologue
    .line 258
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    .line 257
    return-void
.end method

.method public setDigit(C)V
    .locals 0
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 306
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@2
    .line 305
    return-void
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "exponentMultiplicationSign"    # Ljava/lang/String;

    #@0
    .prologue
    .line 517
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@2
    .line 516
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "exp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 539
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2
    .line 538
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0
    .param p1, "groupingSeparator"    # C

    #@0
    .prologue
    .line 242
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    .line 241
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0
    .param p1, "infinity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    .line 343
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    .line 429
    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1308
    if-nez p1, :cond_0

    #@4
    move v2, v0

    #@5
    :goto_0
    if-nez p2, :cond_1

    #@7
    :goto_1
    if-eq v2, v0, :cond_2

    #@9
    .line 1310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 1308
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 1315
    :cond_2
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 1316
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 1306
    return-void
.end method

.method public setMinusSign(C)V
    .locals 2
    .param p1, "minusSign"    # C

    #@0
    .prologue
    .line 395
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@2
    .line 397
    const/4 v1, 0x1

    #@3
    new-array v0, v1, [C

    #@5
    const/4 v1, 0x0

    #@6
    aput-char p1, v0, v1

    #@8
    .line 398
    .local v0, "minusArray":[C
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@f
    .line 394
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0
    .param p1, "sep"    # C

    #@0
    .prologue
    .line 495
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    .line 494
    return-void
.end method

.method public setMonetaryGroupingSeparator(C)V
    .locals 0
    .param p1, "sep"    # C

    #@0
    .prologue
    .line 503
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@2
    .line 502
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0
    .param p1, "NaN"    # Ljava/lang/String;

    #@0
    .prologue
    .line 363
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    .line 362
    return-void
.end method

.method public setPadEscape(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 607
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@2
    .line 606
    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .locals 3
    .param p1, "itemType"    # I
    .param p2, "beforeCurrency"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 675
    if-ltz p1, :cond_0

    #@2
    .line 676
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "unknown currency spacing: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 679
    :cond_1
    if-eqz p2, :cond_2

    #@21
    .line 680
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@23
    aput-object p3, v0, p1

    #@25
    .line 674
    :goto_0
    return-void

    #@26
    .line 682
    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@28
    aput-object p3, v0, p1

    #@2a
    goto :goto_0
.end method

.method public setPatternSeparator(C)V
    .locals 0
    .param p1, "patternSeparator"    # C

    #@0
    .prologue
    .line 324
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    .line 323
    return-void
.end method

.method public setPerMill(C)V
    .locals 0
    .param p1, "perMill"    # C

    #@0
    .prologue
    .line 274
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@2
    .line 273
    return-void
.end method

.method public setPercent(C)V
    .locals 0
    .param p1, "percent"    # C

    #@0
    .prologue
    .line 290
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@2
    .line 289
    return-void
.end method

.method public setPlusSign(C)V
    .locals 3
    .param p1, "plus"    # C

    #@0
    .prologue
    .line 575
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@2
    .line 577
    const/4 v1, 0x1

    #@3
    new-array v0, v1, [C

    #@5
    iget-char v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@7
    const/4 v2, 0x0

    #@8
    aput-char v1, v0, v2

    #@a
    .line 578
    .local v0, "plusArray":[C
    new-instance v1, Ljava/lang/String;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@f
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@11
    .line 574
    return-void
.end method

.method public setSignificantDigit(C)V
    .locals 0
    .param p1, "sigDigit"    # C

    #@0
    .prologue
    .line 226
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@2
    .line 225
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 3
    .param p1, "zeroDigit"    # C

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 202
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@6
    const/4 v2, 0x0

    #@7
    aput-char p1, v1, v2

    #@9
    .line 204
    const/4 v0, 0x1

    #@a
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 205
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@10
    add-int v2, p1, v0

    #@12
    int-to-char v2, v2

    #@13
    aput-char v2, v1, v0

    #@15
    .line 204
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 209
    .end local v0    # "i":I
    :cond_0
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@1a
    .line 200
    :cond_1
    return-void
.end method

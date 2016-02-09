.class public Landroid/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field public static final CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final cachedLocaleData:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "[[",
            "Ljava/lang/String;",
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
    .line 1321
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 1320
    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1265
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1266
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1273
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1315
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1326
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 53
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@12
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@19
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1265
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1266
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1273
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1315
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1326
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 71
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@13
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1265
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6
    .line 1266
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8
    .line 1273
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@a
    .line 1315
    const/16 v0, 0x8

    #@c
    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@e
    .line 1326
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@10
    .line 62
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    #@17
    .line 61
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 138
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
    .line 157
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
    .line 86
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
    .line 120
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
    .line 103
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
    .line 1001
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@5
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeCurrencyMatch:Ljava/lang/String;

    #@7
    aput-object v1, v0, v2

    #@9
    .line 1002
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@b
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeContextMatch:Ljava/lang/String;

    #@d
    aput-object v1, v0, v3

    #@f
    .line 1003
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@11
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeInsert:Ljava/lang/String;

    #@13
    aput-object v1, v0, v4

    #@15
    .line 1004
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@17
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterCurrencyMatch:Ljava/lang/String;

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 1005
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@1d
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterContextMatch:Ljava/lang/String;

    #@1f
    aput-object v1, v0, v3

    #@21
    .line 1006
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@23
    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterInsert:Ljava/lang/String;

    #@25
    aput-object v1, v0, v4

    #@27
    .line 1000
    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 28
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@3
    move-result-object v25

    #@4
    move-object/from16 v0, v25

    #@6
    move-object/from16 v1, p0

    #@8
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@a
    .line 853
    move-object/from16 v0, p1

    #@c
    move-object/from16 v1, p0

    #@e
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@10
    .line 857
    invoke-static/range {p1 .. p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@13
    move-result-object v17

    #@14
    .line 858
    .local v17, "ns":Landroid/icu/text/NumberingSystem;
    const/16 v25, 0xa

    #@16
    move/from16 v0, v25

    #@18
    new-array v0, v0, [C

    #@1a
    move-object/from16 v25, v0

    #@1c
    move-object/from16 v0, v25

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@22
    .line 859
    if-eqz v17, :cond_0

    #@24
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NumberingSystem;->getRadix()I

    #@27
    move-result v25

    #@28
    const/16 v26, 0xa

    #@2a
    move/from16 v0, v25

    #@2c
    move/from16 v1, v26

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    #@33
    move-result v25

    #@34
    if-eqz v25, :cond_1

    #@36
    .line 874
    :cond_0
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@3a
    move-object/from16 v25, v0

    #@3c
    const/16 v26, 0x30

    #@3e
    const/16 v27, 0x0

    #@40
    aput-char v26, v25, v27

    #@42
    .line 875
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@46
    move-object/from16 v25, v0

    #@48
    const/16 v26, 0x31

    #@4a
    const/16 v27, 0x1

    #@4c
    aput-char v26, v25, v27

    #@4e
    .line 876
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@52
    move-object/from16 v25, v0

    #@54
    const/16 v26, 0x32

    #@56
    const/16 v27, 0x2

    #@58
    aput-char v26, v25, v27

    #@5a
    .line 877
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@5e
    move-object/from16 v25, v0

    #@60
    const/16 v26, 0x33

    #@62
    const/16 v27, 0x3

    #@64
    aput-char v26, v25, v27

    #@66
    .line 878
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@6a
    move-object/from16 v25, v0

    #@6c
    const/16 v26, 0x34

    #@6e
    const/16 v27, 0x4

    #@70
    aput-char v26, v25, v27

    #@72
    .line 879
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@76
    move-object/from16 v25, v0

    #@78
    const/16 v26, 0x35

    #@7a
    const/16 v27, 0x5

    #@7c
    aput-char v26, v25, v27

    #@7e
    .line 880
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@82
    move-object/from16 v25, v0

    #@84
    const/16 v26, 0x36

    #@86
    const/16 v27, 0x6

    #@88
    aput-char v26, v25, v27

    #@8a
    .line 881
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@8e
    move-object/from16 v25, v0

    #@90
    const/16 v26, 0x37

    #@92
    const/16 v27, 0x7

    #@94
    aput-char v26, v25, v27

    #@96
    .line 882
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@9a
    move-object/from16 v25, v0

    #@9c
    const/16 v26, 0x38

    #@9e
    const/16 v27, 0x8

    #@a0
    aput-char v26, v25, v27

    #@a2
    .line 883
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@a6
    move-object/from16 v25, v0

    #@a8
    const/16 v26, 0x39

    #@aa
    const/16 v27, 0x9

    #@ac
    aput-char v26, v25, v27

    #@ae
    .line 884
    const-string/jumbo v18, "latn"

    #@b1
    .line 888
    .local v18, "nsName":Ljava/lang/String;
    :goto_0
    sget-object v25, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@b3
    move-object/from16 v0, v25

    #@b5
    move-object/from16 v1, p1

    #@b7
    invoke-interface {v0, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    move-result-object v6

    #@bb
    check-cast v6, [[Ljava/lang/String;

    #@bd
    .line 890
    .local v6, "data":[[Ljava/lang/String;
    if-nez v6, :cond_4

    #@bf
    .line 891
    const/16 v25, 0x1

    #@c1
    move/from16 v0, v25

    #@c3
    new-array v6, v0, [[Ljava/lang/String;

    #@c5
    .line 893
    const-string/jumbo v25, "android/icu/impl/data/icudt55b"

    #@c8
    .line 892
    move-object/from16 v0, v25

    #@ca
    move-object/from16 v1, p1

    #@cc
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@cf
    move-result-object v21

    #@d0
    check-cast v21, Landroid/icu/impl/ICUResourceBundle;

    #@d2
    .line 894
    .local v21, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v25, "latn"

    #@d5
    move-object/from16 v0, v18

    #@d7
    move-object/from16 v1, v25

    #@d9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v15

    #@dd
    .line 895
    .local v15, "isLatn":Z
    new-instance v25, Ljava/lang/StringBuilder;

    #@df
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v26, "NumberElements/"

    #@e5
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v25

    #@e9
    move-object/from16 v0, v25

    #@eb
    move-object/from16 v1, v18

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v25

    #@f1
    const-string/jumbo v26, "/symbols/"

    #@f4
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v25

    #@f8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v4

    #@fc
    .line 896
    .local v4, "baseKey":Ljava/lang/String;
    const-string/jumbo v16, "NumberElements/latn/symbols/"

    #@ff
    .line 897
    .local v16, "latnKey":Ljava/lang/String;
    const/16 v25, 0xd

    #@101
    move/from16 v0, v25

    #@103
    new-array v0, v0, [Ljava/lang/String;

    #@105
    move-object/from16 v22, v0

    #@107
    const-string/jumbo v25, "decimal"

    #@10a
    const/16 v26, 0x0

    #@10c
    aput-object v25, v22, v26

    #@10e
    const-string/jumbo v25, "group"

    #@111
    const/16 v26, 0x1

    #@113
    aput-object v25, v22, v26

    #@115
    const-string/jumbo v25, "list"

    #@118
    const/16 v26, 0x2

    #@11a
    aput-object v25, v22, v26

    #@11c
    const-string/jumbo v25, "percentSign"

    #@11f
    const/16 v26, 0x3

    #@121
    aput-object v25, v22, v26

    #@123
    const-string/jumbo v25, "minusSign"

    #@126
    const/16 v26, 0x4

    #@128
    aput-object v25, v22, v26

    #@12a
    const-string/jumbo v25, "plusSign"

    #@12d
    const/16 v26, 0x5

    #@12f
    aput-object v25, v22, v26

    #@131
    const-string/jumbo v25, "exponential"

    #@134
    const/16 v26, 0x6

    #@136
    aput-object v25, v22, v26

    #@138
    const-string/jumbo v25, "perMille"

    #@13b
    const/16 v26, 0x7

    #@13d
    aput-object v25, v22, v26

    #@13f
    const-string/jumbo v25, "infinity"

    #@142
    const/16 v26, 0x8

    #@144
    aput-object v25, v22, v26

    #@146
    const-string/jumbo v25, "nan"

    #@149
    const/16 v26, 0x9

    #@14b
    aput-object v25, v22, v26

    #@14d
    const-string/jumbo v25, "currencyDecimal"

    #@150
    const/16 v26, 0xa

    #@152
    aput-object v25, v22, v26

    #@154
    const-string/jumbo v25, "currencyGroup"

    #@157
    const/16 v26, 0xb

    #@159
    aput-object v25, v22, v26

    #@15b
    const-string/jumbo v25, "superscriptingExponent"

    #@15e
    const/16 v26, 0xc

    #@160
    aput-object v25, v22, v26

    #@162
    .line 898
    .local v22, "symbolKeys":[Ljava/lang/String;
    const/16 v25, 0xc

    #@164
    move/from16 v0, v25

    #@166
    new-array v10, v0, [Ljava/lang/String;

    #@168
    const-string/jumbo v25, "."

    #@16b
    const/16 v26, 0x0

    #@16d
    aput-object v25, v10, v26

    #@16f
    const-string/jumbo v25, ","

    #@172
    const/16 v26, 0x1

    #@174
    aput-object v25, v10, v26

    #@176
    const-string/jumbo v25, ";"

    #@179
    const/16 v26, 0x2

    #@17b
    aput-object v25, v10, v26

    #@17d
    const-string/jumbo v25, "%"

    #@180
    const/16 v26, 0x3

    #@182
    aput-object v25, v10, v26

    #@184
    const-string/jumbo v25, "-"

    #@187
    const/16 v26, 0x4

    #@189
    aput-object v25, v10, v26

    #@18b
    const-string/jumbo v25, "+"

    #@18e
    const/16 v26, 0x5

    #@190
    aput-object v25, v10, v26

    #@192
    const-string/jumbo v25, "E"

    #@195
    const/16 v26, 0x6

    #@197
    aput-object v25, v10, v26

    #@199
    const-string/jumbo v25, "\u2030"

    #@19c
    const/16 v26, 0x7

    #@19e
    aput-object v25, v10, v26

    #@1a0
    const-string/jumbo v25, "\u221e"

    #@1a3
    const/16 v26, 0x8

    #@1a5
    aput-object v25, v10, v26

    #@1a7
    const-string/jumbo v25, "NaN"

    #@1aa
    const/16 v26, 0x9

    #@1ac
    aput-object v25, v10, v26

    #@1ae
    const/16 v25, 0x0

    #@1b0
    const/16 v26, 0xa

    #@1b2
    aput-object v25, v10, v26

    #@1b4
    const/16 v25, 0x0

    #@1b6
    const/16 v26, 0xb

    #@1b8
    aput-object v25, v10, v26

    #@1ba
    .line 899
    .local v10, "fallbackElements":[Ljava/lang/String;
    move-object/from16 v0, v22

    #@1bc
    array-length v0, v0

    #@1bd
    move/from16 v25, v0

    #@1bf
    move/from16 v0, v25

    #@1c1
    new-array v0, v0, [Ljava/lang/String;

    #@1c3
    move-object/from16 v23, v0

    #@1c5
    .line 900
    .local v23, "symbolsArray":[Ljava/lang/String;
    const/4 v12, 0x0

    #@1c6
    .local v12, "i":I
    :goto_1
    move-object/from16 v0, v22

    #@1c8
    array-length v0, v0

    #@1c9
    move/from16 v25, v0

    #@1cb
    move/from16 v0, v25

    #@1cd
    if-ge v12, v0, :cond_3

    #@1cf
    .line 902
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    move-object/from16 v0, v25

    #@1d6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v25

    #@1da
    aget-object v26, v22, v12

    #@1dc
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v25

    #@1e0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v25

    #@1e4
    move-object/from16 v0, v21

    #@1e6
    move-object/from16 v1, v25

    #@1e8
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@1eb
    move-result-object v25

    #@1ec
    aput-object v25, v23, v12
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1ee
    .line 900
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@1f0
    goto :goto_1

    #@1f1
    .line 860
    .end local v4    # "baseKey":Ljava/lang/String;
    .end local v6    # "data":[[Ljava/lang/String;
    .end local v10    # "fallbackElements":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "isLatn":Z
    .end local v16    # "latnKey":Ljava/lang/String;
    .end local v18    # "nsName":Ljava/lang/String;
    .end local v21    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v22    # "symbolKeys":[Ljava/lang/String;
    .end local v23    # "symbolsArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@1f4
    move-result-object v25

    #@1f5
    invoke-static/range {v25 .. v25}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    #@1f8
    move-result v25

    #@1f9
    .line 859
    if-eqz v25, :cond_0

    #@1fb
    .line 861
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    #@1fe
    move-result-object v7

    #@1ff
    .line 862
    .local v7, "digitString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@203
    move-object/from16 v25, v0

    #@205
    const/16 v26, 0x0

    #@207
    move/from16 v0, v26

    #@209
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@20c
    move-result v26

    #@20d
    const/16 v27, 0x0

    #@20f
    aput-char v26, v25, v27

    #@211
    .line 863
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@215
    move-object/from16 v25, v0

    #@217
    const/16 v26, 0x1

    #@219
    move/from16 v0, v26

    #@21b
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@21e
    move-result v26

    #@21f
    const/16 v27, 0x1

    #@221
    aput-char v26, v25, v27

    #@223
    .line 864
    move-object/from16 v0, p0

    #@225
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@227
    move-object/from16 v25, v0

    #@229
    const/16 v26, 0x2

    #@22b
    move/from16 v0, v26

    #@22d
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@230
    move-result v26

    #@231
    const/16 v27, 0x2

    #@233
    aput-char v26, v25, v27

    #@235
    .line 865
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@239
    move-object/from16 v25, v0

    #@23b
    const/16 v26, 0x3

    #@23d
    move/from16 v0, v26

    #@23f
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@242
    move-result v26

    #@243
    const/16 v27, 0x3

    #@245
    aput-char v26, v25, v27

    #@247
    .line 866
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@24b
    move-object/from16 v25, v0

    #@24d
    const/16 v26, 0x4

    #@24f
    move/from16 v0, v26

    #@251
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@254
    move-result v26

    #@255
    const/16 v27, 0x4

    #@257
    aput-char v26, v25, v27

    #@259
    .line 867
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@25d
    move-object/from16 v25, v0

    #@25f
    const/16 v26, 0x5

    #@261
    move/from16 v0, v26

    #@263
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@266
    move-result v26

    #@267
    const/16 v27, 0x5

    #@269
    aput-char v26, v25, v27

    #@26b
    .line 868
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@26f
    move-object/from16 v25, v0

    #@271
    const/16 v26, 0x6

    #@273
    move/from16 v0, v26

    #@275
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@278
    move-result v26

    #@279
    const/16 v27, 0x6

    #@27b
    aput-char v26, v25, v27

    #@27d
    .line 869
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@281
    move-object/from16 v25, v0

    #@283
    const/16 v26, 0x7

    #@285
    move/from16 v0, v26

    #@287
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@28a
    move-result v26

    #@28b
    const/16 v27, 0x7

    #@28d
    aput-char v26, v25, v27

    #@28f
    .line 870
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@293
    move-object/from16 v25, v0

    #@295
    const/16 v26, 0x8

    #@297
    move/from16 v0, v26

    #@299
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@29c
    move-result v26

    #@29d
    const/16 v27, 0x8

    #@29f
    aput-char v26, v25, v27

    #@2a1
    .line 871
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2a5
    move-object/from16 v25, v0

    #@2a7
    const/16 v26, 0x9

    #@2a9
    move/from16 v0, v26

    #@2ab
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    #@2ae
    move-result v26

    #@2af
    const/16 v27, 0x9

    #@2b1
    aput-char v26, v25, v27

    #@2b3
    .line 872
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@2b6
    move-result-object v18

    #@2b7
    .restart local v18    # "nsName":Ljava/lang/String;
    goto/16 :goto_0

    #@2b9
    .line 903
    .end local v7    # "digitString":Ljava/lang/String;
    .restart local v4    # "baseKey":Ljava/lang/String;
    .restart local v6    # "data":[[Ljava/lang/String;
    .restart local v10    # "fallbackElements":[Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v15    # "isLatn":Z
    .restart local v16    # "latnKey":Ljava/lang/String;
    .restart local v21    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v22    # "symbolKeys":[Ljava/lang/String;
    .restart local v23    # "symbolsArray":[Ljava/lang/String;
    :catch_0
    move-exception v8

    #@2ba
    .line 904
    .local v8, "ex":Ljava/util/MissingResourceException;
    if-nez v15, :cond_2

    #@2bc
    .line 906
    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    move-object/from16 v0, v25

    #@2c3
    move-object/from16 v1, v16

    #@2c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v25

    #@2c9
    aget-object v26, v22, v12

    #@2cb
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v25

    #@2cf
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v25

    #@2d3
    move-object/from16 v0, v21

    #@2d5
    move-object/from16 v1, v25

    #@2d7
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@2da
    move-result-object v25

    #@2db
    aput-object v25, v23, v12
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@2dd
    goto/16 :goto_2

    #@2df
    .line 907
    :catch_1
    move-exception v9

    #@2e0
    .line 908
    .local v9, "ex1":Ljava/util/MissingResourceException;
    aget-object v25, v10, v12

    #@2e2
    aput-object v25, v23, v12

    #@2e4
    goto/16 :goto_2

    #@2e6
    .line 911
    .end local v9    # "ex1":Ljava/util/MissingResourceException;
    :cond_2
    aget-object v25, v10, v12

    #@2e8
    aput-object v25, v23, v12

    #@2ea
    goto/16 :goto_2

    #@2ec
    .line 916
    .end local v8    # "ex":Ljava/util/MissingResourceException;
    :cond_3
    const/16 v25, 0x0

    #@2ee
    aput-object v23, v6, v25

    #@2f0
    .line 918
    sget-object v25, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@2f2
    move-object/from16 v0, v25

    #@2f4
    move-object/from16 v1, p1

    #@2f6
    invoke-interface {v0, v1, v6}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2f9
    .line 920
    .end local v4    # "baseKey":Ljava/lang/String;
    .end local v10    # "fallbackElements":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "isLatn":Z
    .end local v16    # "latnKey":Ljava/lang/String;
    .end local v21    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v22    # "symbolKeys":[Ljava/lang/String;
    .end local v23    # "symbolsArray":[Ljava/lang/String;
    :cond_4
    const/16 v25, 0x0

    #@2fb
    aget-object v19, v6, v25

    #@2fd
    .line 923
    .local v19, "numberElements":[Ljava/lang/String;
    const-string/jumbo v25, "android/icu/impl/data/icudt55b"

    #@300
    .line 922
    move-object/from16 v0, v25

    #@302
    move-object/from16 v1, p1

    #@304
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@307
    move-result-object v20

    #@308
    check-cast v20, Landroid/icu/impl/ICUResourceBundle;

    #@30a
    .line 926
    .local v20, "r":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@30d
    move-result-object v24

    #@30e
    .line 927
    .local v24, "uloc":Landroid/icu/util/ULocale;
    move-object/from16 v0, p0

    #@310
    move-object/from16 v1, v24

    #@312
    move-object/from16 v2, v24

    #@314
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@317
    .line 930
    const/16 v25, 0x0

    #@319
    aget-object v25, v19, v25

    #@31b
    const/16 v26, 0x0

    #@31d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@320
    move-result v25

    #@321
    move/from16 v0, v25

    #@323
    move-object/from16 v1, p0

    #@325
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@327
    .line 931
    const/16 v25, 0x1

    #@329
    aget-object v25, v19, v25

    #@32b
    const/16 v26, 0x0

    #@32d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@330
    move-result v25

    #@331
    move/from16 v0, v25

    #@333
    move-object/from16 v1, p0

    #@335
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@337
    .line 932
    const/16 v25, 0x2

    #@339
    aget-object v25, v19, v25

    #@33b
    const/16 v26, 0x0

    #@33d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@340
    move-result v25

    #@341
    move/from16 v0, v25

    #@343
    move-object/from16 v1, p0

    #@345
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@347
    .line 933
    const/16 v25, 0x3

    #@349
    aget-object v25, v19, v25

    #@34b
    const/16 v26, 0x0

    #@34d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@350
    move-result v25

    #@351
    move/from16 v0, v25

    #@353
    move-object/from16 v1, p0

    #@355
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@357
    .line 934
    const/16 v25, 0x4

    #@359
    aget-object v25, v19, v25

    #@35b
    move-object/from16 v0, v25

    #@35d
    move-object/from16 v1, p0

    #@35f
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@361
    .line 935
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@365
    move-object/from16 v25, v0

    #@367
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@36a
    move-result v25

    #@36b
    const/16 v26, 0x1

    #@36d
    move/from16 v0, v25

    #@36f
    move/from16 v1, v26

    #@371
    if-le v0, v1, :cond_6

    #@373
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@377
    move-object/from16 v25, v0

    #@379
    const/16 v26, 0x0

    #@37b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@37e
    move-result v25

    #@37f
    invoke-static/range {v25 .. v25}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    #@382
    move-result v25

    #@383
    if-eqz v25, :cond_6

    #@385
    move-object/from16 v0, p0

    #@387
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@389
    move-object/from16 v25, v0

    #@38b
    const/16 v26, 0x1

    #@38d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@390
    move-result v25

    #@391
    :goto_3
    move/from16 v0, v25

    #@393
    move-object/from16 v1, p0

    #@395
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@397
    .line 936
    const/16 v25, 0x5

    #@399
    aget-object v25, v19, v25

    #@39b
    move-object/from16 v0, v25

    #@39d
    move-object/from16 v1, p0

    #@39f
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@3a1
    .line 937
    move-object/from16 v0, p0

    #@3a3
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@3a5
    move-object/from16 v25, v0

    #@3a7
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@3aa
    move-result v25

    #@3ab
    const/16 v26, 0x1

    #@3ad
    move/from16 v0, v25

    #@3af
    move/from16 v1, v26

    #@3b1
    if-le v0, v1, :cond_7

    #@3b3
    move-object/from16 v0, p0

    #@3b5
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@3b7
    move-object/from16 v25, v0

    #@3b9
    const/16 v26, 0x0

    #@3bb
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@3be
    move-result v25

    #@3bf
    invoke-static/range {v25 .. v25}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    #@3c2
    move-result v25

    #@3c3
    if-eqz v25, :cond_7

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@3c9
    move-object/from16 v25, v0

    #@3cb
    const/16 v26, 0x1

    #@3cd
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@3d0
    move-result v25

    #@3d1
    :goto_4
    move/from16 v0, v25

    #@3d3
    move-object/from16 v1, p0

    #@3d5
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@3d7
    .line 938
    const/16 v25, 0x6

    #@3d9
    aget-object v25, v19, v25

    #@3db
    move-object/from16 v0, v25

    #@3dd
    move-object/from16 v1, p0

    #@3df
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@3e1
    .line 939
    const/16 v25, 0x7

    #@3e3
    aget-object v25, v19, v25

    #@3e5
    const/16 v26, 0x0

    #@3e7
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@3ea
    move-result v25

    #@3eb
    move/from16 v0, v25

    #@3ed
    move-object/from16 v1, p0

    #@3ef
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@3f1
    .line 940
    const/16 v25, 0x8

    #@3f3
    aget-object v25, v19, v25

    #@3f5
    move-object/from16 v0, v25

    #@3f7
    move-object/from16 v1, p0

    #@3f9
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@3fb
    .line 941
    const/16 v25, 0x9

    #@3fd
    aget-object v25, v19, v25

    #@3ff
    move-object/from16 v0, v25

    #@401
    move-object/from16 v1, p0

    #@403
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@405
    .line 943
    const/16 v25, 0xa

    #@407
    aget-object v25, v19, v25

    #@409
    if-eqz v25, :cond_8

    #@40b
    .line 944
    const/16 v25, 0xa

    #@40d
    aget-object v25, v19, v25

    #@40f
    const/16 v26, 0x0

    #@411
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@414
    move-result v25

    #@415
    move/from16 v0, v25

    #@417
    move-object/from16 v1, p0

    #@419
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@41b
    .line 949
    :goto_5
    const/16 v25, 0xb

    #@41d
    aget-object v25, v19, v25

    #@41f
    if-eqz v25, :cond_9

    #@421
    .line 950
    const/16 v25, 0xb

    #@423
    aget-object v25, v19, v25

    #@425
    const/16 v26, 0x0

    #@427
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@42a
    move-result v25

    #@42b
    move/from16 v0, v25

    #@42d
    move-object/from16 v1, p0

    #@42f
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@431
    .line 955
    :goto_6
    const/16 v25, 0xc

    #@433
    aget-object v25, v19, v25

    #@435
    if-eqz v25, :cond_a

    #@437
    .line 956
    const/16 v25, 0xc

    #@439
    aget-object v25, v19, v25

    #@43b
    move-object/from16 v0, v25

    #@43d
    move-object/from16 v1, p0

    #@43f
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@441
    .line 961
    :goto_7
    const/16 v25, 0x23

    #@443
    move/from16 v0, v25

    #@445
    move-object/from16 v1, p0

    #@447
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@449
    .line 962
    const/16 v25, 0x2a

    #@44b
    move/from16 v0, v25

    #@44d
    move-object/from16 v1, p0

    #@44f
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@451
    .line 963
    const/16 v25, 0x40

    #@453
    move/from16 v0, v25

    #@455
    move-object/from16 v1, p0

    #@457
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@459
    .line 966
    sget-object v25, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@45b
    const/16 v26, 0x1

    #@45d
    move-object/from16 v0, v25

    #@45f
    move-object/from16 v1, p1

    #@461
    move/from16 v2, v26

    #@463
    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@466
    move-result-object v13

    #@467
    .line 971
    .local v13, "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    const/4 v5, 0x0

    #@468
    .line 972
    .local v5, "currname":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@46b
    move-result-object v25

    #@46c
    move-object/from16 v0, v25

    #@46e
    move-object/from16 v1, p0

    #@470
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@472
    .line 973
    move-object/from16 v0, p0

    #@474
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@476
    move-object/from16 v25, v0

    #@478
    if-eqz v25, :cond_c

    #@47a
    .line 974
    move-object/from16 v0, p0

    #@47c
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@47e
    move-object/from16 v25, v0

    #@480
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@483
    move-result-object v25

    #@484
    move-object/from16 v0, v25

    #@486
    move-object/from16 v1, p0

    #@488
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@48a
    .line 975
    const/16 v25, 0x1

    #@48c
    move/from16 v0, v25

    #@48e
    new-array v14, v0, [Z

    #@490
    .line 976
    .local v14, "isChoiceFormat":[Z
    move-object/from16 v0, p0

    #@492
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@494
    move-object/from16 v25, v0

    #@496
    const/16 v26, 0x0

    #@498
    move-object/from16 v0, v25

    #@49a
    move-object/from16 v1, p1

    #@49c
    move/from16 v2, v26

    #@49e
    invoke-virtual {v0, v1, v2, v14}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@4a1
    move-result-object v5

    #@4a2
    .line 979
    .local v5, "currname":Ljava/lang/String;
    const/16 v25, 0x0

    #@4a4
    aget-boolean v25, v14, v25

    #@4a6
    if-eqz v25, :cond_b

    #@4a8
    .line 980
    new-instance v25, Ljava/text/ChoiceFormat;

    #@4aa
    move-object/from16 v0, v25

    #@4ac
    invoke-direct {v0, v5}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    #@4af
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@4b1
    invoke-virtual/range {v25 .. v27}, Ljava/text/ChoiceFormat;->format(D)Ljava/lang/String;

    #@4b4
    move-result-object v25

    #@4b5
    .line 979
    :goto_8
    move-object/from16 v0, v25

    #@4b7
    move-object/from16 v1, p0

    #@4b9
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@4bb
    .line 982
    move-object/from16 v0, p0

    #@4bd
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@4bf
    move-object/from16 v25, v0

    #@4c1
    move-object/from16 v0, v25

    #@4c3
    invoke-virtual {v13, v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    #@4c6
    move-result-object v11

    #@4c7
    .line 983
    .local v11, "fmtInfo":Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    if-eqz v11, :cond_5

    #@4c9
    .line 984
    iget-object v0, v11, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    #@4cb
    move-object/from16 v25, v0

    #@4cd
    move-object/from16 v0, v25

    #@4cf
    move-object/from16 v1, p0

    #@4d1
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@4d3
    .line 985
    iget-char v0, v11, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:C

    #@4d5
    move/from16 v25, v0

    #@4d7
    move/from16 v0, v25

    #@4d9
    move-object/from16 v1, p0

    #@4db
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@4dd
    .line 986
    iget-char v0, v11, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:C

    #@4df
    move/from16 v25, v0

    #@4e1
    move/from16 v0, v25

    #@4e3
    move-object/from16 v1, p0

    #@4e5
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@4e7
    .line 995
    .end local v5    # "currname":Ljava/lang/String;
    .end local v11    # "fmtInfo":Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .end local v14    # "isChoiceFormat":[Z
    :cond_5
    :goto_9
    const/16 v25, 0x3

    #@4e9
    move/from16 v0, v25

    #@4eb
    new-array v0, v0, [Ljava/lang/String;

    #@4ed
    move-object/from16 v25, v0

    #@4ef
    move-object/from16 v0, v25

    #@4f1
    move-object/from16 v1, p0

    #@4f3
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@4f5
    .line 996
    const/16 v25, 0x3

    #@4f7
    move/from16 v0, v25

    #@4f9
    new-array v0, v0, [Ljava/lang/String;

    #@4fb
    move-object/from16 v25, v0

    #@4fd
    move-object/from16 v0, v25

    #@4ff
    move-object/from16 v1, p0

    #@501
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@503
    .line 997
    invoke-virtual {v13}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@506
    move-result-object v25

    #@507
    move-object/from16 v0, p0

    #@509
    move-object/from16 v1, v25

    #@50b
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    #@50e
    .line 851
    return-void

    #@50f
    .line 935
    .end local v13    # "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    :cond_6
    move-object/from16 v0, p0

    #@511
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@513
    move-object/from16 v25, v0

    #@515
    const/16 v26, 0x0

    #@517
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@51a
    move-result v25

    #@51b
    goto/16 :goto_3

    #@51d
    .line 937
    :cond_7
    move-object/from16 v0, p0

    #@51f
    iget-object v0, v0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@521
    move-object/from16 v25, v0

    #@523
    const/16 v26, 0x0

    #@525
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    #@528
    move-result v25

    #@529
    goto/16 :goto_4

    #@52b
    .line 946
    :cond_8
    move-object/from16 v0, p0

    #@52d
    iget-char v0, v0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@52f
    move/from16 v25, v0

    #@531
    move/from16 v0, v25

    #@533
    move-object/from16 v1, p0

    #@535
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@537
    goto/16 :goto_5

    #@539
    .line 952
    :cond_9
    move-object/from16 v0, p0

    #@53b
    iget-char v0, v0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@53d
    move/from16 v25, v0

    #@53f
    move/from16 v0, v25

    #@541
    move-object/from16 v1, p0

    #@543
    iput-char v0, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@545
    goto/16 :goto_6

    #@547
    .line 958
    :cond_a
    const-string/jumbo v25, "\u00d7"

    #@54a
    move-object/from16 v0, v25

    #@54c
    move-object/from16 v1, p0

    #@54e
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@550
    goto/16 :goto_7

    #@552
    .restart local v5    # "currname":Ljava/lang/String;
    .restart local v13    # "info":Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .restart local v14    # "isChoiceFormat":[Z
    :cond_b
    move-object/from16 v25, v5

    #@554
    .line 981
    goto/16 :goto_8

    #@556
    .line 989
    .end local v14    # "isChoiceFormat":[Z
    .local v5, "currname":Ljava/lang/String;
    :cond_c
    const-string/jumbo v25, "XXX"

    #@559
    move-object/from16 v0, v25

    #@55b
    move-object/from16 v1, p0

    #@55d
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@55f
    .line 990
    const-string/jumbo v25, "\u00a4"

    #@562
    move-object/from16 v0, v25

    #@564
    move-object/from16 v1, p0

    #@566
    iput-object v0, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@568
    goto/16 :goto_9
.end method

.method private static isBidiMark(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 843
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
    .line 1023
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@8
    .line 1026
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@a
    if-ge v2, v4, :cond_0

    #@c
    .line 1029
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@e
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@10
    .line 1030
    const/16 v2, 0x45

    #@12
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    #@14
    .line 1032
    :cond_0
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@16
    const/4 v3, 0x2

    #@17
    if-ge v2, v3, :cond_1

    #@19
    .line 1033
    const/16 v2, 0x2a

    #@1b
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@1d
    .line 1034
    const/16 v2, 0x2b

    #@1f
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@21
    .line 1035
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    #@23
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@29
    .line 1042
    :cond_1
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@2b
    if-ge v2, v5, :cond_2

    #@2d
    .line 1048
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@33
    .line 1050
    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@35
    const/4 v3, 0x4

    #@36
    if-ge v2, v3, :cond_3

    #@38
    .line 1052
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@3a
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@40
    .line 1054
    :cond_3
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@42
    const/4 v3, 0x5

    #@43
    if-ge v2, v3, :cond_4

    #@45
    .line 1056
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@47
    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@49
    .line 1058
    :cond_4
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@4b
    const/4 v3, 0x6

    #@4c
    if-ge v2, v3, :cond_7

    #@4e
    .line 1060
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@50
    if-nez v2, :cond_5

    #@52
    .line 1061
    new-array v2, v5, [Ljava/lang/String;

    #@54
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@56
    .line 1063
    :cond_5
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@58
    if-nez v2, :cond_6

    #@5a
    .line 1064
    new-array v2, v5, [Ljava/lang/String;

    #@5c
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    #@5e
    .line 1066
    :cond_6
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@60
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    #@63
    .line 1068
    :cond_7
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@65
    const/4 v3, 0x7

    #@66
    if-ge v2, v3, :cond_9

    #@68
    .line 1070
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@6a
    if-nez v2, :cond_8

    #@6c
    .line 1071
    new-array v0, v4, [C

    #@6e
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@70
    aput-char v2, v0, v6

    #@72
    .line 1072
    .local v0, "minusArray":[C
    new-instance v2, Ljava/lang/String;

    #@74
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@77
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@79
    .line 1074
    .end local v0    # "minusArray":[C
    :cond_8
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@7b
    if-nez v2, :cond_9

    #@7d
    .line 1075
    new-array v1, v4, [C

    #@7f
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@81
    aput-char v2, v1, v6

    #@83
    .line 1076
    .local v1, "plusArray":[C
    new-instance v2, Ljava/lang/String;

    #@85
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    #@88
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@8a
    .line 1079
    .end local v1    # "plusArray":[C
    :cond_9
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@8c
    if-ge v2, v7, :cond_a

    #@8e
    .line 1080
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@90
    if-nez v2, :cond_a

    #@92
    .line 1081
    const-string/jumbo v2, "\u00d7"

    #@95
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@97
    .line 1084
    :cond_a
    iput v7, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    #@99
    .line 1087
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@9b
    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@9e
    move-result-object v2

    #@9f
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@a1
    .line 1018
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 766
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
    .line 768
    :catch_0
    move-exception v0

    #@8
    .line 770
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
    .line 780
    instance-of v3, p1, Landroid/icu/text/DecimalFormatSymbols;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 781
    return v2

    #@6
    .line 783
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    .line 784
    const/4 v2, 0x1

    #@9
    return v2

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 786
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    #@d
    .line 787
    .local v1, "other":Landroid/icu/text/DecimalFormatSymbols;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    #@f
    if-gt v0, v3, :cond_4

    #@11
    .line 788
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
    .line 789
    return v2

    #@20
    .line 791
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
    .line 792
    return v2

    #@2f
    .line 787
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 796
    :cond_4
    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@34
    if-nez v3, :cond_6

    #@36
    .line 797
    const/4 v0, 0x0

    #@37
    :goto_1
    const/16 v3, 0xa

    #@39
    if-ge v0, v3, :cond_7

    #@3b
    .line 798
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
    .line 799
    return v2

    #@45
    .line 797
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 802
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
    .line 803
    return v2

    #@53
    .line 807
    :cond_7
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@55
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@57
    if-ne v3, v4, :cond_8

    #@59
    .line 808
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@5b
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@5d
    if-ne v3, v4, :cond_8

    #@5f
    .line 809
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@61
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@63
    if-ne v3, v4, :cond_8

    #@65
    .line 810
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@67
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@69
    if-ne v3, v4, :cond_8

    #@6b
    .line 811
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@6d
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@6f
    if-ne v3, v4, :cond_8

    #@71
    .line 812
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@73
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@75
    if-ne v3, v4, :cond_8

    #@77
    .line 813
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@79
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    .line 807
    if-eqz v3, :cond_8

    #@81
    .line 814
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@83
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@85
    if-ne v3, v4, :cond_8

    #@87
    .line 815
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@89
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v3

    #@8f
    .line 807
    if-eqz v3, :cond_8

    #@91
    .line 816
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@93
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v3

    #@99
    .line 807
    if-eqz v3, :cond_8

    #@9b
    .line 817
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@9d
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v3

    #@a3
    .line 807
    if-eqz v3, :cond_8

    #@a5
    .line 818
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@a7
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v3

    #@ad
    .line 807
    if-eqz v3, :cond_8

    #@af
    .line 819
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@b1
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@b3
    if-ne v3, v4, :cond_8

    #@b5
    .line 820
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@b7
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@b9
    if-ne v3, v4, :cond_8

    #@bb
    .line 821
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@bd
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v3

    #@c3
    .line 807
    if-eqz v3, :cond_8

    #@c5
    .line 822
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@c7
    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@c9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v3

    #@cd
    .line 807
    if-eqz v3, :cond_8

    #@cf
    .line 823
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@d1
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@d3
    if-ne v3, v4, :cond_8

    #@d5
    .line 824
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@d7
    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@d9
    if-ne v3, v4, :cond_8

    #@db
    .line 825
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@dd
    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@df
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v2

    #@e3
    .line 806
    :cond_8
    return v2
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@2
    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 267
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    return v0
.end method

.method public getDigit()C
    .locals 1

    #@0
    .prologue
    .line 321
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
    .line 179
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 180
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
    .line 182
    :cond_0
    new-array v0, v3, [C

    #@11
    .line 183
    .local v0, "digitArray":[C
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@14
    .line 184
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@16
    add-int/2addr v2, v1

    #@17
    int-to-char v2, v2

    #@18
    aput-char v2, v0, v1

    #@1a
    .line 183
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 186
    :cond_1
    return-object v0
.end method

.method getDigitsLocal()[C
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 196
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 197
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@8
    return-object v2

    #@9
    .line 199
    :cond_0
    new-array v0, v3, [C

    #@b
    .line 200
    .local v0, "digitArray":[C
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@e
    .line 201
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@10
    add-int/2addr v2, v1

    #@11
    int-to-char v2, v2

    #@12
    aput-char v2, v0, v1

    #@14
    .line 200
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 203
    :cond_1
    return-object v0
.end method

.method public getExponentMultiplicationSign()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 249
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 1353
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1354
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 1353
    :goto_0
    return-object v0

    #@7
    .line 1354
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    #@0
    .prologue
    .line 404
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
    .line 415
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 510
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    return v0
.end method

.method public getMonetaryGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 519
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@2
    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPadEscape()C
    .locals 1

    #@0
    .prologue
    .line 643
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
    .line 703
    if-ltz p1, :cond_0

    #@2
    .line 704
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 705
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
    .line 707
    :cond_1
    if-eqz p2, :cond_2

    #@21
    .line 708
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@23
    aget-object v0, v0, p1

    #@25
    return-object v0

    #@26
    .line 710
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
    .line 340
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    return v0
.end method

.method public getPerMill()C
    .locals 1

    #@0
    .prologue
    .line 285
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@2
    return v0
.end method

.method public getPercent()C
    .locals 1

    #@0
    .prologue
    .line 303
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@2
    return v0
.end method

.method public getPlusSign()C
    .locals 1

    #@0
    .prologue
    .line 600
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
    .line 611
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignificantDigit()C
    .locals 1

    #@0
    .prologue
    .line 231
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@2
    return v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getZeroDigit()C
    .locals 2

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@6
    const/4 v1, 0x0

    #@7
    aget-char v0, v0, v1

    #@9
    return v0

    #@a
    .line 170
    :cond_0
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@c
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 833
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@2
    const/4 v2, 0x0

    #@3
    aget-char v0, v1, v2

    #@5
    .line 834
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    #@7
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@9
    add-int v0, v1, v2

    #@b
    .line 835
    mul-int/lit8 v1, v0, 0x25

    #@d
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@f
    add-int v0, v1, v2

    #@11
    .line 836
    return v0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 1
    .param p1, "currency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 496
    if-nez p1, :cond_0

    #@2
    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 499
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    #@a
    .line 500
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@10
    .line 501
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@18
    .line 495
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 447
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    #@2
    .line 446
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0
    .param p1, "decimalSeparator"    # C

    #@0
    .prologue
    .line 276
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    #@2
    .line 275
    return-void
.end method

.method public setDigit(C)V
    .locals 0
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 330
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    #@2
    .line 329
    return-void
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "exponentMultiplicationSign"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    #@2
    .line 562
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "exp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    #@2
    .line 586
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0
    .param p1, "groupingSeparator"    # C

    #@0
    .prologue
    .line 258
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    #@2
    .line 257
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0
    .param p1, "infinity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    #@2
    .line 371
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    #@0
    .prologue
    .line 465
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    #@2
    .line 464
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
    .line 1375
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
    .line 1377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 1375
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 1382
    :cond_2
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 1383
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 1373
    return-void
.end method

.method public setMinusSign(C)V
    .locals 2
    .param p1, "minusSign"    # C

    #@0
    .prologue
    .line 426
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    #@2
    .line 428
    const/4 v1, 0x1

    #@3
    new-array v0, v1, [C

    #@5
    const/4 v1, 0x0

    #@6
    aput-char p1, v0, v1

    #@8
    .line 429
    .local v0, "minusArray":[C
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    #@f
    .line 425
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0
    .param p1, "sep"    # C

    #@0
    .prologue
    .line 536
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    #@2
    .line 535
    return-void
.end method

.method public setMonetaryGroupingSeparator(C)V
    .locals 0
    .param p1, "sep"    # C

    #@0
    .prologue
    .line 545
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    #@2
    .line 544
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0
    .param p1, "NaN"    # Ljava/lang/String;

    #@0
    .prologue
    .line 393
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    #@2
    .line 392
    return-void
.end method

.method public setPadEscape(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 658
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    #@2
    .line 657
    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .locals 3
    .param p1, "itemType"    # I
    .param p2, "beforeCurrency"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 731
    if-ltz p1, :cond_0

    #@2
    .line 732
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 733
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
    .line 735
    :cond_1
    if-eqz p2, :cond_2

    #@21
    .line 736
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    #@23
    aput-object p3, v0, p1

    #@25
    .line 730
    :goto_0
    return-void

    #@26
    .line 738
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
    .line 350
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    #@2
    .line 349
    return-void
.end method

.method public setPerMill(C)V
    .locals 0
    .param p1, "perMill"    # C

    #@0
    .prologue
    .line 294
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    #@2
    .line 293
    return-void
.end method

.method public setPercent(C)V
    .locals 0
    .param p1, "percent"    # C

    #@0
    .prologue
    .line 312
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    #@2
    .line 311
    return-void
.end method

.method public setPlusSign(C)V
    .locals 3
    .param p1, "plus"    # C

    #@0
    .prologue
    .line 624
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    #@2
    .line 626
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
    .line 627
    .local v0, "plusArray":[C
    new-instance v1, Ljava/lang/String;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@f
    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    #@11
    .line 623
    return-void
.end method

.method public setSignificantDigit(C)V
    .locals 0
    .param p1, "sigDigit"    # C

    #@0
    .prologue
    .line 240
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    #@2
    .line 239
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4
    .param p1, "zeroDigit"    # C

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    const/4 v2, 0x0

    #@3
    .line 213
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 214
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@9
    aput-char p1, v1, v2

    #@b
    .line 215
    invoke-static {p1, v3}, Ljava/lang/Character;->digit(CI)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 216
    const/4 v0, 0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@14
    .line 217
    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    #@16
    add-int v2, p1, v0

    #@18
    int-to-char v2, v2

    #@19
    aput-char v2, v1, v0

    #@1b
    .line 216
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 221
    .end local v0    # "i":I
    :cond_0
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    #@20
    .line 212
    :cond_1
    return-void
.end method

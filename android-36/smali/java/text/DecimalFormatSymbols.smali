.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o currentSerialVersion:I = 0x5

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private greylist-max-o NaN:Ljava/lang/String;

.field private transient greylist-max-o cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

.field private transient greylist-max-o currency:Ljava/util/Currency;

.field private volatile transient blacklist currencyInitialized:Z

.field private greylist-max-o currencySymbol:Ljava/lang/String;

.field private greylist-max-o decimalSeparator:C

.field private greylist-max-o digit:C

.field private greylist-max-o exponential:C

.field private greylist-max-o exponentialSeparator:Ljava/lang/String;

.field private greylist-max-o groupingSeparator:C

.field private volatile transient blacklist hashCode:I

.field private greylist-max-o infinity:Ljava/lang/String;

.field private greylist-max-o intlCurrencySymbol:Ljava/lang/String;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o minusSign:C

.field private blacklist minusSignText:Ljava/lang/String;

.field private blacklist monetaryGroupingSeparator:C

.field private greylist-max-o monetarySeparator:C

.field private greylist-max-o patternSeparator:C

.field private greylist-max-o perMill:C

.field private blacklist perMillText:Ljava/lang/String;

.field private greylist-max-o percent:C

.field private blacklist percentText:Ljava/lang/String;

.field private greylist-max-o serialVersionOnStream:I

.field private greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1100
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "currencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "decimalSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "digit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "exponential"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "exponentialSeparator"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "groupingSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "infinity"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "intlCurrencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minusSign"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "monetarySeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "NaN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "patternSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "percent"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "perMill"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "zeroDigit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "locale"

    const-class v3, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minusSignStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "percentStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "perMillText"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "percentText"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minusSignText"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "monetaryGroupingSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1504
    const/4 v0, 0x5

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1512
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 89
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 90
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1504
    const/4 v0, 0x5

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1512
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 110
    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 111
    return-void
.end method

.method private blacklist findNonFormatChar(Ljava/lang/String;C)C
    .registers 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "defChar"    # C

    .line 916
    invoke-static {p1, p2}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method protected static greylist-max-o fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .registers 5
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 1067
    const-string v0, "XXX"

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 1068
    .local v1, "result":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 1069
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 1070
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1071
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1072
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 1074
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 1075
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2030

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 1076
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 1077
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 1078
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryGroupingSeparator(C)V

    .line 1084
    :try_start_78
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 1085
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    goto :goto_95

    .line 1087
    :cond_8e
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_95} :catch_96

    .line 1091
    :goto_95
    goto :goto_9e

    .line 1089
    :catch_96
    move-exception v2

    .line 1090
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 1093
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_9e
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1095
    return-object v1
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 128
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Ljava/text/DecimalFormatSymbols;
    .registers 1

    .line 144
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 167
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private greylist-max-o initialize(Ljava/util/Locale;)V
    .registers 21
    .param p1, "locale"    # Ljava/util/Locale;

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 844
    if-eqz v1, :cond_128

    .line 847
    invoke-static {v1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 848
    .end local p1    # "locale":Ljava/util/Locale;
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    move-result-object v2

    .line 849
    .local v2, "decimalFormatData":Llibcore/icu/DecimalFormatData;
    const/16 v3, 0xd

    new-array v4, v3, [Ljava/lang/String;

    .line 850
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getDecimalSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 851
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getGroupingSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 852
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getPatternSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 853
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getPercent()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    .line 854
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getZeroDigit()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v4, v10

    .line 855
    const-string v5, "#"

    const/4 v11, 0x5

    aput-object v5, v4, v11

    .line 856
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getMinusSign()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x6

    aput-object v5, v4, v12

    .line 857
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getExponentSeparator()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x7

    aput-object v5, v4, v13

    .line 858
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getPerMill()Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x8

    aput-object v5, v4, v14

    .line 859
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getInfinity()Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9

    aput-object v5, v4, v15

    .line 860
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getNaN()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0xa

    aput-object v5, v4, v16

    .line 861
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getMonetaryDecimalSeparator()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0xb

    aput-object v5, v4, v17

    .line 862
    invoke-virtual {v2}, Llibcore/icu/DecimalFormatData;->getMonetaryGroupSeparator()Ljava/lang/String;

    move-result-object v5

    move/from16 p1, v7

    const/16 v7, 0xc

    aput-object v5, v4, v7

    .line 863
    move-object v5, v4

    .line 866
    .local v5, "numberElements":[Ljava/lang/String;
    move/from16 v18, v8

    aget-object v8, v5, v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 867
    aget-object v8, v5, p1

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 868
    aget-object v8, v5, v18

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 873
    aget-object v8, v5, v9

    const/16 v9, 0x25

    invoke-direct {v0, v8, v9}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 874
    iget-char v8, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 875
    aget-object v8, v5, v10

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 876
    aget-object v8, v5, v11

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 879
    aget-object v8, v5, v12

    const/16 v9, 0x2d

    invoke-direct {v0, v8, v9}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 880
    iget-char v8, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 881
    aget-object v8, v5, v13

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 882
    aget-object v8, v5, v13

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 885
    aget-object v8, v5, v14

    const/16 v9, 0x2030

    invoke-direct {v0, v8, v9}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v8

    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 886
    iget-char v8, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 887
    aget-object v8, v5, v15

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 888
    aget-object v8, v5, v16

    iput-object v8, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 891
    array-length v8, v5

    if-lt v8, v7, :cond_10c

    aget-object v8, v5, v17

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_105

    goto :goto_10c

    .line 892
    :cond_105
    aget-object v8, v5, v17

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_10e

    :cond_10c
    :goto_10c
    iget-char v8, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    :goto_10e
    iput-char v8, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 893
    array-length v8, v5

    if-lt v8, v3, :cond_123

    aget-object v3, v5, v7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11c

    goto :goto_123

    .line 894
    :cond_11c
    aget-object v3, v5, v7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_125

    :cond_123
    :goto_123
    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    :goto_125
    iput-char v3, v0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 902
    return-void

    .line 845
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "decimalFormatData":Llibcore/icu/DecimalFormatData;
    .end local v4    # "values":[Ljava/lang/String;
    .end local v5    # "numberElements":[Ljava/lang/String;
    .restart local p1    # "locale":Ljava/util/Locale;
    :cond_128
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "locale"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist initializeCurrency(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 923
    iget-boolean v0, p0, Ljava/text/DecimalFormatSymbols;->currencyInitialized:Z

    if-eqz v0, :cond_5

    .line 924
    return-void

    .line 931
    :cond_5
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 933
    :try_start_f
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_15} :catch_16

    .line 936
    goto :goto_17

    .line 934
    :catch_16
    move-exception v0

    .line 939
    :cond_17
    :goto_17
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz v0, :cond_2c

    .line 961
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 962
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v0, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_3e

    .line 966
    :cond_2c
    const-string v0, "XXX"

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 968
    :try_start_30
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_38} :catch_39

    .line 970
    goto :goto_3a

    .line 969
    :catch_39
    move-exception v0

    .line 971
    :goto_3a
    const-string v0, "\u00a4"

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 974
    :goto_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/DecimalFormatSymbols;->currencyInitialized:Z

    .line 975
    return-void
.end method

.method public static greylist-max-o maybeStripMarkers(Ljava/lang/String;C)C
    .registers 8
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    .line 987
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 988
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_28

    .line 989
    const/4 v1, 0x0

    .line 990
    .local v1, "sawNonMarker":Z
    const/4 v2, 0x0

    .line 991
    .local v2, "nonMarker":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_25

    .line 992
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 993
    .local v4, "c":C
    const/16 v5, 0x200e

    if-eq v4, v5, :cond_22

    const/16 v5, 0x200f

    if-eq v4, v5, :cond_22

    const/16 v5, 0x61c

    if-ne v4, v5, :cond_1d

    .line 994
    goto :goto_22

    .line 996
    :cond_1d
    if-eqz v1, :cond_20

    .line 998
    return p1

    .line 1000
    :cond_20
    const/4 v1, 0x1

    .line 1001
    move v2, v4

    .line 991
    .end local v4    # "c":C
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1003
    .end local v3    # "i":I
    :cond_25
    if-eqz v1, :cond_28

    .line 1004
    return v2

    .line 1007
    .end local v1    # "sawNonMarker":Z
    .end local v2    # "nonMarker":C
    :cond_28
    return p1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1192
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1193
    .local v1, "serialVersionOnStream":I
    const-string v3, "currencySymbol"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1194
    const-string v3, "decimalSeparator"

    const/16 v5, 0x2e

    invoke-virtual {v0, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1195
    const-string v3, "digit"

    const/16 v6, 0x23

    invoke-virtual {v0, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 1196
    const-string v3, "groupingSeparator"

    const/16 v6, 0x2c

    invoke-virtual {v0, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1197
    const-string v3, "infinity"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1198
    const-string v3, "intlCurrencySymbol"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1199
    const-string v3, "NaN"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1200
    const-string v3, "patternSeparator"

    const/16 v4, 0x3b

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 1206
    const-string v3, "minusSignStr"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1207
    .local v3, "minusSignStr":Ljava/lang/String;
    if-eqz v3, :cond_73

    .line 1208
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_7e

    .line 1210
    :cond_73
    const-string v6, "minusSign"

    const/16 v7, 0x2d

    invoke-virtual {v0, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 1212
    :goto_7e
    const-string v6, "percentStr"

    invoke-virtual {v0, v6, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1213
    .local v6, "percentStr":Ljava/lang/String;
    if-eqz v6, :cond_8f

    .line 1214
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    goto :goto_9a

    .line 1216
    :cond_8f
    const-string v2, "percent"

    const/16 v7, 0x25

    invoke-virtual {v0, v2, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 1219
    :goto_9a
    const-string v2, "perMill"

    const/16 v7, 0x2030

    invoke-virtual {v0, v2, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 1220
    const-string v2, "zeroDigit"

    const/16 v7, 0x30

    invoke-virtual {v0, v2, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 1221
    const-string v2, "locale"

    invoke-virtual {v0, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 1222
    if-nez v1, :cond_c4

    .line 1223
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_cd

    .line 1225
    :cond_c4
    const-string v2, "monetarySeparator"

    invoke-virtual {v0, v2, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 1228
    :goto_cd
    const-string v2, "E"

    if-nez v1, :cond_d4

    .line 1230
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    goto :goto_f2

    .line 1231
    :cond_d4
    const/4 v5, 0x3

    if-ge v1, v5, :cond_e7

    .line 1233
    const-string v2, "exponential"

    const/16 v5, 0x45

    invoke-virtual {v0, v2, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_f2

    .line 1236
    :cond_e7
    const-string v5, "exponentialSeparator"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 1238
    :goto_f2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_10e

    .line 1241
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 1242
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 1243
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    goto :goto_15f

    .line 1246
    :cond_10e
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const-string v5, "perMillText"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 1247
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const-string v5, "percentText"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 1248
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const-string v5, "minusSignText"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 1250
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    const v5, 0xffff

    invoke-direct {p0, v2, v5}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    iget-char v7, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v7, :cond_187

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 1251
    invoke-direct {p0, v2, v5}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    iget-char v7, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v7, :cond_187

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 1252
    invoke-direct {p0, v2, v5}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v2

    iget-char v5, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v5, :cond_187

    .line 1258
    :goto_15f
    const/4 v2, 0x5

    if-ge v1, v2, :cond_167

    .line 1260
    iget-char v5, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_171

    .line 1264
    :cond_167
    const-string v5, "monetaryGroupingSeparator"

    iget-char v7, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 1269
    :goto_171
    iput v2, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1271
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    if-eqz v2, :cond_186

    .line 1273
    :try_start_177
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 1274
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/text/DecimalFormatSymbols;->currencyInitialized:Z
    :try_end_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_182} :catch_183

    .line 1277
    goto :goto_186

    .line 1275
    :catch_183
    move-exception v2

    .line 1276
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iput-object v4, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 1280
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_186
    :goto_186
    return-void

    .line 1253
    :cond_187
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v4, "\'char\' and \'String\' representations of either percent, per mille, and/or minus sign disagree."

    invoke-direct {v2, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1128
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    const-string v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1130
    const-string v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1131
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "exponential"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1132
    const-string v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    const-string v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1134
    const-string v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1135
    const-string v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    const-string v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1137
    const-string v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    const-string v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1139
    const-string v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1140
    const-string v1, "serialVersionOnStream"

    iget v2, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1141
    const-string v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1142
    const-string v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1146
    const-string v1, "minusSign"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1147
    const-string v1, "percent"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1150
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "minusSignStr"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1151
    const-string v1, "percentStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1154
    const-string v1, "perMillText"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMillText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1155
    const-string v1, "percentText"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1156
    const-string v1, "minusSignText"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1157
    const-string v1, "monetaryGroupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 1158
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1159
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 753
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 755
    :catch_7
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 765
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 766
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 767
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v0

    .line 768
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    .line 769
    .local v2, "other":Ljava/text/DecimalFormatSymbols;
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 773
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 775
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 778
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 780
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 781
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 782
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_b8

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v3, v4, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 787
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 788
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    move v0, v1

    goto :goto_b9

    :cond_b8
    nop

    .line 769
    :goto_b9
    return v0
.end method

.method public whitelist test-api getCurrency()Ljava/util/Currency;
    .registers 2

    .line 488
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 489
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public whitelist test-api getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 412
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 413
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDecimalSeparator()C
    .registers 2

    .line 218
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public whitelist test-api getDigit()C
    .registers 2

    .line 293
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public whitelist test-api getExponentSeparator()Ljava/lang/String;
    .registers 2

    .line 553
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getExponentialSymbol()C
    .registers 2

    .line 614
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    return v0
.end method

.method public whitelist test-api getGroupingSeparator()C
    .registers 2

    .line 197
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method protected greylist-max-o getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .registers 5

    .line 1016
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v0, :cond_7

    .line 1017
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v0

    .line 1020
    :cond_7
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 1021
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 1024
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPlusSign(C)V

    .line 1025
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 1026
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    .line 1027
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1028
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1029
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 1030
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 1033
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparator(C)V

    .line 1041
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPatternForCurrencySpacing(IZLjava/lang/String;)V

    .line 1044
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPatternForCurrencySpacing(IZLjava/lang/String;)V

    .line 1049
    :try_start_86
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 1050
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 1049
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_86 .. :try_end_97} :catch_98

    .line 1053
    goto :goto_a1

    .line 1051
    :catch_98
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "XXX"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 1055
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_a1
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public whitelist test-api getInfinity()Ljava/lang/String;
    .registers 2

    .line 338
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 442
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMinusSign()C
    .registers 2

    .line 385
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method blacklist getMinusSignText()Ljava/lang/String;
    .registers 2

    .line 710
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMonetaryDecimalSeparator()C
    .registers 2

    .line 526
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public whitelist test-api getMonetaryGroupingSeparator()C
    .registers 2

    .line 585
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return v0
.end method

.method public whitelist test-api getNaN()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPatternSeparator()C
    .registers 2

    .line 315
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public whitelist test-api getPerMill()C
    .registers 2

    .line 239
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method blacklist getPerMillText()Ljava/lang/String;
    .registers 2

    .line 634
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPercent()C
    .registers 2

    .line 261
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public greylist-max-r getPercentString()Ljava/lang/String;
    .registers 2

    .line 271
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getPercentText()Ljava/lang/String;
    .registers 2

    .line 671
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getZeroDigit()C
    .registers 2

    .line 176
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 23

    .line 796
    move-object/from16 v0, p0

    iget v1, v0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    if-nez v1, :cond_6a

    .line 797
    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 798
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 799
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 800
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 801
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    iget-object v6, v0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 803
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iget-object v8, v0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 805
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 806
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    iget-object v11, v0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 808
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    iget-object v13, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v14, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 811
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    move-object/from16 v17, v1

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 814
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    iget-char v1, v0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 815
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    iget-object v1, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    move-object/from16 v21, v1

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 797
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 819
    :cond_6a
    iget v1, v0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    return v1
.end method

.method public whitelist test-api setCurrency(Ljava/util/Currency;)V
    .registers 3
    .param p1, "currency"    # Ljava/util/Currency;

    .line 505
    if-eqz p1, :cond_1e

    .line 508
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 510
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 511
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 515
    return-void

    .line 506
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setCurrencySymbol(Ljava/lang/String;)V
    .registers 3
    .param p1, "currency"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 427
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 430
    return-void
.end method

.method public whitelist test-api setDecimalSeparator(C)V
    .registers 3
    .param p1, "decimalSeparator"    # C

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 228
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 231
    return-void
.end method

.method public whitelist test-api setDigit(C)V
    .registers 3
    .param p1, "digit"    # C

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 303
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 306
    return-void
.end method

.method public whitelist test-api setExponentSeparator(Ljava/lang/String;)V
    .registers 3
    .param p1, "exp"    # Ljava/lang/String;

    .line 567
    if-eqz p1, :cond_b

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 571
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 574
    return-void

    .line 568
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o setExponentialSymbol(C)V
    .registers 3
    .param p1, "exp"    # C

    .line 622
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 625
    return-void
.end method

.method public whitelist test-api setGroupingSeparator(C)V
    .registers 3
    .param p1, "groupingSeparator"    # C

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 207
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 210
    return-void
.end method

.method public whitelist test-api setInfinity(Ljava/lang/String;)V
    .registers 3
    .param p1, "infinity"    # Ljava/lang/String;

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 349
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 352
    return-void
.end method

.method public whitelist test-api setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 5
    .param p1, "currencyCode"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initializeCurrency(Ljava/util/Locale;)V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 465
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 467
    if-eqz p1, :cond_21

    .line 469
    :try_start_f
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 471
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_1f} :catch_20

    .line 473
    goto :goto_21

    .line 472
    :catch_20
    move-exception v1

    .line 476
    :cond_21
    :goto_21
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 477
    return-void
.end method

.method public whitelist test-api setMinusSign(C)V
    .registers 3
    .param p1, "minusSign"    # C

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 397
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 398
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 401
    return-void
.end method

.method blacklist setMinusSignText(Ljava/lang/String;)V
    .registers 4
    .param p1, "minusSignText"    # Ljava/lang/String;

    .line 731
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 737
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->minusSignText:Ljava/lang/String;

    .line 738
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 741
    return-void

    .line 733
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty argument string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setMonetaryDecimalSeparator(C)V
    .registers 3
    .param p1, "sep"    # C

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 538
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 541
    return-void
.end method

.method public whitelist test-api setMonetaryGroupingSeparator(C)V
    .registers 3
    .param p1, "monetaryGroupingSeparator"    # C

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 600
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 603
    return-void
.end method

.method public whitelist test-api setNaN(Ljava/lang/String;)V
    .registers 3
    .param p1, "NaN"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 372
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 375
    return-void
.end method

.method public whitelist test-api setPatternSeparator(C)V
    .registers 3
    .param p1, "patternSeparator"    # C

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 326
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 329
    return-void
.end method

.method public whitelist test-api setPerMill(C)V
    .registers 3
    .param p1, "perMill"    # C

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 249
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 250
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 253
    return-void
.end method

.method blacklist setPerMillText(Ljava/lang/String;)V
    .registers 4
    .param p1, "perMillText"    # Ljava/lang/String;

    .line 652
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 658
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->perMillText:Ljava/lang/String;

    .line 659
    const/16 v0, 0x2030

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 662
    return-void

    .line 654
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty argument string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setPercent(C)V
    .registers 3
    .param p1, "percent"    # C

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 281
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 282
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 285
    return-void
.end method

.method blacklist setPercentText(Ljava/lang/String;)V
    .registers 4
    .param p1, "percentText"    # Ljava/lang/String;

    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 695
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->percentText:Ljava/lang/String;

    .line 696
    const/16 v0, 0x25

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormatSymbols;->findNonFormatChar(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 699
    return-void

    .line 691
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty argument string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setZeroDigit(C)V
    .registers 3
    .param p1, "zeroDigit"    # C

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->hashCode:I

    .line 186
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 189
    return-void
.end method
